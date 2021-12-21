class APIEndpoints {
  // production server domains
  static const domain = 'http://api.neqatx.com';

  // development server domains
  // static const domain = 'http://apidev.neqatx.com';

  static const String getPostsUrl =
      'https://jsonplaceholder.typicode.com/comments';

  static const String loginUrl = '/api/v1/login';
  static const String loginFullUrl = domain + loginUrl;

  static const String registerUrl = '/api/v1/phone/verification';
  static const String registerFullUrl = domain + registerUrl;

  static const String verifyPhoneUrl = '/api/v1/phone/confirm';
  static const String verifyPhoneFullUrl = domain + verifyPhoneUrl;

  static const String timestampUrl = '/api/v1/timestamp';
  static const String timestampFullUrl = domain + timestampUrl;

  static const String homeUrl = '/api/v1/home';
  static const String homeFullUrl = domain + homeUrl;

  static const String categoriesUrl = '/api/v1/categories';
  static const String categoriesFullUrl = domain + categoriesUrl;

  static const String retailersUrl = '/api/v1/retailers';
  static const String retailersFullUrl = domain + retailersUrl;

  static const String getFavoritesUrl = '/api/v1/favorites/retailers';
  static const String getFavoritesFullUrl = domain + getFavoritesUrl;

  static const String favoritesUrl = '/api/v1/favorites';
  static const String favoritesFullUrl = domain + favoritesUrl;

  static const String transactionsUrl = '/api/v1/user/transaction';
  static const String transactionsFullUrl = domain + transactionsUrl;

  static const String userProfileUrl = '/api/v1/profile';
  static const String userProfileFullUrl = domain + userProfileUrl;

  static String updateProfileUrl(String userId) =>
      '/api/v1/user/$userId/update';
  static String updateProfileFullUrl(String userId) =>
      domain + updateProfileUrl(userId);

  static const String voucherTransactionUrl = '/api/v1/vouchers/transaction';
  static const String voucherTransactionFullUrl =
      domain + voucherTransactionUrl;
}
