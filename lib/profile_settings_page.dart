import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1527),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Meta Header Card
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF2563EB), Color(0xFF0D9488)]),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
              ),
              padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
              child: const Row(
                children: [
                  CircleAvatar(radius: 36, backgroundColor: Colors.white24, child: Icon(Icons.person, size: 40, color: Colors.white)),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Alex Chen', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
                      SizedBox(height: 2),
                      Text('Member since Jan 2026', style: TextStyle(fontSize: 14, color: Colors.white70)),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Personal Health Metrics Box
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: const Color(0xFF162239), borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Personal Health Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildProfileStat('Age', '22'),
                            _buildProfileStat('Height', "5'9\""),
                            _buildProfileStat('Weight', '165 lbs'),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Automated Sync Green Indicator Banner
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: const Color(0xFF15803D), borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle, color: Colors.white, size: 28),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('100% Automated Sync', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                              Text('All devices connected seamlessly', style: TextStyle(fontSize: 12, color: Colors.white70)),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Your health data syncs automatically across all devices. No manual logging required.', style: TextStyle(color: Colors.white.withOpacity(0.9), height: 1.3)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  const Row(
                    children: [
                      Icon(Icons.settings, color: Colors.white70),
                      SizedBox(width: 8),
                      Text('Connected Devices', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Device Blocks Stack
                  _buildDeviceTile("Apple Watch Series 9", "Apple Health", "2 minutes ago", const Color(0xFF475569)),
                  _buildDeviceTile("Garmin Forerunner 265", "Garmin Connect", "5 minutes ago", const Color(0xFF2563EB)),
                  _buildDeviceTile("iPhone 15 Pro", "Health App", "Just now", const Color(0xFF7C3AED)),
                  
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E6AF6),
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Text('+ Add New Device', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 24),

                  // Data security compliance disclaimer card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.02), borderRadius: BorderRadius.circular(16)),
                    child: const Row(
                      children: [
                        Icon(Icons.lock_outline, color: Colors.white38),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Your data is secure', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)),
                              SizedBox(height: 2),
                              Text('All health data is encrypted end-to-end. We never share your personal information with third parties.', style: TextStyle(color: Colors.white38, fontSize: 12, height: 1.3)),
                            ],
                          ),
                        )
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

  Widget _buildProfileStat(String title, String value) {
    return Column(
      children: [
        Text(title, style: const TextStyle(color: Colors.white38, fontSize: 14)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildDeviceTile(String name, String provider, String lastSync, Color deviceBg) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: deviceBg, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          const Icon(Icons.watch, size: 32, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                Text(provider, style: const TextStyle(fontSize: 12, color: Colors.white70)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Container(width: 6, height: 6, decoration: const BoxDecoration(color: Color(0xFF22C55E), shape: BoxShape.circle)),
                    const SizedBox(width: 6),
                    const Text('Connected', style: TextStyle(fontSize: 12, color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Last sync', style: TextStyle(fontSize: 11, color: Colors.white60)),
              Text(lastSync, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}