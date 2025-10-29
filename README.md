# FindIP.cs
Web-API for [findip.net](https://findip.net) an website that provides a solution to identify country, region, city, latitude &amp; longitude and etc

## Example
```cs
using FindIPApi;

namespace Application
{
    internal class Program
    {
        static async Task Main()
        {
            var api = new FindIP();
            api.SetApiKey("apiKey");
            string ipInfo = await api.GetIpInfo("192.168.1.1");
            Console.WriteLine(ipInfo);
        }
    }
}
```
