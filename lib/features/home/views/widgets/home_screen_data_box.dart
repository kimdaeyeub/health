import 'package:flutter/material.dart';

class HomeScreenDataBox extends StatelessWidget {
  final Color bgColor;
  final int data;
  final String text;
  const HomeScreenDataBox({
    super.key,
    required this.size,
    required this.bgColor,
    required this.data,
    required this.text,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.43,
      height: size.width * 0.43,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade300,
            ),
          ),
          Text(
            "단위: kcal",
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
