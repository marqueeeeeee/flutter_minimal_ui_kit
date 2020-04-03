import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                      child: LineChart(
                        sampleData1(),
                        swapAnimationDuration: Duration(milliseconds: 250),
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh,
                  color:
                      Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
                ),
                onPressed: () {
                  setState(() {
                    isShowingMainData = !isShowingMainData;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black,
          
          
        ),
        touchCallback: (LineTouchResponse touchResponse) {
          print(touchResponse);
        },
        handleBuiltInTouches: true,
      ),
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    LineChartBarData lineChartBarData1 = const LineChartBarData(
      spots: [
        FlSpot(1, 100),
        FlSpot(2, 200),
        FlSpot(3, 300),
        FlSpot(4, 400),
        FlSpot(5, 400),
        FlSpot(6, 300),
        FlSpot(7, 200),
        FlSpot(8, 100),
        FlSpot(9, 100),
        FlSpot(10, 200),
      ],
      isCurved: true,
      colors: [
        Colors.grey,
      ],
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: FlDotData(
        dotColor: Colors.black,
        dotSize: 3,
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
    ];
  }
}
