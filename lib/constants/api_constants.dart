abstract final class ApiConst {
  /// Namoz Vaqtlari API ----------------------------
  static String weatherPath(String city) => '/api/present/week?region=$city';

  static Map<String, String> weatherParams({
    required String uGroup,
    required String key,
  }) =>
      {
        'unitGroup': uGroup,
        'key': key,
        'contentType': 'json',
      };


}