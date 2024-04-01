class CurrentToken {
  static final CurrentToken _instance = CurrentToken._internal();

  factory CurrentToken() {
    return _instance;
  }

  CurrentToken._internal();

  String _authId = '';
  String _accessToken = '';
  String _refreshToken = '';

  void changeAuthId(String authId) => _authId = authId;
  void changeAccessToken(String accessToken) => _accessToken = accessToken;
  void changeRefreshToken(String refreshToken) => _refreshToken = refreshToken;
  String getAuthId() => _authId;
  String getAccessToken() => _accessToken;
  String getRefreshToken() => _refreshToken;
}