import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
 final Color color;
 final String image;
 final String title;
 final String subtitle;
 final PageController controller;
 final bool isLastPage;

 const OnboardingPage({
    Key? key,
    required this.color,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.controller,
    required this.isLastPage,
 }) : super(key: key);

 @override
 Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          if (isLastPage)
          IconButton(
              onPressed: () {
                controller.animateToPage(
                  0,
                 duration: Duration(milliseconds: 300),
                 curve: Curves.easeInOut,
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle signup logic here
              },
              child: const Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          if (!isLastPage)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                 onPressed: () => controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                 ),
                 icon: const Icon(Icons.arrow_back_ios),
                 color: Colors.white,
                ),
                IconButton(
                 onPressed: () => controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                 ),
                 icon: const Icon(Icons.arrow_forward_ios),
                 color: Colors.white,
                ),
              ],
            ),
        ],
      ),
    );
 }
}
