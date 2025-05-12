import 'package:flutter/material.dart';
import 'package:todolist/constants/theme.dart';

class ContainerViewConstants extends StatelessWidget {
  final String smallText;
  final String largeText;
  final String image;

  const ContainerViewConstants({
    required this.smallText,
    required this.largeText,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: appTheme.colorScheme.background),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenSize.height * 0.05),
            child: Image.asset(image),
          ),
          const SizedBox(height: 80),
          Text(
            largeText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            smallText,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
