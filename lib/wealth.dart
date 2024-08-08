import 'package:flutter/material.dart';
import 'package:phonepe_app/home.dart';
import 'package:phonepe_app/main.dart';

class ACWealth extends StatefulWidget {
  const ACWealth({Key? key}) : super(key: key);

  @override
  State<ACWealth> createState() => _ACWealthState();
}

class _ACWealthState extends State<ACWealth> {
  double iconWidth = safeWidth / 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: EdgeInsets.only(left: safePadding, top: safePadding),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Create wealth with SIP',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            '6 Cr+ SIP investment every month.\nGrow your money with SIP now',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.purple, borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            children: const [
                              Expanded(child: Text('START A SIP')),
                              Expanded(child: Icon(Icons.chevron_right))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Image.network(url1),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: safePadding,
          ),
          Container(
            padding: EdgeInsets.all(safePadding),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                textMain('Investment Ideas'),
                SizedBox(
                  height: safePadding,
                ),
                GridView.count(
                  crossAxisCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    getRow1IconButtonBottomText(Icons.indeterminate_check_box_rounded, 'Gold', iconWidth),
                    getRow1IconButtonBottomText(Icons.align_vertical_top_sharp, 'Top\nCompanies', iconWidth),
                    getRow1IconButtonBottomText(Icons.calculate_outlined, 'Tax Saving\nFunds', iconWidth),
                    getRow1IconButtonBottomText(Icons.currency_rupee_rounded, 'Start with\nRs.100', iconWidth),
                    getRow1IconButtonBottomText(Icons.energy_savings_leaf_outlined, 'Best SIP\nFunds', iconWidth),
                    getRow1IconButtonBottomText(Icons.shopping_basket, 'Better than\nFD', iconWidth),
                    getRow1IconButtonBottomText(Icons.call_split_outlined, 'Trending\nThemes', iconWidth),
                    getRow1IconButtonBottomText(Icons.swipe_up_outlined, 'High Return\nsFunds', iconWidth),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: safePadding,
          ),
          Container(
            width: double.infinity,
            height: safeWidth * 0.8,
            padding: EdgeInsets.all(safePadding),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                Container(
                  height: safeWidth * 0.8 * 0.25 - (2 * safePadding),
                  padding: EdgeInsets.all(safePadding),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Top Funds in focus',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Fund ideas to boost your wealth journey',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Container(
                    height: safeWidth * 0.8 * 0.75 - safePadding,
                    padding: EdgeInsets.all(safePadding),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        wealthGetRow4(), SizedBox(width: safePadding,),
                        wealthGetRow4(), SizedBox(width: safePadding,),
                        wealthGetRow4(), SizedBox(width: safePadding,),
                        wealthGetRow4(), SizedBox(width: safePadding,),
                        wealthGetRow4(), SizedBox(width: safePadding,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: safePadding,
          ),
          Container(
            height: safeHeight / 13,
            padding: EdgeInsets.all(safePadding * 1.5),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Row(
              children: [
                SizedBox(
                  width: safePadding,
                ),
                const Icon(Icons.view_comfy_alt_rounded),
                SizedBox(
                  width: safePadding * 2,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Explore all funds',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Pick a fund on your own',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right),
                ))
              ],
            ),
          ),
          SizedBox(
            height: safePadding,
          ),
          Container(
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                textMain('Mutual Fund Categories'),
                GridView.count(
                  crossAxisCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    getRow1IconButtonBottomText(Icons.photo_size_select_large, 'Large Cap\nFunds', iconWidth),
                    getRow1IconButtonBottomText(Icons.brightness_medium_outlined, 'Mid Cap\nFunds', iconWidth),
                    getRow1IconButtonBottomText(Icons.photo_size_select_small, 'Small Cap\nFunds', iconWidth),
                    getRow1IconButtonBottomText(Icons.format_underline_sharp, 'Index\nFunds', iconWidth),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: safePadding,
          ),
          Row(
            children: [
              Container(
                height: (safeWidth - (3 * safePadding)) * 0.5,
                width: (safeWidth - (3 * safePadding)) * 0.5,
                decoration: boxDecorationCurvedEdges(paceColor),
                child: Column(
                  children: [
                    Expanded(child: Image.network(url1)),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: EdgeInsets.all(safePadding),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Learn more\nabout investing\nin mutual funds',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              child: const Icon(Icons.chevron_right),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: safePadding,
              ),
              Container(
                height: (safeWidth - (3 * safePadding)) * 0.5,
                width: (safeWidth - (3 * safePadding)) * 0.5,
                decoration: boxDecorationCurvedEdges(paceColor),
                child: Column(
                  children: [
                    Expanded(child: Image.network(url1)),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: EdgeInsets.all(safePadding),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Calculate how\nyour money can\ngrow',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              child: const Icon(Icons.chevron_right),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget wealthGetRow4() {
  return Container(
    width: safeWidth * 0.7,
    padding: EdgeInsets.all(safePadding),
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: Colors.white54),
    ),
    child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: safeWidth * 0.13,
                    height: safeWidth * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.white70),
                      //image: DecorationImage(image: NetworkImage(url1),),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(url1)),
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: const Text(
                          'ICICI Prudential Value\nDiscovery Fund',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                          child: const Text(
                            'Equity - Value',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: Text('Hi 1'),
              ),
              Expanded(
                child: Text('Hi 1'),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
