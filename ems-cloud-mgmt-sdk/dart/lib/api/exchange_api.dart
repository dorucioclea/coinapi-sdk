//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExchangeApi {
  ExchangeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get exchange configuration
  ///
  /// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> exchangeLoginRequireWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchanges';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['APIKeyHeader', 'APIKeyQueryParam'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get exchange configuration
  ///
  /// Get information about the required parameters or server site location of the exchanges supported in the EMS API.
  Future<List<ExchangeLoginRequire>> exchangeLoginRequire() async {
    final response = await exchangeLoginRequireWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExchangeLoginRequire>') as List)
        .cast<ExchangeLoginRequire>()
        .toList(growable: false);

    }
    return Future<List<ExchangeLoginRequire>>.value();
  }
}
