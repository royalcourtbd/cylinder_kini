class NoInternetException implements Exception {
  final String message = "ইন্টারনেট চালু করুন";

  @override
  String toString() => message;
}

class SignInException implements Exception {
  final String message = "সাইন ইন করা হয়নি";

  @override
  String toString() => message;
}

class InvalidNotificationException implements Exception {
  final String message = "ভুল নোটিফিকেশন উপাত্ত";

  @override
  String toString() => message;
}
