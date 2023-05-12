import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage();

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            height: 270,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              color: Color(0XFF5152f3),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5.0, 3.0),
                  blurRadius: 20,
                  spreadRadius: 10,
                ),
              ],
            ),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      //upperRow
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Daily Limit'),
                                Text('\$75.00'),
                              ],
                            ),
                            VerticalDivider(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Today Spent'),
                                    Text('\$20.50'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Balance'),
                                    Text('\$54.50'),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //lowerRow
                      Expanded(child: Row())
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
