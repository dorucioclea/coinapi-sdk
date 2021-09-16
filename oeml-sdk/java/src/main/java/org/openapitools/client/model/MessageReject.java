/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import org.openapitools.client.model.RejectReason;

/**
 * MessageReject
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-09-16T11:13:36.464329Z[Etc/UTC]")
public class MessageReject {
  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_REJECT_REASON = "reject_reason";
  @SerializedName(SERIALIZED_NAME_REJECT_REASON)
  private RejectReason rejectReason;

  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_REJECTED_MESSAGE = "rejected_message";
  @SerializedName(SERIALIZED_NAME_REJECTED_MESSAGE)
  private String rejectedMessage;


  public MessageReject type(String type) {
    
    this.type = type;
    return this;
  }

   /**
   * Message type, constant.
   * @return type
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "MESSAGE_REJECT", value = "Message type, constant.")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    this.type = type;
  }


  public MessageReject rejectReason(RejectReason rejectReason) {
    
    this.rejectReason = rejectReason;
    return this;
  }

   /**
   * Get rejectReason
   * @return rejectReason
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public RejectReason getRejectReason() {
    return rejectReason;
  }


  public void setRejectReason(RejectReason rejectReason) {
    this.rejectReason = rejectReason;
  }


  public MessageReject exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * If the message related to exchange, then the identifier of the exchange will be provided.
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BINANCE", value = "If the message related to exchange, then the identifier of the exchange will be provided.")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public MessageReject message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * Message text.
   * @return message
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Order with ID: BINANCE-7d8a-4888 not found", value = "Message text.")

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public MessageReject rejectedMessage(String rejectedMessage) {
    
    this.rejectedMessage = rejectedMessage;
    return this;
  }

   /**
   * Value of rejected request, if available.
   * @return rejectedMessage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"client_order_id\":\"BINANCE-7d8a-4888\",\"exchange_id\":\"BINANCE\",\"type\":\"ORDER_CANCEL_SINGLE_REQUEST\"}", value = "Value of rejected request, if available.")

  public String getRejectedMessage() {
    return rejectedMessage;
  }


  public void setRejectedMessage(String rejectedMessage) {
    this.rejectedMessage = rejectedMessage;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MessageReject messageReject = (MessageReject) o;
    return Objects.equals(this.type, messageReject.type) &&
        Objects.equals(this.rejectReason, messageReject.rejectReason) &&
        Objects.equals(this.exchangeId, messageReject.exchangeId) &&
        Objects.equals(this.message, messageReject.message) &&
        Objects.equals(this.rejectedMessage, messageReject.rejectedMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, rejectReason, exchangeId, message, rejectedMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MessageReject {\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    rejectReason: ").append(toIndentedString(rejectReason)).append("\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    rejectedMessage: ").append(toIndentedString(rejectedMessage)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

