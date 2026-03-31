import 'package:flutter/material.dart';
import 'package:touchgrass/data/models/achievement.dart';
import 'package:touchgrass/features/home/statcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 12,
                  ),
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
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Progress",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "15 / 24 Unlocked",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildCard(context, "Total XP", "3,325",
                      Colors.purple, Colors.deepPurple,
                      Icons.show_chart),
                  _buildCard(context, "Gold", "0",
                      Colors.amber, Colors.orange,
                      Icons.emoji_events),
                  _buildCard(context, "Silver", "8",
                      Colors.grey, Colors.blueGrey,
                      Icons.workspace_premium),
                  _buildCard(context, "Bronze", "7",
                      Colors.deepOrange, Colors.orange,
                      Icons.star),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                "In Progress",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const AchievementCard(
                title: "Explorer",
                description: "Visit 15 new locations",
                progress: 0.6,
                xp: "400 XP",
                level: "Gold",
              ),

              const AchievementCard(
                title: "Marathon Runner",
                description: "Walk 20,000 steps",
                progress: 0.4,
                xp: "300 XP",
                level: "Gold",
              ),

              const AchievementCard(
                title: "Master chef",
                description: "Cook 10 new recipes",
                progress: 0.9,
                xp: "600 XP",
                level: "Gold",
              ),
               const AchievementCard(
                title: "Influencer",
                description: "Get 100 followers",
                progress: 0.75,
                xp: "500 XP",
                level: "Gold",
              ),
               const AchievementCard(
                title: "Coding master",
                description: "Complete 5 coding challenges",
                progress: 0.5,
                xp: "400 XP",
                level: "Gold",
              ),
              Text("Recently Unlocked",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:4),
                const AchievementCard(
                  title: "Bookworm",
                  description: "Read 10 books",
                  progress: 0.3,
                  xp: "200 XP",
                  level: "Silver",
                  isUnlocked: true,
                ),
                const AchievementCard(
                  title: "Social butterfly",
                  description: "Attend 5 social events",
                  progress: 0.2,
                  xp: "150 XP",
                  level: "Bronze",
                  isUnlocked: true,
                ),
                const AchievementCard(
                  title: "Fitness enthusiast",
                  description: "Complete 30 workouts",
                  progress: 0.8,
                  xp: "700 XP",
                  level: "Gold",
                  isUnlocked: true,
                ),
                 const AchievementCard(
                  title: "Language learner",
                  description: "Learn 100 new words",
                  progress: 0.6,
                  xp: "350 XP",
                  level: "Silver",
                  isUnlocked: true,
                ),
                 const AchievementCard(
                  title: "Music lover",
                  description: "Listen to 50 new songs",
                  progress: 0.4,
                  xp: "250 XP",
                  level: "Bronze",
                  isUnlocked: true,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String value,
      Color c1, Color c2, IconData icon) {
    double width =
        (MediaQuery.of(context).size.width - 44) / 2;

    return SizedBox(
      width: width,
      child: StatCard(
        title: title,
        value: value,
        color1: c1,
        color2: c2,
        icon: icon,
      ),
    );
  }
}