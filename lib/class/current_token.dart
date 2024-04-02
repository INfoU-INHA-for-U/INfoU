class CurrentToken {
  static final CurrentToken _instance = CurrentToken._internal();

  factory CurrentToken() {
    return _instance;
  }

  CurrentToken._internal();

  String _authId = '';
  String _accessToken = '';
  String _refreshToken = '';
  String _authEmail = '';

  void changeAuthId(String authId) => _authId = authId;
  void changeAccessToken(String accessToken) => _accessToken = accessToken;
  void changeRefreshToken(String refreshToken) => _refreshToken = refreshToken;
  void changeAuthEmail(String authEmail) => _authEmail = authEmail;
  String getAuthId() => _authId;
  String getAccessToken() => _accessToken;
  String getRefreshToken() => _refreshToken;
  String getAuthEmail() => _authEmail;
}