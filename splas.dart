import 'package:NAMEKARAN/NAMEKARAN/categery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class spls extends StatefulWidget {
  const spls({super.key});

  @override
  State<spls> createState() => _splsState();
}

class _splsState extends State<spls> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1500),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>cate()));
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bb.jpg"))),
      ),
    );
  }
}
