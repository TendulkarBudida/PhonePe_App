import 'package:flutter/material.dart';
import 'main.dart';

class ACHome extends StatefulWidget {
  const ACHome({Key? key}) : super(key: key);

  @override
  State<ACHome> createState() => _ACHomeState();
}

class _ACHomeState extends State<ACHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: paceScaffoldBgColor,
      padding: EdgeInsets.all(safePadding),
      child: Column(
        children: [
          getRow1(), SizedBox(height: safePadding),
          getRow2(), SizedBox(height: safePadding),
          getRow3(), SizedBox(height: safePadding),
          getRow4(), SizedBox(height: safePadding),
          getRow5(), SizedBox(height: safePadding),
          getRow6(), SizedBox(height: safePadding),
          getRow7(), SizedBox(height: safePadding),
          getRow8(), SizedBox(height: safePadding),
          getRow9(), SizedBox(height: safePadding),
          getRow10(),
        ],
      ),
    );
  }
}

Widget textConstant(String text, Color color) {
  return Container(
      padding: EdgeInsets.only(bottom: safePadding),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(overflow: TextOverflow.ellipsis, color: color,),
      ));
}

Widget textMain(String text) {
  return Container(
    padding: EdgeInsets.all(safePadding),
    width: safeWidth - (2 * safePadding),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      textAlign: TextAlign.left,
    ),
  );
}

BoxDecoration boxDecorationCurvedEdges(Color color) {
  return BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(10)));
}

/*Widget getRow1() {
  double iconWidth = safeWidth / 15.0;

  return Container(
    alignment: Alignment.bottomCenter,
    height: 140,
    color: Colors.pink,
    child: Container(
      height: 100,
      color: Colors.grey,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          getRow1IconButtonBottomText(Icons.person, 'To Mobile\nNumber', iconWidth),
          getRow1IconButtonBottomText(Icons.comment_bank_rounded, 'To Bank/\nUPI ID', iconWidth),
          getRow1IconButtonBottomText(Icons.rotate_90_degrees_ccw, 'To Self\nAccount', iconWidth),
          getRow1IconButtonBottomText(Icons.home_outlined, 'Check\nBalance', iconWidth),
        ],
      ),
    ),
  );
}*/

Widget getRow1() {
  double iconWidth = safeWidth / 12.0;

  return Container(
    //height: safeWidth / 2,
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Transfer Money'),
        Container(
          height: 150,
          alignment: Alignment.center,
          child: Container(
            height: 100,
            //color: Colors.grey,
            child: GridView.count(
              crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                getRow1IconButtonBottomText(Icons.person, 'To Mobile\nNumber', iconWidth),
                getRow1IconButtonBottomText(Icons.comment_bank_rounded, 'To Bank/\nUPI ID', iconWidth),
                getRow1IconButtonBottomText(Icons.rotate_90_degrees_ccw, 'To Self\nAccount', iconWidth),
                getRow1IconButtonBottomText(Icons.home_outlined, 'Check\nBalance', iconWidth),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget getRow1IconButtonBottomText(IconData icon, String text, double iconWidth) {
  return Column(
    children: [
      IconButton(
        highlightColor: Colors.black,
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: safeWidth / 12.0,
          /*shadows: const <Shadow>[
            Shadow(color: Colors.black, blurRadius: 20)
          ]*/
        ),
      ),
      textConstant(text, Colors.white)
    ],
  );
}

Widget getRow2() {
  return Row(
    children: [
      getRow2IconButtonBottomText(Icons.wallet, 'PhonePe Wallet'),
      SizedBox(
        width: safePadding,
      ),
      getRow2IconButtonBottomText(Icons.card_giftcard, 'Rewards'),
      SizedBox(
        width: safePadding,
      ),
      getRow2IconButtonBottomText(
          Icons.volume_up_outlined, 'Refer & Get Rs.100'),
    ],
  );
}

Widget getRow2IconButtonBottomText(IconData icon, String text) {
  double height = safeHeight / 11.5;

  return Expanded(
    child: Container(
      decoration: boxDecorationCurvedEdges(Colors.blueAccent),
      //width: (safeWidth - (2 * safePadding)) / 3.0,
      height: height,
      child: GestureDetector(
        onTap: () {
          debugPrint('hello');
        },
        child: Column(
          children: [
            Expanded(
                child: Icon(
                  icon,
                  color: Colors.white70,
                )),
            textConstant(text, Colors.white)
          ],
        ),
      ),
    ),
  );
}

Widget getRow3() {
  double height = safeHeight / 15.5;

  return Container(
    height: height,
    padding: EdgeInsets.all(safePadding),
    decoration: boxDecorationCurvedEdges(paceColor),
    child: GestureDetector(
      onTap: () {
        debugPrint('hello');
      },
      child: Row(
        children: [
          Expanded(child: Image.network(url1)),
          Container(
            padding: EdgeInsets.only(left: safePadding, right: safePadding),
            child: Text(
              '|',
              style: TextStyle(fontSize: (height / 2.5), color: Colors.white10),
            ),
          ),
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: Text(
                '1-Click Superfast Payments',
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.white70,
          )
        ],
      ),
    ),
  );
}

Widget getRow4() {
  double billsWidth = 70;
  double iconWidth = safeWidth / 15.0;

  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(safePadding),
              width: safeWidth - (2 * safePadding) - billsWidth - (safeWidth / 20),
              child: const Text(
                'Recharge & Pay Bills',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextButton(
                onPressed: () {
                  debugPrint('My Bills');
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: safePadding * 0.5,
                      bottom: safePadding * 0.5,
                      left: safePadding,
                      right: safePadding),
                  decoration: boxDecorationCurvedEdges(Colors.white24),
                  width: billsWidth,
                  child: const Center(
                    child: Text(
                      'My Bills',
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                  ),
                ))
          ],
        ),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow1IconButtonBottomText(Icons.phone_android, 'Mobile\nRecharge', iconWidth),
            getRow1IconButtonBottomText(Icons.signal_wifi_4_bar_sharp, 'DTH', iconWidth),
            getRow1IconButtonBottomText(Icons.electric_bolt, 'Electricity', iconWidth),
            getRow1IconButtonBottomText(Icons.credit_card, 'Credit Card\nBill Payment', iconWidth),
            getRow1IconButtonBottomText(Icons.home_outlined, 'Rent\nPayment', iconWidth),
            getRow1IconButtonBottomText(Icons.shopping_bag, 'Loan\nRepayment', iconWidth),
            getRow1IconButtonBottomText(Icons.mark_chat_read, 'Education\nFees', iconWidth),
            getRow1IconButtonBottomText(Icons.arrow_circle_right_rounded, 'See All', iconWidth),
          ],
        )
      ],
    ),
  );
}

