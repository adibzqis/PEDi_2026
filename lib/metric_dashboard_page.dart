import 'package:flutter/material.dart';

class MetricDashboardPage extends StatelessWidget {
  const MetricDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1527),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Header Card with Gradient
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1E6AF6), Color(0xFF0EA5E9)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 4),
                  Text('Wednesday, May 14, 2026', style: TextStyle(fontSize: 14, color: Colors.white80)),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Energy Insight Box
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFFEA580C), Color(0xFFF97316)]),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.bolt, color: Colors.white),
                            SizedBox(width: 8),
                            Text("Today's Energy Insight", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          "Your deep sleep was 15% below average. Prioritize an earlier bedtime tonight. Your heart rate variability is excellent—great time for moderate cardio.",
                          style: TextStyle(color: Colors.white, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            _buildActionChip(Icons.bed, "Sleep earlier"),
                            const SizedBox(width: 10),
                            _buildActionChip(Icons.directions_run, "30min cardio"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Heart Rate Module
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite, color: Color(0xFFEF4444)),
                                SizedBox(width: 8),
                                Text('Heart Rate', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('72 bpm', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFFEF4444))),
                                Text('Range: 43-90', style: TextStyle(fontSize: 12, color: Colors.white38)),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(height: 100, color: Colors.white10, child: const Center(child: Text('[Heart Rate Waveform Graph Placeholder]'))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Sleep Analysis Module
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.dark_mode, color: Color(0xFF818CF8)),
                                SizedBox(width: 8),
                                Text('Sleep Analysis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('7h 25min', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF818CF8))),
                                Text('Last night', style: TextStyle(fontSize: 12, color: Colors.white38)),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 16,
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Expanded(flex: 22, child: Container(color: const Color(0xFF312E81))),
                                Expanded(flex: 55, child: Container(color: const Color(0xFF3B82F6))),
                                Expanded(flex: 20, child: Container(color: const Color(0xFF60A5FA))),
                                Expanded(flex: 3, child: Container(color: const Color(0xFFF87171))),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _SleepBreakdownItem('Deep', '98m', Color(0xFF312E81)),
                            _SleepBreakdownItem('Light', '245m', Color(0xFF3B82F6)),
                            _SleepBreakdownItem('REM', '102m', Color(0xFF60A5FA)),
                            _SleepBreakdownItem('Awake', '15m', Color(0xFFF87171)),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Bottom Two Column Grid Metrics
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.insights, color: Color(0xFF22C55E)),
                              SizedBox(height: 12),
                              Text('Steps', style: TextStyle(color: Colors.white60)),
                              Text('8,542', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text('↑ 12% vs avg', style: TextStyle(color: Color(0xFF22C55E), fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.battery_charging_full, color: Color(0xFF06B6D4)),
                              SizedBox(height: 12),
                              Text('Energy Score', style: TextStyle(color: Colors.white60)),
                              Text('82/100', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text('Good energy', style: TextStyle(color: Color(0xFF06B6D4), fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget _buildActionChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.white),
          const SizedBox(width: 4),
          Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
        ],
      ),
    );
  }
}

class _SleepBreakdownItem extends StatelessWidget {
  final String label;
  final String value;
  final Color dotColor;
  const _SleepBreakdownItem(this.label, this.value, this.dotColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(width: 8, height: 8, decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle)),
            const SizedBox(width: 4),
            Text(label, style: const TextStyle(fontSize: 12, color: Colors.white60)),
          ],
        ),
        const SizedBox(height: 2),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }
}