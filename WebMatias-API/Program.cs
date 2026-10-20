using WebMatias_API.Dao.GiroDao;
using WebMatias_API.Service;
using Microsoft.AspNetCore.RateLimiting;
using System.Threading.RateLimiting;
using Microsoft.AspNetCore.HttpOverrides;
using System.Net;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.


// 1. CONFIGURAR / REGISTRAR
builder.Services.AddControllers();
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();


// Configuro la lectura de las cabeceras que envía ngrok
builder.Services.Configure<ForwardedHeadersOptions>(options =>
{
    // Permito obtener la IP original mediante X-Forwarded-For
    options.ForwardedHeaders = ForwardedHeaders.XForwardedFor;

    // Confío solamente en el intermediario local
    // porque ngrok se conecta a mi API desde 127.0.0.1
    options.KnownProxies.Add(IPAddress.Parse("127.0.0.1"));

    // Leo como máximo un intermediario de la cadena
    options.ForwardLimit = 1;
});




// REGISTRO Y CONFIGURACIÓN DE RATE LIMITING
// Protege mi Web API de peticiones excesivas.
// Cada política tiene sus propios límites y contadores.

builder.Services.AddRateLimiter(options =>
{
    // ==========================================
    // POLÍTICA GENERAL: 10 PETICIONES POR MINUTO
    // ==========================================

    options.AddPolicy("LimiteGeneral", context =>
    {
        // Obtengo la IP del cliente que realiza la petición.
        // UseForwardedHeaders permite identificar la IP original
        // cuando proviene de un intermediario confiable.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        // Creo una partición independiente para cada IP.
        // Cada IP tiene su propio contador.
        return RateLimitPartition.GetFixedWindowLimiter(

            // Utilizo la IP como identificador del contador.
            partitionKey: ip,

            // Configuro el algoritmo Fixed Window (ventana fija).
            factory: _ => new FixedWindowRateLimiterOptions
            {
                // Máximo de 10 peticiones por IP.
                PermitLimit = 10,

                // Cada ventana dura 1 minuto.
                Window = TimeSpan.FromMinutes(1),

                // No dejo peticiones esperando.
                // Las excedentes se rechazan.
                QueueLimit = 0,

                // Renuevo automáticamente el cupo
                // cuando comienza una nueva ventana.
                AutoReplenishment = true
            });
    });


    // ==========================================
    // COTIZACIÓN: 20 PETICIONES POR MINUTO
    // ==========================================

    // Protege mi API de consultas excesivas
    // y reduce las solicitudes al proveedor externo de giros.

    // RATE LIMITING PARA COTIZACIÓN
    options.AddPolicy("LimiteCotizacion", context =>
    {
        // Obtengo la IP que recibe mi API.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        // Combino dos límites para cada IP.
        return RateLimitPartition.Get(ip, _ =>
            RateLimiter.CreateChained(

                // Máximo 20 peticiones por minuto.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 20,
                        Window = TimeSpan.FromMinutes(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    }),

                // Máximo 200 peticiones por hora.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 200,
                        Window = TimeSpan.FromHours(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    })
            )
        );
    });

    // RATE LIMITING PARA WEBHOOK DE MERCADO PAGO
    // RATE LIMITING PARA WEBHOOK DE MERCADO PAGO
    options.AddPolicy("LimiteWebhook", context =>
    {
        // Obtengo la IP que recibe mi API.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        // Combino dos límites por IP.
        return RateLimitPartition.Get(ip, _ =>
            RateLimiter.CreateChained(

                // Máximo 120 peticiones por minuto.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 120,
                        Window = TimeSpan.FromMinutes(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    }),

                // Máximo 1000 peticiones por hora.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 1000,
                        Window = TimeSpan.FromHours(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    })
            )
        );
    });

    // RATE LIMITING PARA CREAR PREFERENCIAS DE MERCADO PAGO
    // RATE LIMITING PARA CREAR PREFERENCIAS DE MERCADO PAGO
    options.AddPolicy("LimiteMercadoPago", context =>
    {
        // Obtengo la IP que recibe mi API.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        // Combino dos límites independientes por IP.
        return RateLimitPartition.Get(ip, _ =>
            RateLimiter.CreateChained(

                // Máximo 20 peticiones por minuto.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 20,
                        Window = TimeSpan.FromMinutes(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    }),

                // Máximo 100 peticiones por hora.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 100,
                        Window = TimeSpan.FromHours(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    })
            )
        );
    });


    // ==========================================
    // RESPUESTA CUANDO SE SUPERA EL LÍMITE
    // ==========================================

    // Devuelvo HTTP 429 (Too Many Requests)
    // cuando una IP supera el límite de su política.
    options.RejectionStatusCode =
        StatusCodes.Status429TooManyRequests;
});


//“Me pediste crear un CotizacionService, pero su constructor exige un IConfiguration. ¿Dónde está?”
//lo normal es que la inyección de dependencias se encargue de eso.
builder.Services.AddScoped<CotizacionService>();
builder.Services.AddScoped<MercadoPagoService>();

// DAO
builder.Services.AddScoped<GiroDao>();


var app = builder.Build();





// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}



// Identifico la IP original enviada por ngrok.
app.UseForwardedHeaders();

// Redirecciono a HTTPS cuando corresponde.
app.UseHttpsRedirection();

// Identifico qué endpoint se está solicitando.
app.UseRouting();

// Aplico Rate Limiting antes de ejecutar el controlador.
app.UseRateLimiter();

// Aplico autorización.
app.UseAuthorization();



app.MapControllers();

app.Run();

