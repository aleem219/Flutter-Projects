import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testlogin/models/user_model.dart';

class AuthService {
  static Map<String, dynamic> _buildLoginBody(String username, String password) {
    return {
      'username': username,
      'password': password,
    };
  }

  static Future<UserModel> login(String username, String password) async {
    final response = await http.post(
      Uri.parse("https://dummyjson.com/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(_buildLoginBody(username, password)),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
      return UserModel.fromJson(jsonData);
    } else {
      final error = jsonDecode(response.body);
      throw Exception(error['message'] ?? 'Login failed');
    }
  }
}