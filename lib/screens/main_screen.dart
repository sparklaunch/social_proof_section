import 'package:flutter/material.dart';
import 'package:social_proof_section/screens/components/rating.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 100,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Text(
                    "10,000+ of our users love our products.",
                    style: TextStyle(
                      fontSize: 36,
                      color: Color.fromRGBO(75, 30, 74, 1),
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "We only provice great products combined with excellent customer service. See what our satisfied customers are saying about our services.",
                  style: TextStyle(
                    color: Color.fromRGBO(136, 124, 136, 1),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Rating(reviewer: "Reviews", rating: 5),
                SizedBox(height: 20),
                Rating(reviewer: "Report Guru", rating: 2),
                SizedBox(height: 20),
                Rating(reviewer: "BestTech", rating: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
