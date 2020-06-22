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
 */

package org.openapitools.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class CancelOrder {
  
  @SerializedName("exchange_id")
  private String exchangeId = null;
  @SerializedName("exchange_order_id")
  private String exchangeOrderId = null;
  @SerializedName("client_order_id")
  private String clientOrderId = null;

  /**
   * Exchange name
   **/
  @ApiModelProperty(value = "Exchange name")
  public String getExchangeId() {
    return exchangeId;
  }
  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }

  /**
   * Order Id
   **/
  @ApiModelProperty(value = "Order Id")
  public String getExchangeOrderId() {
    return exchangeOrderId;
  }
  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }

  /**
   * Client order Id
   **/
  @ApiModelProperty(value = "Client order Id")
  public String getClientOrderId() {
    return clientOrderId;
  }
  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CancelOrder cancelOrder = (CancelOrder) o;
    return (this.exchangeId == null ? cancelOrder.exchangeId == null : this.exchangeId.equals(cancelOrder.exchangeId)) &&
        (this.exchangeOrderId == null ? cancelOrder.exchangeOrderId == null : this.exchangeOrderId.equals(cancelOrder.exchangeOrderId)) &&
        (this.clientOrderId == null ? cancelOrder.clientOrderId == null : this.clientOrderId.equals(cancelOrder.clientOrderId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.exchangeId == null ? 0: this.exchangeId.hashCode());
    result = 31 * result + (this.exchangeOrderId == null ? 0: this.exchangeOrderId.hashCode());
    result = 31 * result + (this.clientOrderId == null ? 0: this.clientOrderId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CancelOrder {\n");
    
    sb.append("  exchangeId: ").append(exchangeId).append("\n");
    sb.append("  exchangeOrderId: ").append(exchangeOrderId).append("\n");
    sb.append("  clientOrderId: ").append(clientOrderId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
