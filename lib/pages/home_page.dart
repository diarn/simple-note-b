import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_note/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Note"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).pushNamed('add-note');
        },
        child: const Icon(
          Icons.post_add_rounded,
        ),
      ),
      body: ListView(
        children: [
          NoteCard(),
          NoteCard(),
          NoteCard(),
          NoteCard(),
        ],
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 3,
      ),
      child: ListTile(
        onTap: () {},
        title: Text('Judul'),
        subtitle: Text('Deskripsi'),
        trailing: Text('Dibuat pada:\n 12-12-1999'),
      ),
    );
  }
}
