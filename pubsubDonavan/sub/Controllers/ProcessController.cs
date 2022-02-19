using Microsoft.AspNetCore.Mvc;

namespace opecsub.Controllers;

[ApiController]
[Route("[controller]")]
public class ProcessController : ControllerBase
{
    private readonly ILogger<ProcessController> _logger;

    public ProcessController(ILogger<ProcessController> logger)
    {
        _logger = logger;
    }


    [HttpPost("/opeprocess1")]

    public void Run([FromBody] object body)
    {
        Console.WriteLine("\n\n");
        Console.WriteLine("----> ope: " + body.ToString());
        _logger.LogInformation(body.ToString());
    }
}
