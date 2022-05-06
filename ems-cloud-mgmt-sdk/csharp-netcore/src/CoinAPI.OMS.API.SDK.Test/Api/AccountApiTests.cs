/*
 * EMS - Managed Cloud REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 
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
    ///  Class for testing AccountApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class AccountApiTests : IDisposable
    {
        private AccountApi instance;

        public AccountApiTests()
        {
            instance = new AccountApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of AccountApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' AccountApi
            //Assert.IsType<AccountApi>(instance);
        }

        /// <summary>
        /// Test DeleteAccount
        /// </summary>
        [Fact]
        public void DeleteAccountTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //List<string> exchangeId = null;
            //instance.DeleteAccount(exchangeId);
        }

        /// <summary>
        /// Test DeleteAccountAll
        /// </summary>
        [Fact]
        public void DeleteAccountAllTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //instance.DeleteAccountAll();
        }

        /// <summary>
        /// Test GetAccount
        /// </summary>
        [Fact]
        public void GetAccountTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //List<string> filterExchangeId = null;
            //var response = instance.GetAccount(filterExchangeId);
            //Assert.IsType<List<GetAccount>>(response);
        }

        /// <summary>
        /// Test PersistAccount
        /// </summary>
        [Fact]
        public void PersistAccountTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //AccountData body = null;
            //instance.PersistAccount(body);
        }
    }
}
