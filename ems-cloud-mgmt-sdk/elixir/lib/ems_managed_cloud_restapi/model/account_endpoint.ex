# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule EMS-ManagedCloudRESTAPI.Model.AccountEndpoint do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"exchange_id",
    :"location_id",
    :"endpoint_schema",
    :"endpoint_host",
    :"endpoint_url"
  ]

  @type t :: %__MODULE__{
    :"exchange_id" => String.t | nil,
    :"location_id" => String.t | nil,
    :"endpoint_schema" => String.t | nil,
    :"endpoint_host" => String.t | nil,
    :"endpoint_url" => String.t | nil
  }
end

defimpl Poison.Decoder, for: EMS-ManagedCloudRESTAPI.Model.AccountEndpoint do
  def decode(value, _options) do
    value
  end
end

