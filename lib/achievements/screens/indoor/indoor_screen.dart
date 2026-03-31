import 'package:flutter/material.dart';
import 'package:touchgrass/data/models/achievement.dart';

class IndoorScreen extends StatelessWidget {
  const IndoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1220),

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.emoji_events, color: Colors.orange),
                SizedBox(width: 10),
                Text(
                  "Achievements",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text("Total XP",
                    style: TextStyle(color: Colors.orange, fontSize: 12)),
                Text("3,325",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E283B),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Progress", style: TextStyle(color: Colors.white)),
                    Text("15 / 24 Unlocked",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.deepOrange, Colors.red],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: const [
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Indoor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      "Master home skills",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),

                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: _statBox("Unlocked", "5/8"),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _statBox("XP Earned", "1,050"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              _sectionTitle(Icons.restaurant, "Cooking"),

              const SizedBox(height: 8),

              const AchievementCard(
                title: "Master Chef",
                description: "Cook 30 different recipes",
                progress: 0.6,
                xp: "600 XP",
                level: "Gold",
                isUnlocked: false,
              ),

              const AchievementCard(
                title: "Home Cook",
                description: "Cook 15 recipes",
                progress: 1.0,
                xp: "300 XP",
                level: "Silver",
                isUnlocked: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: Colors.orange),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _statBox(String title, String value) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(color: Colors.white70, fontSize: 12)),
          const SizedBox(height: 4),
          Text(value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}