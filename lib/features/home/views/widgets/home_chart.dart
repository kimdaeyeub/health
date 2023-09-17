import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeChart extends StatelessWidget {
  const HomeChart({
    super.key,
    required this.gradientColors,
    required this.secondGradient,
  });

  final List<Color> gradientColors;
  final List<Color> secondGradient;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 7,
          minY: 0,
          maxY: 3,
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(
            show: false,
          ),
          gridData: FlGridData(
            drawVerticalLine: false,
            // drawHorizontalLine: false,
            getDrawingHorizontalLine: (value) => FlLine(
              color: Colors.grey.shade200,
              strokeWidth: 2,
            ),
          ),
          // backgroundColor: Theme.of(context).primaryColor,
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 1.5),
                const FlSpot(2, 2.1),
                const FlSpot(3, 1.8),
                const FlSpot(4, 1.5),
                const FlSpot(5, 2.2),
                const FlSpot(6, 2.5),
                const FlSpot(7, 1.7),
              ],
              isCurved: true,
              barWidth: 7,
              gradient: LinearGradient(
                colors: gradientColors,
              ),
              dotData: const FlDotData(
                show: false,
                // getDotPainter: (p0, p1, p2, p3) => ,
              ),
              // belowBarData: BarAreaData(
              //   show: true,
              //   gradient: LinearGradient(
              //     colors: gradientColors
              //         .map((e) => e.withOpacity(0.3))
              //         .toList(),
              //   ),
              // ),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(0, 1.4),
                const FlSpot(2, 3.0),
                const FlSpot(3, 1.6),
                const FlSpot(4, 1.2),
                const FlSpot(5, 2.0),
                const FlSpot(6, 2.3),
                const FlSpot(7, 1.3),
              ],
              isCurved: true,
              barWidth: 7,
              gradient: LinearGradient(
                colors: secondGradient,
              ),
              dotData: const FlDotData(
                show: false,
                // getDotPainter: (p0, p1, p2, p3) => ,
              ),
              // belowBarData: BarAreaData(
              //   show: true,
              //   gradient: LinearGradient(
              //     colors: gradientColors
              //         .map((e) => e.withOpacity(0.3))
              //         .toList(),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
