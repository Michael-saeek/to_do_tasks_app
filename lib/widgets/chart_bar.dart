import 'package:flutter/material.dart';
import 'package:todo_tasks_app/widgets/widgets.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextTitle(title: 'Your Productivity'),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: LinealGraf(),
        )

        // chart
      ],
    );
  }
}

class LinealGraf extends StatefulWidget {
  const LinealGraf({super.key});

  @override
  State<LinealGraf> createState() => _LinealGrafState();
}

class _LinealGrafState extends State<LinealGraf> {
  List<Color> colors = const [
    Color.fromRGBO(180, 126, 186, 1),
    Color.fromRGBO(162, 38, 176, 1),
  ];

  List<Color> gradient2 = const [
    Color.fromRGBO(184, 65, 197, 0.386),
    Color.fromRGBO(180, 126, 186, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        gridData: FlGridData(
          show: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 35,
              getTitlesWidget: (double value, TitleMeta meta) {
                switch (value.toInt()) {
                  case 1:
                    return const WidgetMonthTitle(name: '1 Dec');
                  case 2:
                    return const WidgetMonthTitle(name: '5 Dec');
                  case 3:
                    return const WidgetMonthTitle(name: '15 Dec');
                  case 4:
                    return const WidgetMonthTitle(name: '20 Dec');
                  case 5:
                    return const WidgetMonthTitle(name: '31 Dec');
                }
                return const Text('');
              },
            ))),
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(1, 2),
              const FlSpot(2, 3),
              const FlSpot(3, 2),
            ],
            isCurved: true,
            gradient: LinearGradient(colors: colors),
            barWidth: 5,
            belowBarData: BarAreaData(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: gradient2),
              show: true,
            ),
          ),
        ]));
  }
}

class WidgetMonthTitle extends StatelessWidget {
  final String name;

  const WidgetMonthTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Text(
          style: const TextStyle(
              color: Color.fromRGBO(180, 126, 186, 1),
              fontWeight: FontWeight.normal),
          name),
    );
  }
}
