import 'package:flutter/material.dart';

class Header extends StatelessWidget {
final String title;

const Header({ Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(children: [
      Text(
        title,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          fontSize: 32,
          color: Colors.redAccent,
        )
      ),
      const Expanded(child: SizedBox(
        width: 32,
        child: Text('hello'),
      )),
    ]);
    // return Text(
    //   title,
    //   textDirection: TextDirection.ltr,
    //   style: const TextStyle(
    //     fontSize: 32,
    //     color: Colors.redAccent,
    //   )
    // );
  }
}