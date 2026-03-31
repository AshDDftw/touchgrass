import 'package:flutter/material.dart';
import 'package:touchgrass/data/models/achievement.dart';

class OutdoorScreen extends StatelessWidget {
  const OutdoorScreen({super.key});

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
                Text(
                  "Total XP",
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                ),
                Text(
                  "3,325",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 10),
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
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: const [
                        Icon(Icons.terrain, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "Outdoor",
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
                      "Stay active & explore",
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
                          child: _statBox("XP Earned", "775"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              _sectionTitle(Icons.person, "Social"),

              const SizedBox(height: 8),

              const AchievementCard(
                title: "Extrovert",
                description: "Meet 10 new people",
                progress: 0.1,
                xp: "500 XP",
                level: "Gold",
                isUnlocked: false,
              ),

              const AchievementCard(
                title: "Social Butterfly",
                description: "Attend 5 social events",
                progress: 0.9,
                xp: "300 XP",
                level: "Gold",
                isUnlocked: true,
              ),

              const AchievementCard(
                title: "Friendly Face",
                description: "Start a conversation",
                progress: 0.9,
                xp: "600 XP",
                level: "Gold",
                isUnlocked: false,
              ),

              const SizedBox(height: 16),

              _sectionTitle(Icons.map, "Exploration"),

              const SizedBox(height: 8),

              const AchievementCard(
                title: "Wanderer",
                description: "Explore 10 places",
                progress: 0.3,
                xp: "200 XP",
                level: "Silver",
                isUnlocked: true,
              ),

              const AchievementCard(
                title: "Tourist",
                description: "Visit 5 cities",
                progress: 0.2,
                xp: "150 XP",
                level: "Bronze",
                isUnlocked: true,
              ),

              const SizedBox(height: 16),

              _sectionTitle(Icons.fitness_center, "Fitness"),

              const SizedBox(height: 8),

              const AchievementCard(
                title: "Marathon Runner",
                description: "Complete marathon",
                progress: 0.8,
                xp: "700 XP",
                level: "Gold",
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
        Icon(icon, color: Colors.white),
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
        color: Colors.white.withOpacity(0.15),
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