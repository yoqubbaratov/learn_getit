import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../models/post_model.dart';
import '../../service/service_locator.dart';
import 'home_store.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeStore store = locator<HomeStore>()..getAllPost();

    return Scaffold(
      appBar: AppBar(
        title: const Text("All Posts"),
      ),
      body: Observer(
          builder: (context) {
            return ListView.builder(
              itemCount: store.list.length,
              itemBuilder: (context, index) {
                Post post = store.list[index];

                return Card(
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                    trailing: IconButton(
                      onPressed: () => store.editPost(context, post),
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                );
              },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => store.goToDetailPage(context),
      ),
    );
  }
}
