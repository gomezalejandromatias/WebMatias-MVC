using Microsoft.AspNetCore.HttpOverrides;
using System.Net;
using System.Threading.RateLimiting;
using WebMatias_MVC.Dao.ViajesDao;
using WebMatias_MVC.Service;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews(options =>
{
    options.ModelBindingMessageProvider
        .SetValueMustNotBeNullAccessor(
            campo => "Este campo es obligatorio.");

    options.ModelBindingMessageProvider
        .SetAttemptedValueIsInvalidAccessor(
            (valor, campo) => "El valor ingresado no es válido.");

    options.ModelBindingMessageProvider
        .SetNonPropertyAttemptedValueIsInvalidAccessor(
            valor => "El valor ingresado no es válido.");
});



//"Cuando alguien necesite un CotizacionApiService,
//crealo y dale un HttpClient ya configurado para apuntar a mi Web API."

builder.Services.AddHttpClient<CotizacionApiService>(client =>
{
    client.BaseAddress = new Uri("https://localhost:7251/");
});

builder.Services.AddHttpClient<MercadoPagoApiService>(client =>
{
    client.BaseAddress = new Uri("https://localhost:7251/");
});


// CONFIGURACIÓN DE IP ORIGINAL PARA MVC
builder.Services.Configure<ForwardedHeadersOptions>(options =>
{
    // Permite leer la IP original enviada por ngrok.
    options.ForwardedHeaders = ForwardedHeaders.XForwardedFor;

    // Confío únicamente en el proxy local.
    options.KnownProxies.Add(IPAddress.Parse("127.0.0.1"));

    // Proceso como máximo un intermediario.
    options.ForwardLimit = 1;
});


// RATE LIMITING PARA CREAR GIROS EN MVC
builder.Services.AddRateLimiter(options =>
{
    // Devuelvo HTTP 429 cuando se supera un límite.
    options.RejectionStatusCode = StatusCodes.Status429TooManyRequests;

    options.AddPolicy("LimiteCrearGiro", context =>
    {
        // Obtengo la IP del cliente.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        // Combino dos límites independientes para cada IP.
        return RateLimitPartition.Get(ip, _ =>
            RateLimiter.CreateChained(

                // Primer límite: 10 peticiones por minuto.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 10,
                        Window = TimeSpan.FromMinutes(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    }),

                // Segundo límite: 30 peticiones por hora.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 30,
                        Window = TimeSpan.FromHours(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    })
            )
        );
    });

    options.AddPolicy("LimiteDetails", context =>
    {

        string ip = context.Connection.RemoteIpAddress?.ToString() ?? "desconocida";

        return RateLimitPartition.Get(ip, _ => RateLimiter.CreateChained(

              new FixedWindowRateLimiter(
                  new FixedWindowRateLimiterOptions
                  {
                      PermitLimit = 20,
                      Window = TimeSpan.FromMinutes(1),
                      QueueLimit = 0,
                      AutoReplenishment = true


                  }),
              new FixedWindowRateLimiter(new FixedWindowRateLimiterOptions
              {
                  PermitLimit = 60,
                  Window = TimeSpan.FromHours(1),
                  QueueLimit = 0,
                  AutoReplenishment = true
              })


            )
        );




    });


    options.AddPolicy("LimitarViajes", context =>
   {
       string ip = context.Connection.RemoteIpAddress?.ToString() ?? "desconocida";

       return RateLimitPartition.Get(ip, _ => RateLimiter.CreateChained
       (

           new FixedWindowRateLimiter
       (new FixedWindowRateLimiterOptions
       {
           PermitLimit = 30,
           Window = TimeSpan.FromMinutes(1),
           QueueLimit = 0,
           AutoReplenishment = true



       }),

           new FixedWindowRateLimiter(new FixedWindowRateLimiterOptions

           {
               PermitLimit = 300,
               Window = TimeSpan.FromHours(1),
               QueueLimit = 0,
               AutoReplenishment = true



           }


           )


       ));



   });
    // RATE LIMITING PARA EL HOME CONTROLLER
    options.AddPolicy("LimiteHome", context =>
    {
        // Identifico la IP del cliente.
        string ip = context.Connection.RemoteIpAddress?.ToString()
                    ?? "desconocida";

        return RateLimitPartition.Get(ip, _ =>
            RateLimiter.CreateChained(

                // Máximo 60 peticiones por minuto.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 60,
                        Window = TimeSpan.FromMinutes(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    }),

                // Máximo 600 peticiones por hora.
                new FixedWindowRateLimiter(
                    new FixedWindowRateLimiterOptions
                    {
                        PermitLimit = 600,
                        Window = TimeSpan.FromHours(1),
                        QueueLimit = 0,
                        AutoReplenishment = true
                    })
            )
        );
    });

});







builder.Services.AddScoped<ViajeDao>();

var app = builder.Build();







// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseForwardedHeaders(); // Identifica la IP original.
app.UseStaticFiles();      // Permite cargar CSS, JS e imágenes.
app.UseRouting();          // Identifica el endpoint solicitado.
app.UseRateLimiter();      // Aplica los límites configurados.
app.UseAuthorization();    // Aplica las reglas de autorización.

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}")
    .WithStaticAssets();


app.Run();
