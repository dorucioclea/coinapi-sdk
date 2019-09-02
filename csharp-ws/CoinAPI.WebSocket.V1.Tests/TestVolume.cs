using CoinAPI.WebSocket.V1.DataModels;
using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Tests
{
    [TestClass]
    public class TestVolume
    {
        [TestMethod]
        public void TestVolumeReceive()
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json").Build();

            int mssgCount = 0;
            var helloMsg = new Hello()
            {
                apikey = System.Guid.Parse(config["TestApiKey"]),
                subscribe_data_type = new string[] { "volume" }
            };

            using(var wsClient = new CoinApiWsClient(false))
            {
                wsClient.VolumeEvent += (s, i) =>
                {
                    mssgCount++;
                };

                wsClient.SendHelloMessage(helloMsg);

                Thread.Sleep(50000);

                Assert.AreNotEqual(0, mssgCount);
            }
        }

    }
}
