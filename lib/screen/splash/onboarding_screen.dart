// onboarding_screen.dart
import 'package:eat_fit/screen/authentication/registration_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for responsiveness
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            // Content Section
            Positioned(
              left: size.width * 0.08,
              top: size.height * 0.55,
              child: Container(
                width: size.width * 0.84,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    const Text(
                      'Eat Well',
                      style: TextStyle(
                        color: Color(0xFF1D1517),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Subtitle
                    const Text(
                      'Let\'s start a healthy lifestyle with us. We can determine your diet every day. Healthy eating is fun!',
                      style: TextStyle(
                        color: Color(0xFF7B6F72),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Circular Button
            Positioned(
              right: size.width * 0.08,
              bottom: size.height * 0.08,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 0.5, color: const Color(0xFFF7F8F8)),
                    color: const Color(0xFF34C759),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),

            // Illustration Section
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.5,
                child: Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/healthy_food.png'), // Replace with your asset
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
