import 'package:flutter/material.dart';
import 'package:social_proof_section/screens/components/rating.dart';
import 'package:social_proof_section/screens/components/testimonial.dart';

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
                SizedBox(height: 50),
                Testimonial(
                    author: "Colton Smith",
                    status: "Verified Buyer",
                    content:
                        "We needed the same printed design as the one we had ordered a week prior. Not only did they find the original order, but we also received it in time. Excellent!"),
                SizedBox(height: 20),
                Testimonial(
                    author: "Irene Roberts",
                    status: "Verified Buyer",
                    content:
                        "Customer service is always excellent and very quick turn around. Completely delighted with the simplicity of the purchase and the speed of delivery."),
                SizedBox(height: 20),
                Testimonial(
                    author: "Anne Wallace",
                    status: "Verified Buyer",
                    content:
                        "Put an order with this company and can only praise them for the very high standard. Will definitely use them again and recommend them to everyone!"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
