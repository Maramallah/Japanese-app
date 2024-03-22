import 'package:flutter/material.dart';

class Homeitems extends StatelessWidget {
  const Homeitems({super.key, required this.name, required this.color, required this.ontap});
  final String name;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          height: 60,
          width: double.infinity,
          color: color,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}