--  OEML _ REST API
--  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 5.3.1.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with Swagger.Streams;
with Ada.Containers.Vectors;
package .Models is
   pragma Style_Checks ("-mr");



   type RejectReason_Type is
     record
     end record;

   package RejectReason_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => RejectReason_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type_Vectors.Vector);



   --  ------------------------------
   --  MessageReject object.
   --  ------------------------------
   type MessageReject_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Reject_Reason : .Models.RejectReason_Type;
       Exchange_Id : Swagger.Nullable_UString;
       Message : Swagger.Nullable_UString;
       Rejected_Message : Swagger.Nullable_UString;
     end record;

   package MessageReject_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => MessageReject_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type_Vectors.Vector);



   --  ------------------------------
   --  JSON validation error.
   --  ------------------------------
   type ValidationError_Type is
     record
       P_Type : Swagger.Nullable_UString;
       Title : Swagger.Nullable_UString;
       Status : Swagger.Number;
       Trace_Id : Swagger.Nullable_UString;
       Errors : Swagger.Nullable_UString;
     end record;

   package ValidationError_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => ValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type_Vectors.Vector);




   type OrdType_Type is
     record
     end record;

   package OrdType_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type_Vectors.Vector);




   type OrdStatus_Type is
     record
     end record;

   package OrdStatus_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type_Vectors.Vector);




   type OrderCancelAllRequest_Type is
     record
       Exchange_Id : Swagger.UString;
     end record;

   package OrderCancelAllRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type_Vectors.Vector);




   type OrderCancelSingleRequest_Type is
     record
       Exchange_Id : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Client_Order_Id : Swagger.Nullable_UString;
     end record;

   package OrderCancelSingleRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type_Vectors.Vector);




   type OrdSide_Type is
     record
     end record;

   package OrdSide_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type_Vectors.Vector);




   type TimeInForce_Type is
     record
     end record;

   package TimeInForce_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type_Vectors.Vector);




   type OrderNewSingleRequest_Type is
     record
       Exchange_Id : Swagger.UString;
       Client_Order_Id : Swagger.UString;
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Order_Type : .Models.OrdType_Type;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
     end record;

   package OrderNewSingleRequest_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderNewSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type_Vectors.Vector);



   --  ------------------------------
   --  Relay fill information on working orders.
   --  ------------------------------
   type Fills_Type is
     record
       Time : Swagger.Nullable_Date;
       Price : Swagger.Number;
       Amount : Swagger.Number;
     end record;

   package Fills_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Fills_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type_Vectors.Vector);




   type OrderExecutionReport_Type is
     record
       Exchange_Id : Swagger.UString;
       Client_Order_Id : Swagger.UString;
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Amount_Order : Swagger.Number;
       Price : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Order_Type : .Models.OrdType_Type;
       Time_In_Force : .Models.TimeInForce_Type;
       Expire_Time : Swagger.Nullable_Date;
       Exec_Inst : Swagger.UString_Vectors.Vector;
       Client_Order_Id_Format_Exchange : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Avg_Px : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Status_History : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Fills : .Models.Fills_Type_Vectors.Vector;
     end record;

   package OrderExecutionReport_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type_Vectors.Vector);




   type OrderExecutionReportAllOf_Type is
     record
       Client_Order_Id_Format_Exchange : Swagger.UString;
       Exchange_Order_Id : Swagger.Nullable_UString;
       Amount_Open : Swagger.Number;
       Amount_Filled : Swagger.Number;
       Avg_Px : Swagger.Number;
       Status : .Models.OrdStatus_Type;
       Status_History : Swagger.UString_Vectors.Vector_Vectors.Vector;
       Error_Message : Swagger.Nullable_UString;
       Fills : .Models.Fills_Type_Vectors.Vector;
     end record;

   package OrderExecutionReportAllOf_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => OrderExecutionReportAllOf_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type_Vectors.Vector);




   type BalanceData_Type is
     record
       Asset_Id_Exchange : Swagger.Nullable_UString;
       Asset_Id_Coinapi : Swagger.Nullable_UString;
       Balance : double;
       Available : double;
       Locked : double;
       Last_Updated_By : Swagger.Nullable_UString;
       Rate_Usd : double;
       Traded : double;
     end record;

   package BalanceData_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => BalanceData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type_Vectors.Vector);




   type Balance_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Data : .Models.BalanceData_Type_Vectors.Vector;
     end record;

   package Balance_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type_Vectors.Vector);




   type Position_Type is
     record
       Exchange_Id : Swagger.Nullable_UString;
       Data : .Models.PositionData_Type_Vectors.Vector;
     end record;

   package Position_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type_Vectors.Vector);




   type PositionData_Type is
     record
       Symbol_Id_Exchange : Swagger.Nullable_UString;
       Symbol_Id_Coinapi : Swagger.Nullable_UString;
       Avg_Entry_Price : Swagger.Number;
       Quantity : Swagger.Number;
       Side : .Models.OrdSide_Type;
       Unrealized_Pnl : Swagger.Number;
       Leverage : Swagger.Number;
       Cross_Margin : Swagger.Nullable_Boolean;
       Liquidation_Price : Swagger.Number;
       Raw_Data : Swagger.Object;
     end record;

   package PositionData_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => PositionData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type_Vectors.Vector);



end .Models;
