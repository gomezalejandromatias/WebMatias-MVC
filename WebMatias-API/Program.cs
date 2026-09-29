using WebMatias_API.Service;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.


// 1. CONFIGURAR / REGISTRAR
builder.Services.AddControllers();
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddOpenApi();


//“Me pediste crear un CotizacionService, pero su constructor exige un IConfiguration. ¿Dónde está?”
//lo normal es que la inyección de dependencias se encargue de eso.
builder.Services.AddScoped<CotizacionService>();


var app = builder.Build();





// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

