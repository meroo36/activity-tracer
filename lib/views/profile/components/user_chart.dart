import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class UserChart extends StatefulWidget {
  @override
  _UserChartState createState() => _UserChartState();
}

class _UserChartState extends State<UserChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
      height: 200,
      width: double.infinity,
      child: LineChart(
        LineChartData(
          maxX: 7,
          minX: 1,
          minY: 0,
          titlesData: FlTitlesData(
            show: true,
            leftTitles: SideTitles(
              showTitles: true,
              //getTextStyles: (value) => TextStyle(color: Colors.grey),
              getTitles: (value) {
                var stringVal = value.toString();
                if (value % 4000 == 0) {
                  if (value.toInt().toString().length > 4) {
                    return '${stringVal[0] + stringVal[1]}K';
                  } else {
                    return '${stringVal[0]}K';
                  }
                } else {
                  return '';
                }
              },
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              barWidth: 2,
              spots: [
                FlSpot(1, 12600),
                FlSpot(2, 9204),
                FlSpot(3, 7024),
                FlSpot(4, 8750),
                FlSpot(5, 6000),
                FlSpot(6, 6000),
                FlSpot(7, 6000),
              ],
            )
          ],
        ),
      ),
    );
  }
}
