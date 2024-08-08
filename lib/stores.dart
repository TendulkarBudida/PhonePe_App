import 'package:flutter/material.dart';

import 'main.dart';
import 'home.dart';

class ACStores extends StatefulWidget {
  const ACStores({Key? key}) : super(key: key);

  @override
  State<ACStores> createState() => _ACStoresState();
}

class _ACStoresState extends State<ACStores> {

  double iconWidth = safeWidth / 15.0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: safeHeight,
      padding: EdgeInsets.all(safePadding),
      width: double.infinity,
      color: paceScaffoldBgColor,
      child: Column(
        children: [
          Container(), SizedBox(height: safePadding,),
          Container(
            padding: EdgeInsets.all(safePadding),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: safeWidth - (2 * safePadding) - (safeWidth / 4.3),
                      child: const Text(
                        'Suggestions for you',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                    ),
                  ],
                ), SizedBox(height: safePadding,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: safeWidth / 3,
                        height: safeHeight / 4.5,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1.2,
                            color: Colors.white54,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: <Widget> [
                            Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(url1)),
                                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                                  ),
                                )
                            ),
                            const Expanded(
                                flex: 3,
                                child: Text(
                                  'Hand-picked\nrestaurants',
                                  textAlign: TextAlign.left,
                                  strutStyle: StrutStyle(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ), SizedBox(width: safePadding,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: safeWidth / 3,
                        height: safeHeight / 4.5,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            width: 1.2,
                            color: Colors.white54,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: <Widget> [
                            Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(url1)),
                                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                                  ),
                                )
                            ),
                            const Expanded(
                                flex: 3,
                                child: Text(
                                  'Top Shopping\nDestinations',
                                  textAlign: TextAlign.left,
                                  strutStyle: StrutStyle(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ), SizedBox(height: safePadding,),
          Container(
            padding: EdgeInsets.all(safePadding),
            decoration: boxDecorationCurvedEdges(paceColor),
            child: Column(
              children: [
                textMain('Popular Categories'), SizedBox(height: safePadding,),
                GridView.count(
                  crossAxisCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    getRow1IconButtonBottomText(Icons.store, 'Kirana &\nGeneral Store', iconWidth),
                    getRow1IconButtonBottomText(Icons.local_grocery_store_outlined, 'Fruits and\nvegetables', iconWidth),
                    getRow1IconButtonBottomText(Icons.living, 'Meat Shop', iconWidth),
                    getRow1IconButtonBottomText(Icons.local_pharmacy, 'Pharmacy', iconWidth),
                    getRow1IconButtonBottomText(Icons.nearby_error, 'Doctor & path\nlabs', iconWidth),
                    getRow1IconButtonBottomText(Icons.food_bank_outlined, 'Food &\nBeverages', iconWidth),
                    getRow1IconButtonBottomText(Icons.spa, 'Salon & Spa', iconWidth),
                    getRow1IconButtonBottomText(Icons.home_repair_service_outlined, 'Home repair\nand cleaning', iconWidth),
                    getRow1IconButtonBottomText(Icons.storefront_sharp, 'Stationery', iconWidth),
                    getRow1IconButtonBottomText(Icons.pets, 'Pet shop', iconWidth),
                    getRow1IconButtonBottomText(Icons.toys_outlined, 'Toy shop', iconWidth),
                    getRow1IconButtonBottomText(Icons.car_rental_sharp, 'Car & Bike\nRepair', iconWidth),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
