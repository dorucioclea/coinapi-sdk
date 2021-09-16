/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Api;
// uncomment below to import models
//using CoinAPI.OMS.API.SDK.Model;

namespace CoinAPI.OMS.API.SDK.Test.Api
{
    /// <summary>
    ///  Class for testing PositionsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class PositionsApiTests : IDisposable
    {
        private PositionsApi instance;

        public PositionsApiTests()
        {
            instance = new PositionsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of PositionsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' PositionsApi
            //Assert.IsType<PositionsApi>(instance);
        }

        /// <summary>
        /// Test V1PositionsGet
        /// </summary>
        [Fact]
        public void V1PositionsGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string exchangeId = null;
            //var response = instance.V1PositionsGet(exchangeId);
            //Assert.IsType<List<Position>>(response);
        }
    }
}
