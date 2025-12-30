import 'package:flutter/material.dart';
import 'package:sample_example/view/model/controller/user_controller.dart';
import 'package:sample_example/view/model/user_model.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  final ApiServices apiServices = ApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get API"),
        backgroundColor: Colors.tealAccent,
      ),
      body: FutureBuilder<List<UserModel>>(
        future: apiServices.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("No Data"),
            );
          }

          final posts = snapshot.data!;

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(
                    posts[index].id.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  posts[index].title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(posts[index].body),
              );
            },
          );
        },
      ),
    );
  }
}
