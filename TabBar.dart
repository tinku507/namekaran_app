import 'package:NAMEKARAN/NAMEKARAN/first.dart';
import 'package:NAMEKARAN/NAMEKARAN/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tabbarv extends StatefulWidget {
  const tabbarv({super.key});

  @override
  State<tabbarv> createState() => _tabbarvState();
}

class _tabbarvState extends State<tabbarv> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "BOYS",
            ),
            Tab(
              text: "GIRLS",
            )
          ]),
        ),
        body: TabBarView(children: [
          name(),
          name1()
        ]
        ),
      ),
    );
  }
}
