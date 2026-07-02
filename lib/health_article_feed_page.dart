import 'package:flutter/material.dart';

class HealthArticleFeedPage extends StatelessWidget {
  const HealthArticleFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1527),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top App Bar
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF0D9488), Color(0xFF2563EB)]),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
              ),
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu_book, color: Colors.white, size: 28),
                      SizedBox(width: 8),
                      Text('Health Insights', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text('Your personalized preventive health narrative', style: TextStyle(fontSize: 14, color: Colors.white)),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Featured Article Panel Hero Callout
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFFEA580C), Color(0xFFF97316)]),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _buildTag("FEATURED FOR YOU", Colors.white),
                            const SizedBox(width: 8),
                            _buildTag("HIGH PRIORITY", const Color(0xFFEF4444)),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Your Sleep Consistency Crisis: A 7-Day Action Plan',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white, height: 1.3),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Our AI detected a 2.5-hour variance in your sleep schedule. This article translates your raw sleep data into a specific, evidence-based intervention plan to restore your circadian rhythm.',
                          style: TextStyle(color: Colors.white, color: Colors.white.withOpacity(0.9), height: 1.4),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.access_time, size: 14, color: Colors.white70),
                                SizedBox(width: 4),
                                Text('8 min read', style: TextStyle(color: Colors.white70, fontSize: 13)),
                                SizedBox(width: 12),
                                Icon(Icons.person, size: 14, color: Colors.white70),
                                SizedBox(width: 4),
                                Text('Dr. Sarah Chen', style: TextStyle(color: Colors.white70, fontSize: 13)),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              child: const Text('Read Now', style: TextStyle(fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  const Text('Personalized Articles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),

                  // Feed List Stack
                  _buildArticleCard(
                    title: "Why Your Sleep Quality Dropped This Week",
                    desc: "Based on your data, we detected a correlation between late-night screen time and reduced REM sleep. Here's what the science says.",
                    readTime: "4 min read",
                    category: "Sleep Analysis",
                    lineColor: const Color(0xFF818CF8),
                  ),
                  _buildArticleCard(
                    title: "Understanding Your Cardiovascular Risk Reduction",
                    desc: "Your 6-month journey: How consistent activity and improved sleep lowered your long-term heart disease risk by 37%.",
                    readTime: "6 min read",
                    category: "Risk Prevention",
                    lineColor: const Color(0xFFEF4444),
                  ),
                  _buildArticleCard(
                    title: "Your Heart Rate Variability Pattern",
                    desc: "HRV analysis shows excellent recovery capacity. Learn how to maintain and improve this key longevity marker.",
                    readTime: "5 min read",
                    category: "Recovery Science",
                    lineColor: const Color(0xFF10B981),
                  ),
                  _buildArticleCard(
                    title: "The Science of Sleep Consistency",
                    desc: "Why going to bed at the same time matters more than total sleep duration for long-term health outcomes.",
                    readTime: "7 min read",
                    category: "Sleep Science",
                    lineColor: const Color(0xFF3B82F6),
                  ),

                  // Context Callout Explanation
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF162239),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Why these articles?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(
                          "Unlike generic health blogs, every article here is selected based on your detected anomalies, risk factors, and current health trends. This is data-driven learning, not random content.",
                          style: TextStyle(color: Colors.white60, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget _buildTag(String text, Color bg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(8)),
      child: Text(text, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white)),
    );
  }

  Widget _buildArticleCard({
    required String title,
    required String desc,
    required String readTime,
    required String category,
    required Color lineColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF162239),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          border: Border(top: BorderSide(color: lineColor, width: 4)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildTag("Personalized for You", Colors.white12),
                  const SizedBox(width: 8),
                  _buildTag("High Relevance", Colors.white12),
                ],
              ),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(desc, style: const TextStyle(color: Colors.white60, fontSize: 14, height: 1.3)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.access_time, size: 14, color: Colors.white38),
                      const SizedBox(width: 4),
                      Text(readTime, style: const TextStyle(color: Colors.white38, fontSize: 13)),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
                        child: Text(category, style: const TextStyle(color: Colors.white60, fontSize: 11)),
                      )
                    ],
                  ),
                  Text('Read →', style: TextStyle(color: lineColor, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}