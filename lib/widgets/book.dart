import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String url;
  const BookTile({Key? key, required this.title, required this.subtitle, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text("by $subtitle"),
      leading: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
