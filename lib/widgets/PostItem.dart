import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String dp;
  final String name;
  final String time;
  final String img;

  const PostItem({
    required this.dp,
    required this.name,
    required this.time,
    required this.img,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "${widget.dp}",
                ),
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "${widget.name}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                "${widget.time}",
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                ),
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "${widget.img}",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
