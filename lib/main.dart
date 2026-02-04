import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Habit Tracker'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: Color(0xFFEAFBF2).withOpacity(0.1)),
        ),
        backgroundColor: Color(0xFF0E1C14),
        leading: IconButton(
          onPressed: () {
            print("Calender");
          },
          icon: Icon(Icons.calendar_today_rounded, color: Color(0xff00E676)),
        ),
        title: Text(
          'Today\'s Habits',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFFEAFBF2),
          ),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Profile");
            },
            icon: Icon(Icons.settings, color: Color(0xFFEAFBF2)),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0D1B13),
      body: SingleChildScrollView(
        child: Padding(
          padding: .all(16.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Monday, Oct 23",
                style: TextStyle(color: Color(0xff00E676), fontWeight: .bold),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    "Active Habits",
                    style: TextStyle(
                      color: Color(0xffEAFBF2),
                      fontSize: 16,
                      fontWeight: .bold,
                    ),
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                      color: Color(0xff00E676),
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  children: [
                    HabitCard(
                      icon: Icons.water_drop_rounded,
                      CardTitle: "Drink Water",
                      subTitle: "2/8 cups",
                      isActive: true,
                    ),

                    SizedBox(width: 15),

                    HabitCard(
                      icon: Icons.menu_book_outlined,
                      CardTitle: "Read",
                      subTitle: "30 mins",
                      isActive: false,
                    ),
                    SizedBox(width: 15),

                    HabitCard(
                      icon: Icons.self_improvement_rounded,
                      CardTitle: "Meditation",
                      subTitle: "7:30 AM",
                      isActive: false,
                    ),
                    SizedBox(width: 15),

                    HabitCard(
                      icon: Icons.fitness_center_rounded,
                      CardTitle: "Exercise",
                      subTitle: "5:00 PM",
                      isActive: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Daily Progress",
                style: TextStyle(
                  color: Color(0xffEAFBF2),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: .all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2E24),
                        borderRadius: .circular(22),
                      ),
                      child: Padding(
                        padding: .all(4.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text(
                              "COMPLETED",
                              style: TextStyle(
                                color: Color(0xff00E676),
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: .all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2E24),
                        borderRadius: .circular(22),
                      ),
                      child: Padding(
                        padding: .all(4.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            const Text(
                              "REMAINING",
                              style: TextStyle(
                                color: Color(0xff00E676),
                                fontSize: 10,
                                fontWeight: .normal,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "5",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: .all(4.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: .all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B2E24),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: .all(4.0),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "SUCCESS%",
                                style: TextStyle(
                                  color: Color(0xff00E676),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "28%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 29,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),

                        CircularProgressIndicator(
                          value: 0.28,
                          color: Color(0xff00E676),
                          strokeWidth: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 90),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00E676),
                  padding: .all(23),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},

                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.add_circle, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "Add New Habit",
                      style: TextStyle(color: Colors.black, fontWeight: .bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget HabitCard({
  required IconData icon,
  required String CardTitle,
  required String subTitle,
  bool isActive = false,
}) {
  return Container(
    width: 160,
    height: 220,
    padding: .all(16),
    decoration: BoxDecoration(
      color: const Color(0xFF1B2E24),
      borderRadius: BorderRadius.circular(22),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF214F32),
                borderRadius: BorderRadius.circular(18),
              ),

              child: Center(
                child: Icon(icon, size: 30, color: Color(0xFF1AFF64)),
              ),
            ),

            Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 26,
                height: 26,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff0f2f1f),
                ),
                child: Center(
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive ? Color(0xff1aff74) : null,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff1aff64).withOpacity(0.5),
                          blurRadius: 12,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 13),
        Text(
          CardTitle,
          style: const TextStyle(
            color: Color(0xffe9fff1),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xff00e676),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
