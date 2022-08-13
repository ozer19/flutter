import 'package:flutter/material.dart';

class ListViewBuilderLeearn extends StatefulWidget {
  const ListViewBuilderLeearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLeearn> createState() => _ListViewBuilderLeearnState();
}

class _ListViewBuilderLeearnState extends State<ListViewBuilderLeearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.white);
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [Expanded(child: Image.network('https://picsum.photos/id/237/200/300')), Text('$index')],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
