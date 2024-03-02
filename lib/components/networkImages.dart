// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

Container roundNetworkImageIcon(String networkImage, double size) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: Color(0xff7c94b6),
      image: DecorationImage(
        image: AssetImage(networkImage),
        //NetworkImage(networkImage),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        colors: const [Colors.red, Colors.pink],
      ),
      border: Border.all(color: Colors.red, width: 2.0),
    ),
  );
}
