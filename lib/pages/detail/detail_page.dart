import 'package:flutter/material.dart';

import '../../service/service_locator.dart';
import 'detail_store.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailStore store = locator<DetailStore>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => store.savePost(context),
              icon: const Icon(Icons.save)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: store.titleController,
              decoration: const InputDecoration(
                  hintText: "Title"
              ),
            ),

            const SizedBox(height: 10,),

            TextField(
              controller: store.bodyController,
              decoration: const InputDecoration(
                  hintText: "Content"
              ),
            )
          ],
        ),
      ),
    );
  }
}
