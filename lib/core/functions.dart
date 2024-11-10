import 'package:intl/intl.dart';

class Functions {
  static bool isArabic() {
    if (Intl.getCurrentLocale() == 'ar') {
      return true;
    } else {
      return false;
    }
  }
}
