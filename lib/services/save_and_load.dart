import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  //! الدرج اللى هشيل فيه القيمة
  static const String _themeKey = 'isDarkMode';

  //! شيلت القيمة اللى جاية فى الدرج
  static Future<void> saveTheme(bool isDark) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(_themeKey, isDark);
  }


  //! دالة لقراءة الثيم المحفوظ
  static Future<bool> loadTheme() async {
    final pref = await SharedPreferences.getInstance();

    //مهو ممكن ميكونش فى قيمة محفوظة وتكون اول مرة يفتح التطبيق لازم احط قيمة فى الحالة دى
    return pref.getBool(_themeKey) ?? false ;  
    
  }
}
