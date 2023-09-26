import 'package:flutter/material.dart';

import 'Dash.dart';

class Remote extends StatefulWidget {
  @override
  createState() => RemoteState();
}

class RemoteState extends State<Remote> {
  int index = 0;
  bool isSwitched = false;
  var textValue = 'Closed';
  Color textColor = Colors.red;
  bool pressAttention = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Opened';
        textColor = Colors.green;
      });
      print('Switch Button is Open');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Closed';
        textColor = Colors.red;
      });
      print('Switch Button is Closed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xFF1A237E),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Company Name",
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text("Choose the perfect tagline",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 15)),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Order Status ",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10)),
                      SizedBox(
                        width: 20,
                      ),
                      Transform.scale(
                          scale: 1,
                          child: Switch(
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: Colors.green,
                            activeTrackColor: Colors.green,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.white,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Text('$textValue',
                          style: TextStyle(color: textColor, fontSize: 10))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("History"),
            ),

            //items
            Container(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Text("Test",style: TextStyle(
                        //     color:Colors.black,
                        //     fontSize: 10),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.person_2,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Virag Mercedesz',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          'AL Brucknera Aleksandra 63, Wroclaw 51-410',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Dash(
                              direction: Axis.horizontal,
                              length: 300,
                              dashColor: Colors.grey,
                              dashGap: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('12 Jun 23',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  Text('12.5 km',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                  Text('Unmarked',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12)),
                                ],
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              setState(() => pressAttention = !pressAttention),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: pressAttention
                                  ? const Color(0xFF1A237E)
                                  : const Color(0xFFBBDEFB) // Background color
                              ),
                          child: Text('View Order',
                              style: TextStyle(
                                  color: pressAttention
                                      ? Colors.white
                                      : const Color(0xFF1A237E),
                                  fontSize: 12)),
                        )
                      ],
                    )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
