import 'package:shared_preferences/shared_preferences.dart';
import 'package:testlogin/models/user_model.dart';

class SessionService {
  static const String _keyUsername = 'username';
  static const String _keyEmail = 'email';

  /// Save username & email after successful login
  static Future<void> saveSession(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyUsername, user.username);
    await prefs.setString(_keyEmail, user.email);
  }

  /// Returns true if a saved session exists
  static Future<bool> hasSession() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString(_keyUsername);
    final email = prefs.getString(_keyEmail);
    return username != null && email != null;
  }

  /// Get saved username (nullable)
  static Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyUsername);
  }

  /// Get saved email (nullable)
  static Future<String?> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyEmail);
  }

  /// Clear session (logout)
  static Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUsername);
    await prefs.remove(_keyEmail);
  }
}