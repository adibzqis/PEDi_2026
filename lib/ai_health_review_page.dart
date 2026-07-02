import 'package:flutter/material.dart';

class AiHealthReviewPage extends StatelessWidget {
  const AiHealthReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1527),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Top Bar
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF8B5CF6), Color(0xFF6366F1)]),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
              ),
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.psychology, color: Colors.white, size: 32),
                      SizedBox(width: 8),
                      Text('AI Health Review', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text('Anomaly & Risk Detection Engine', style: TextStyle(fontSize: 14, color: Colors.white80)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Weekly Analysis Statement Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF4F46E5)]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.offline_bolt, color: Colors.white),
                            SizedBox(width: 8),
                            Text('Weekly AI Analysis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Based on 6 months of data analysis, your cardiovascular risk has decreased by 37%. Sleep quality shows improvement, but consistency needs attention. Continue current activity levels.",
                          style: TextStyle(color: Colors.white, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  const Text('Long-Term Disease Risk Trends', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),

                  // Trend Graph Card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                    height: 180,
                    child: const Center(child: Text('[Line Chart: Risk % vs Months Placeholder]', style: TextStyle(color: Colors.white38))),
                  ),
                  const SizedBox(height: 24),

                  const Text('Overall Health Score', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),

                  // Radar Chart Box
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                    height: 220,
                    child: const Center(child: Text('[Radar Chart: Cardio/Sleep/Activity/Stress/Nutrition Placeholder]', textAlign: TextAlign.center, style: TextStyle(color: Colors.white38))),
                  ),
                  const SizedBox(height: 24),

                  const Row(
                    children: [
                      Icon(Icons.warning_amber_rounded, color: Color(0xFFF97316)),
                      SizedBox(width: 8),
                      Text('Detected Anomalies & Interventions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Detected Intervention Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F2438),
                      borderRadius: BorderRadius.circular(24),
                      border: const Border(left: BorderSide(color: Color(0xFFF97316), width: 4)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Resting Heart Rate Elevation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text('Your resting HR increased by 8% over the past week', style: TextStyle(color: Colors.white70, fontSize: 14)),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(12)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Recommended Action:', style: TextStyle(fontSize: 12, color: Colors.white38)),
                              SizedBox(height: 4),
                              Text('✓ Reduce caffeine intake and ensure 8+ hours of sleep', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}