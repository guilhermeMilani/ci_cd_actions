import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Investir",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
