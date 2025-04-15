import 'package:flutter/material.dart';

/*

S Q U A R E T I L E

These are custom built buttons that are used as a google & apple sign in.

*/

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String label;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 30,
          ),
          Text(' $label'),
        ],
      ),
    );
  }
}
