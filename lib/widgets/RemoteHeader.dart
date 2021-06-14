import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RemoteHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Image.asset("assets/remote.png", height: 32),
        ),
        Text("TV Remote", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      ],
    );
  }


}