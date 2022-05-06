# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule EMS-ManagedCloudRESTAPI.Api.Exchange do
  @moduledoc """
  API calls for all endpoints tagged `Exchange`.
  """

  alias EMS-ManagedCloudRESTAPI.Connection
  import EMS-ManagedCloudRESTAPI.RequestBuilder


  @doc """
  Get exchange configuration
  Get information about the required parameters or server site location of the exchanges supported in the EMS API.

  ## Parameters

  - connection (EMS-ManagedCloudRESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%ExchangeLoginRequire{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec exchange_login_require(Tesla.Env.client, keyword()) :: {:ok, list(EMS-ManagedCloudRESTAPI.Model.ExchangeLoginRequire.t)} | {:error, Tesla.Env.t}
  def exchange_login_require(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v1/exchanges")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%EMS-ManagedCloudRESTAPI.Model.ExchangeLoginRequire{}]}
    ])
  end
end