/*Widget getRow5() {
  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Sponsored Links'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow5ImageBottomText('Bajaj Finserv'),
            getRow5ImageBottomText('Bajaj Finserv'),
            getRow5ImageBottomText('Bajaj Finserv'),
            getRow5ImageBottomText('Bajaj Finserv'),
          ],
        )
      ],
    ),
  );
}

Widget getRow5ImageBottomText(String text) {
  return GestureDetector(
    child: Column(
      children: [
        Expanded(child: Image.network(url1)),
        Container(padding: EdgeInsets.all(safePadding * 0.75),child: Text(text, style: const TextStyle(color: Colors.white),),)
      ],
    ),
  );
}*/

Widget getRow5() {
  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Sponsored Links'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow5ImageBottomText(url1, 'Bajaj Finserv',),
            getRow5ImageBottomText(url1, 'Kotak811',),
            getRow5ImageBottomText(url1, 'Buddy Loan',),
            getRow5ImageBottomText(url1, 'Shopsy',),
          ],
        )
      ],
    ),
  );
}

Widget getRow5ImageBottomText(String url, String text) {
  return Column(
    children: [
      SizedBox(width: safeWidth / 9, child: Image.network(url)),
      Container(padding: EdgeInsets.all(safePadding * 0.75),child: Text(text, style: const TextStyle(color: Colors.white), textAlign: TextAlign.center,))
    ],
  );
}

Widget getRow6() {
  double iconWidth = safeWidth / 12.0;

  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Insurance'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow1IconButtonBottomText(Icons.pedal_bike_sharp, 'Bike', iconWidth),
            getRow1IconButtonBottomText(Icons.car_rental_sharp, 'Car', iconWidth),
            getRow1IconButtonBottomText(Icons.health_and_safety_outlined, 'Health', iconWidth),
            getRow1IconButtonBottomText(Icons.car_crash, 'Accident', iconWidth),
            getRow1IconButtonBottomText(Icons.monitor_heart_outlined, 'Term Life', iconWidth),
            getRow1IconButtonBottomText(Icons.flight, 'Travel', iconWidth),
            getRow1IconButtonBottomText(Icons.autorenew, 'Insurance Renewal', iconWidth),
            getRow1IconButtonBottomText(Icons.arrow_circle_right_rounded, 'See All', iconWidth),
          ],
        )
      ],
    ),
  );
}

Widget getRow7() {
  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    height: 250,
  );
}

Widget getRow8() {
  double iconWidth = safeWidth / 12.0;

  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Travel Bookings'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow1IconButtonBottomText(Icons.flight, 'Flights', iconWidth),
            getRow1IconButtonBottomText(Icons.directions_bus_filled_outlined, 'Bus', iconWidth),
            getRow1IconButtonBottomText(Icons.train_outlined, 'Trains', iconWidth),
            getRow1IconButtonBottomText(Icons.apartment, 'Hotels', iconWidth),
          ],
        )
      ],
    ),
  );
}


Widget getRow9() {
  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Sponsored Links'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow5ImageBottomText(url1, 'Swiggy',),
            getRow5ImageBottomText(url1, 'Buy FASTag',),
            getRow5ImageBottomText(url1, 'Myntra',),
            getRow1IconButtonBottomText(Icons.arrow_circle_right_rounded, 'See All', safeWidth / 12.0),
          ],
        )
      ],
    ),
  );
}

Widget getRow10() {
  return Container(
    decoration: boxDecorationCurvedEdges(paceColor),
    child: Column(
      children: [
        textMain('Sponsored Links'),
        GridView.count(
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getRow5ImageBottomText(url1, 'Hotstar',),
            getRow5ImageBottomText(url1, 'Amazon\nPrime',),
            getRow5ImageBottomText(url1, 'Zee5',),
            getRow1IconButtonBottomText(Icons.arrow_circle_right_rounded, 'See All', safeWidth / 12.0),
          ],
        )
      ],
    ),
  );
}

Widget getIconBottomText(String text, Icons icon) {
  return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon as IconData?),
              )),
          Container(
              padding: const EdgeInsets.only(top: 0.5), child: Text(text)),
        ],
      ));
}
