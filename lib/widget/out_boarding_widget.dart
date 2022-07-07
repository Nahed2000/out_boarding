import 'package:flutter/material.dart';

class OutBoardingWidget extends StatelessWidget {
  const OutBoardingWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
final String title;
final String subTitle;
final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(height: 30),
           Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
           Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              textBaseline:TextBaseline.alphabetic,
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
