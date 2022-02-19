using System;
using System.Text;

namespace opecpub
{
    class Program
    {
        static readonly HttpClient client = new HttpClient();
        static readonly string daprPort = Environment.GetEnvironmentVariable("DAPR_HTTP_PORT");
        static void Main(string[] args)
        {
            var hello = $"{{\"OpeTestMessage\": \"Hello ATO word !!!!\"}}";
            System.Console.WriteLine($"Sending {hello}");
            var hellocontent = new StringContent(hello, Encoding.UTF8, "application/json");
            var response1 = client.PostAsync($"http://localhost:{daprPort}/v1.0/publish/opecpubsub/myopetopic1", hellocontent).Result;

            int Milliseconds = 5000; System.Threading.Thread.Sleep(Milliseconds);

            for (int i = 0; i < 10; i++)
            {
                var data = $"{{\"OpeTestKey\": {i}}}";
                System.Console.WriteLine($"Sending {data}");
                var content = new StringContent(data, Encoding.UTF8, "application/json");
                var response2 = client.PostAsync($"http://localhost:{daprPort}/v1.0/publish/opecpubsub/myopetopic1", content).Result;

                Milliseconds = 1000; System.Threading.Thread.Sleep(Milliseconds);
            }
        }
    }
}
