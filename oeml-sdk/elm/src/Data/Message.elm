{-
   OEML - REST API
   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Message exposing (Message, decoder, encode, encodeWithTag, toString)

import Data.Severity as Severity exposing (Severity)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias Message =
    { type_ : Maybe (String)
    , severity : Maybe (Severity)
    , exchangeId : Maybe (String)
    , message : Maybe (String)
    }


decoder : Decoder Message
decoder =
    Decode.succeed Message
        |> optional "type" (Decode.nullable Decode.string) Nothing
        |> optional "severity" (Decode.nullable Severity.decoder) Nothing
        |> optional "exchange_id" (Decode.nullable Decode.string) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing



encode : Message -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> Message -> Encode.Value
encodeWithTag (tagField, tag) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : Message -> List (String, Encode.Value)
encodePairs model =
    [ ( "type", Maybe.withDefault Encode.null (Maybe.map Encode.string model.type_) )
    , ( "severity", Maybe.withDefault Encode.null (Maybe.map Severity.encode model.severity) )
    , ( "exchange_id", Maybe.withDefault Encode.null (Maybe.map Encode.string model.exchangeId) )
    , ( "message", Maybe.withDefault Encode.null (Maybe.map Encode.string model.message) )
    ]



toString : Message -> String
toString =
    Encode.encode 0 << encode




