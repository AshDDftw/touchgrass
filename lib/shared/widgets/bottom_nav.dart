import 'package:flutter/material.dart';
import 'package:touchgrass/achievements/screens/outdoor/outdoor_screen.dart';
import 'package:touchgrass/achievements/screens/indoor/indoor_screen.dart';
import 'package:touchgrass/achievements/screens/online/online_screen.dart';
import 'package:touchgrass/features/home/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    OutdoorScreen(),
    IndoorScreen(),
    OnlineScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 

      body: screens[currentIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFF111827),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildItem(Icons.home, "Home", 0),
              _buildItem(Icons.landscape, "Outdoor", 1),
              _buildItem(Icons.fitness_center, "Indoor", 2),
              _buildItem(Icons.wifi, "Online", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(IconData icon, String label, int index) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: isActive
                ? BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  )
                : null,
            child: Icon(
              icon,
              color: isActive ? Colors.white : Colors.white54,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}