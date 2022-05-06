defmodule EMS-ManagedCloudRESTAPI.Mixfile do
  use Mix.Project

  def project do
    [app: :ems_managed_cloud_restapi,
     version: "v1",
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: "This section will provide necessary information about the &#x60;CoinAPI EMS Managed Cloud REST API&#x60; protocol.  &lt;br/&gt;&lt;br/&gt; This API is used to manage the overall deployment of **Execution Management System API** (&#x60;EMS API&#x60;) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the &#x60;EMS API&#x60;.  &lt;br/&gt;&lt;br/&gt; Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;Environment&lt;/th&gt;       &lt;th&gt;Url&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody&gt;     &lt;tr&gt;       &lt;td&gt;Production&lt;/td&gt;       &lt;td&gt;&lt;code&gt;https://ems-mgmt.coinapi.io/&lt;/code&gt;&lt;/td&gt;     &lt;/tr&gt;     &lt;tr&gt;       &lt;td&gt;Sandbox&lt;/td&gt;       &lt;td&gt;&lt;code&gt;https://ems-mgmt-sandbox.coinapi.io/&lt;/code&gt;&lt;/td&gt;     &lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt;  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named &#x60;X-CoinAPI-Key&#x60;  2. Query string parameter named &#x60;apikey&#x60;  #### Custom authorization header  You can authorize by providing additional custom header named &#x60;X-CoinAPI-Key&#x60; and API key as its value.  Assuming that your API key is &#x60;73034021-THIS-IS-SAMPLE-KEY&#x60;, then the authorization header you should send to us will look like: &lt;br/&gt;&lt;br/&gt; &#x60;X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY&#x60;  &lt;aside class&#x3D;\&quot;success\&quot;&gt;This method is recommended by us and you should use it in production environments.&lt;/aside&gt;  #### Query string authorization parameter  You can authorize by providing an additional parameter named &#x60;apikey&#x60; with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is &#x60;73034021-THIS-IS-SAMPLE-KEY&#x60; and that you want to request all accounts, then your query string should look like this:  &lt;br/&gt;&lt;br/&gt; &#x60;GET /v1/accounts?apikey&#x3D;73034021-THIS-IS-SAMPLE-KEY&#x60;  &lt;aside class&#x3D;\&quot;notice\&quot;&gt; Query string method may be more practical for development activities. &lt;/aside&gt; ",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.2"},
      {:poison, "~> 3.0"}
    ]
  end

   defp package() do
    [
      name: "ems_managed_cloud_restapi",
      files: ~w(lib mix.exs README* LICENSE*),
      licenses: [""]
    ]
  end
end
