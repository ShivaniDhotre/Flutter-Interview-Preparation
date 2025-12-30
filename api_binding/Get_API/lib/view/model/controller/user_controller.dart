import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sample_example/view/model/user_model.dart';

class ApiServices {

  Future<List<UserModel>> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      List jsonData = jsonDecode(response.body);

      return jsonData
          .map((item) => UserModel.fromJson(item))
          .toList();
    } else {
      throw Exception('Failed to load Posts');
    }
  }
}
