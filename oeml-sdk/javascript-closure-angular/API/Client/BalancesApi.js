/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.BalancesApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * This section will provide necessary information about the &#x60;CoinAPI OEML REST API&#x60; protocol. This API is also available in the Postman application: &lt;a href&#x3D;\&quot;https://postman.coinapi.io/\&quot; target&#x3D;\&quot;_blank\&quot;&gt;https://postman.coinapi.io/&lt;/a&gt;       
 * Version: v1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license MIT
 * https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
 */

goog.provide('API.Client.BalancesApi');

goog.require('API.Client.Balance');
goog.require('API.Client.Message');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.BalancesApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('BalancesApiBasePath') ?
                   /** @type {!string} */ ($injector.get('BalancesApiBasePath')) :
                   'https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('BalancesApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('BalancesApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.BalancesApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Get balances
 * Get current currency balance from all or single exchange.
 * @param {!string=} opt_exchangeId Filter the balances to the specific exchange.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Balance>>}
 */
API.Client.BalancesApi.prototype.v1BalancesGet = function(opt_exchangeId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/balances';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_exchangeId !== undefined) {
    queryParameters['exchange_id'] = opt_exchangeId;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
