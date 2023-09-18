import 'package:flutter/material.dart';
import 'package:health/features/home/views/widgets/home_chart.dart';
import 'package:health/features/home/views/widgets/home_screen_data_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  final List<Color> secondGradient = [
    const Color.fromARGB(255, 255, 2, 2),
    const Color.fromARGB(255, 255, 0, 251)
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            HomeChart(
              gradientColors: gradientColors,
              secondGradient: secondGradient,
            ),
            const Text(
              "현재 진황 상황",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeScreenDataBox(
                  size: size,
                  bgColor: const Color(0xffB33771),
                  data: 340,
                  text: "오늘 섭취량",
                ),
                HomeScreenDataBox(
                  size: size,
                  bgColor: const Color(0xff1B9CFC),
                  data: 230,
                  text: "오늘 소모량",
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
