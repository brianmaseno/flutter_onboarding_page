import 'package:flutter/material.dart';
import 'package:pages/person/person1.dart';

class OnboardingScreen extends StatefulWidget {
 const OnboardingScreen({Key? key}) : super(key: key);

 @override
 State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
 final _controller = PageController();
 bool _isLastPage = false;

 @override
 void dispose() {
    _controller.dispose();
    super.dispose();
 }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _isLastPage = index == 3; // Assuming 4 pages
          });
        },
        controller: _controller,
        children: [
          OnboardingPage(
            color: Colors.blue,
            image: 'images/image1.png',
            title: 'Welcome to Our App',
            subtitle: 'Discover amazing features',
            controller: _controller,
            isLastPage: _isLastPage,
          ),
          OnboardingPage(
            color: Colors.green,
            image: 'images/image1.png',
            title: 'Easy to Use',
            subtitle: 'Swipe left to continue',
            controller: _controller,
            isLastPage: _isLastPage,
          ),
          OnboardingPage(
            color: Colors.red,
            image: 'images/image1.png',
            title: 'Customize Your Experience',
            subtitle: 'Tap to start customizing',
            controller: _controller,
            isLastPage: _isLastPage,
          ),
          OnboardingPage(
            color: Colors.orange,
            image: 'images/image2.png',
            title: 'Get Started',
            subtitle: 'Tap to begin',
            controller: _controller,
            isLastPage: _isLastPage,
          ),
        ],
      ),
    );
 }
}
