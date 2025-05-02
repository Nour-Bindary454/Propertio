import 'package:flutter/material.dart';

import 'package:real_estate_app/core/colors.dart';
import 'package:real_estate_app/core/default_appbar.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:real_estate_app/core/image_slider.dart';

class SavedCard extends StatefulWidget {
  const SavedCard({super.key});

  @override
  State<SavedCard> createState() => _SavedCardState();
}

class _SavedCardState extends State<SavedCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
        title: 'Saved Card',
        hasAction: false,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const ImageSlider(),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Transaction Details',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: width * 0.9,
                  height: 65,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 3, 31, 53),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                color:
                                    Color.fromARGB(255, 174, 174, 174)),
                          ),
                          Text('\$6,879',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(255, 91, 93, 109),
                        thickness: 0.4,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_upward_rounded,
                              color: Color.fromARGB(255, 174, 174, 174)),
                          Text('\$2,872',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      VerticalDivider(
                        color: Color.fromARGB(255, 91, 93, 109),
                        thickness: 0.4,
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_downward_rounded,
                              color: Color.fromARGB(255, 174, 174, 174)),
                          Text('\$4,872',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: width * 0.9,
                  height: 310,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Statistics',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 230,
                        child: LineChart(
                          LineChartData(
                            gridData: FlGridData(
                              drawVerticalLine: false,
                              show: true,
                              getDrawingHorizontalLine: (value) {
                                return const FlLine(
                                  color: Color.fromARGB(158, 212, 214, 216),
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            titlesData: FlTitlesData(
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
                              )),
                              topTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                showTitles: false,
                              )),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 24,
                                  getTitlesWidget: (value, meta) {
                                    const monthNames = [
                                      'Jan',
                                      'Feb',
                                      'Mar',
                                      'Apr',
                                      'May',
                                      'Jun',
                                      'Jul',
                                      'Aug',
                                      'Sep',
                                      'Oct',
                                      'Nov',
                                      'Dec'
                                    ];
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        monthNames[value.toInt()],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(82, 255, 153, 0),
                                    Colors.orange,
                                  ],
                                  transform: GradientRotation(2),
                                ),
                                show: true,
                                spots: [
                                  const FlSpot(0, 0),
                                  const FlSpot(1, 2),
                                  const FlSpot(2, 1.5),
                                  const FlSpot(3, 3),
                                  const FlSpot(4, 2.2),
                                  const FlSpot(5, 2.8),
                                  const FlSpot(6, 3),
                                  const FlSpot(7, 4.8),
                                  const FlSpot(8, 5),
                                  const FlSpot(9, 6.8),
                                  const FlSpot(10, 7),
                                  const FlSpot(11, 8),
                                ],
                                isCurved: true,
                                color: Colors.orange,
                                barWidth: 1.5,
                                isStrokeCapRound: true,
                                dotData: FlDotData(
                                  show: true,
                                  checkToShowDot: (spot, barData) {
                                    return false;
                                  },
                                ),
                                belowBarData: BarAreaData(
                                    show: true, color: Colors.transparent),
                              ),
                            ],
                            lineTouchData: LineTouchData(
                              touchTooltipData: LineTouchTooltipData(
                                tooltipRoundedRadius: 20,
                                getTooltipColor: (touchedSpot) {
                                  return Colors.black;
                                },
                                getTooltipItems:
                                    (List<LineBarSpot> touchedBarSpots) {
                                  return touchedBarSpots.map((barSpot) {
                                    return LineTooltipItem(
                                      '\$${barSpot.y}',
                                      const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                              getTouchedSpotIndicator: (barData, spotIndexes) {
                                return [
                                  const TouchedSpotIndicatorData(
                                    FlLine(
                                      color: Color.fromARGB(28, 255, 153, 0),
                                      strokeWidth: 25,
                                    ),
                                    FlDotData(
                                      show: true,
                                    ),
                                  ),
                                ];
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
