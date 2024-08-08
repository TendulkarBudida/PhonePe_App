import 'package:flutter/material.dart';
import 'package:phonepe_app/main.dart';

import 'home.dart';

class ACInsurance extends StatefulWidget {
  const ACInsurance({Key? key}) : super(key: key);

  @override
  State<ACInsurance> createState() => _ACInsuranceState();
}

class _ACInsuranceState extends State<ACInsurance> {
  double iconWidth = safeWidth / 15.0;
  double paddingHeight = safeHeight * 0.06;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: safeHeight,
      padding: EdgeInsets.all(safePadding),
      color: Colors.black87,
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: boxDecorationCurvedEdges(paceColor),
          ),
          SizedBox(
            height: safePadding,
          ),
          Container(
            decoration: boxDecorationCurvedEdges(paceColor),
            padding: EdgeInsets.all(safePadding * 0.5),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(safePadding),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                  child: Column(children: [
                    textMain('Vehicle Insurance'),
                    Padding(
                      padding: EdgeInsets.all(safePadding),
                      child: Container(
                        height: paddingHeight,
                        padding: EdgeInsets.all(safePadding * 0.8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: paceColor,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child:
                                  Center(child: TextField(controller: TextEditingController(text: 'Enter Vehicle Number'))),
                            ),
                            Expanded(
                              flex: 4,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: paddingHeight,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)), color: Colors.pink),
                                  width: 10,
                                  child: const Center(
                                      child: Text(
                                    'VIEW QUOTES',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: safePadding,
                ),
                Container(
                  child: Column(
                    children: [
                      textMain('Motor and Travel'),
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        children: [
                          getRow1IconButtonBottomText(Icons.directions_bike_rounded, 'Bike', iconWidth),
                          getRow1IconButtonBottomText(Icons.car_repair_sharp, 'Car', iconWidth),
                          getRow1IconButtonBottomText(Icons.travel_explore, 'Travel', iconWidth),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ), SizedBox(height: safePadding,),
          Container(
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                textMain('Health'),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: [
                    getRow1IconButtonBottomText(Icons.health_and_safety_outlined, 'Health', iconWidth),
                    getRow1IconButtonBottomText(Icons.health_and_safety, 'Basic Health', iconWidth),
                    getRow1IconButtonBottomText(Icons.personal_injury, 'Accident', iconWidth),
                    getRow1IconButtonBottomText(Icons.health_and_safety_sharp, 'Super Top-up', iconWidth),
                  ],
                ),
              ],
            ),
          ), SizedBox(height: safePadding,),
          Container(
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                textMain('Health'),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: [
                    getRow1IconButtonBottomText(Icons.monitor_heart, 'Term Life', iconWidth),
                    getRow1IconButtonBottomText(Icons.monitor_heart_outlined, 'Guaranteed\nReturns', iconWidth),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
