import 'dart:math';

import 'package:flutter/material.dart';

class Palate extends StatefulWidget {
  const Palate({Key? key}) : super(key: key);

  @override
  State<Palate> createState() => _PalateState();
}

class _PalateState extends State<Palate> {
  int a=0,b=1,c=2,d=3,e=4,f=5;

  List colorlist=[
    Colors.redAccent,
    Colors.tealAccent,
    Colors.indigoAccent,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.teal,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.green,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: colorlist[a]),
            ),
            Container(height: 80, width: 120, color: colorlist[b]),
            Container(height: 80, width: 120, color: colorlist[c]),
            Container(height: 80, width: 120, color: colorlist[d]),
            Container(
                height: 80, width: 120, color: colorlist[e]),
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: colorlist[f]),
            ),
            SizedBox(height: 20),
            InkWell(onTap: (){

              setState(() {
                Random r=Random();
                a=r.nextInt(10);
                b=r.nextInt(10);
                while(a==b)
                {
                  b=r.nextInt(10);
                }
                c=r.nextInt(10);
                while(c==a || c==b)
                {
                  c=r.nextInt(10);
                }
                d=r.nextInt(10);
                while(d==a || d==b || d==c)
                {
                  d=r.nextInt(10);
                }
                e=r.nextInt(10);
                while(e==a || e==b || e==c || e==d)
                {
                  e=r.nextInt(10);
                }
                f=r.nextInt(10);
                while(f==a || f==b || f==c || f==d || f==e)
                {
                  f=r.nextInt(10);
                }
              });
            },
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent,
                      spreadRadius: 3,
                      blurRadius: 2,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "Tap Here",
                    style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}