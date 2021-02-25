import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Copyright © 2020, All Rights Reserved',
              style: TextStyle(fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
