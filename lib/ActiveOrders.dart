import 'package:flutter/material.dart';

import 'Dash.dart';

class ActiveOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ItemTile();
          }),
    );
  }
}

class ItemTile extends StatelessWidget{
  const ItemTile({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Card(
        color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Order id #79797979",style: TextStyle(
                          color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.adjust_rounded,
                        color: Colors.green,
                        size: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text("Order delivered on 21 Aug 2022, 12:52 PM by ABC",style: TextStyle(
                      color: Colors.grey, fontSize: 12,)),
                  SizedBox(height:15),
                  Dash(
                    direction: Axis.horizontal,
                    length: 300,
                    dashColor: Colors.grey,
                    dashGap: 5,
                  ),
                  SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("kenzi.lay@c.com",style: TextStyle(
                          color: Colors.blue, fontSize: 12)),
                      Text('\u{20B9}${48}')
                    ],
                  )
                ],
              ) ,
            )

        )
    );

  }

}
