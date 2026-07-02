import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final VoidCallback onGetStarted;

  const OnboardingPage({super.key, required this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1A44A5), Color(0xFF0A687B)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  'AuraLife',
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.2),
                ),
                const SizedBox(height: 4),
                const Text(
                  'by AuraTech',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Transform raw numbers into a unified,\npreventive health narrative',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white, height: 1.4),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Colors.white.withOpacity(0.15)),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: onGetStarted,
                        icon: const Icon(Icons.email_outlined, color: Color(0xFF0F265C)),
                        label: const Text('Sign up with Email', style: TextStyle(color: Color(0xFF0F265C), fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.apple, color: Colors.white),
                        label: const Text('Quick Sync with Apple Health', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.watch, color: Colors.white),
                        label: const Text('Connect Garmin Device', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E6AF6),
                          minimumSize: const Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Divider(color: Colors.white24),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(color: Color(0xFF22C55E), shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 8),
                          const Text('100% Automated Sync', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'No tedious manual logging. Your health data syncs automatically.',
                        style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.3),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}