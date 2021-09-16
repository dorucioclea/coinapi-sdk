#
# OEML - REST API
# This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=""https://postman.coinapi.io/"" target=""_blank"">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
# Version: v1
# Contact: support@coinapi.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Type
Message type, constant.
.PARAMETER RejectReason
No description available.
.PARAMETER ExchangeId
If the message related to exchange, then the identifier of the exchange will be provided.
.PARAMETER Message
Message text.
.PARAMETER RejectedMessage
Value of rejected request, if available.
.OUTPUTS

MessageReject<PSCustomObject>
#>

function Initialize-MessageReject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RejectReason},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExchangeId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RejectedMessage}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => MessageReject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "reject_reason" = ${RejectReason}
            "exchange_id" = ${ExchangeId}
            "message" = ${Message}
            "rejected_message" = ${RejectedMessage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MessageReject<PSCustomObject>

.DESCRIPTION

Convert from JSON to MessageReject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MessageReject<PSCustomObject>
#>
function ConvertFrom-JsonToMessageReject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => MessageReject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MessageReject
        $AllProperties = ("type", "reject_reason", "exchange_id", "message", "rejected_message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reject_reason"))) { #optional property not found
            $RejectReason = $null
        } else {
            $RejectReason = $JsonParameters.PSobject.Properties["reject_reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exchange_id"))) { #optional property not found
            $ExchangeId = $null
        } else {
            $ExchangeId = $JsonParameters.PSobject.Properties["exchange_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rejected_message"))) { #optional property not found
            $RejectedMessage = $null
        } else {
            $RejectedMessage = $JsonParameters.PSobject.Properties["rejected_message"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "reject_reason" = ${RejectReason}
            "exchange_id" = ${ExchangeId}
            "message" = ${Message}
            "rejected_message" = ${RejectedMessage}
        }

        return $PSO
    }

}

