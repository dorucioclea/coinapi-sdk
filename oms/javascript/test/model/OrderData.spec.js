/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OmsRestApi);
  }
}(this, function(expect, OmsRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OmsRestApi.OrderData();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('OrderData', function() {
    it('should create an instance of OrderData', function() {
      // uncomment below and update the code to test OrderData
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be.a(OmsRestApi.OrderData);
    });

    it('should have the property exchangeId (base name: "exchange_id")', function() {
      // uncomment below and update the code to test the property exchangeId
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property clientOrderIdFormatExchange (base name: "client_order_id_format_exchange")', function() {
      // uncomment below and update the code to test the property clientOrderIdFormatExchange
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property exchangeOrderId (base name: "exchange_order_id")', function() {
      // uncomment below and update the code to test the property exchangeOrderId
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property amountOpen (base name: "amount_open")', function() {
      // uncomment below and update the code to test the property amountOpen
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property amountFilled (base name: "amount_filled")', function() {
      // uncomment below and update the code to test the property amountFilled
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property status (base name: "status")', function() {
      // uncomment below and update the code to test the property status
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property timeOrder (base name: "time_order")', function() {
      // uncomment below and update the code to test the property timeOrder
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property errorMessage (base name: "error_message")', function() {
      // uncomment below and update the code to test the property errorMessage
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property clientOrderId (base name: "client_order_id")', function() {
      // uncomment below and update the code to test the property clientOrderId
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property symbolExchange (base name: "symbol_exchange")', function() {
      // uncomment below and update the code to test the property symbolExchange
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property symbolCoinapi (base name: "symbol_coinapi")', function() {
      // uncomment below and update the code to test the property symbolCoinapi
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property amountOrder (base name: "amount_order")', function() {
      // uncomment below and update the code to test the property amountOrder
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property price (base name: "price")', function() {
      // uncomment below and update the code to test the property price
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property side (base name: "side")', function() {
      // uncomment below and update the code to test the property side
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property orderType (base name: "order_type")', function() {
      // uncomment below and update the code to test the property orderType
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property timeInForce (base name: "time_in_force")', function() {
      // uncomment below and update the code to test the property timeInForce
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property expireTime (base name: "expire_time")', function() {
      // uncomment below and update the code to test the property expireTime
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

    it('should have the property execInst (base name: "exec_inst")', function() {
      // uncomment below and update the code to test the property execInst
      //var instane = new OmsRestApi.OrderData();
      //expect(instance).to.be();
    });

  });

}));
