import 'package:design_demo/ActiveOrders.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: const Color(0xFF1A237E),
            unselectedLabelColor: Colors.grey,
            indicatorSize:TabBarIndicatorSize.label,
            indicatorColor: const Color(0xFF1A237E),
            tabs: [
              Tab(
                text: "Active Orders",
              ),
              Tab(
                text: "Past Orders",
              ),
            ],
          ),
        ),
        body: TabBarView(
        children: [
          Center(
            child: ActiveOrders(),
          ),
          Center(
            child: Icon(Icons.account_circle),
          ),
        ],
          )
      ),
    );
  }
}