import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  const ListElement({
    super.key,
    required this.image,
    required this.name,
    required this.singers,
    required this.duration,
  });
  final String image;
  final String name;
  final String singers;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: ListTile(
        leading: SizedBox(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          singers,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          duration,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
