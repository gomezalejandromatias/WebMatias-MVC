using WebMatias_API.Dao.GiroDao;
using WebMatias_API.Service;
using Microsoft.AspNetCore.RateLimiting;
using System.Threading.RateLimiting;
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.


// 1. CONFIGURAR / REGISTRAR
builder.Services.AddControllers();
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();


// Registro y configuración del servicio Rate Limiting
builder.Services.AddRateLimiter(options =>
{
    // Creo una política llamada "LimiteGeneral"
    // Utilizo el algoritmo Fixed Window (ventana fija)
    options.AddFixedWindowLimiter("LimiteGeneral", config =>
    {
        // Cantidad máxima de peticiones permitidas por ventana
        config.PermitLimit = 10;

        // Cada ventana dura 1 minuto
        // Al comenzar una nueva ventana se renueva el cupo
        config.Window = TimeSpan.FromMinutes(1);

        // No permite que las peticiones excedentes queden en espera
        // Si se alcanza el límite, las rechaza
        config.QueueLimit = 0;
    });

    // Código HTTP que devuelve cuando se supera el límite
    // 429 = Too Many Requests
    options.RejectionStatusCode = StatusCodes.Status429TooManyRequests;
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

app.UseHttpsRedirection();

app.UseAuthorization();


// Activa el middleware de Rate Limiting.
// Controla las peticiones según las políticas aplicadas.
app.UseRateLimiter();



app.MapControllers();

app.Run();

