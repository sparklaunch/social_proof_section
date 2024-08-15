import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Rating extends StatelessWidget {
  final int rating;
  final String reviewer;
  const Rating({super.key, required this.reviewer, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 240, 246, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(rating, (number) => number).map((number) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset(
                    "assets/images/Star.svg",
                    width: 25,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            Text(
              "Rated $rating Stars in $reviewer",
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(73, 27, 74, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
