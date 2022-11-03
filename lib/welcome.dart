import 'package:flutter/material.dart';

// this is a class
class Welcome extends StatelessWidget {
  // this is a constructor
  const Welcome({Key? key, required this.name, required this.avatar}) 
      : super(key: key);

  // Variable in the class welcome
  final String name, avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               Text(
                'Hi $name',
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Image.asset(
                  'images/1.png',
                  height: 40, // resize the image
                  width: 40,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
        ],
      ),
    );
  }
}
