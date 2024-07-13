import 'package:NAMEKARAN/NAMEKARAN/TabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cate extends StatefulWidget {
  const cate({super.key});

  @override
  State<cate> createState() => _cateState();
}

class _cateState extends State<cate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 20,),
            Column(
              children: [
                SizedBox(height: 150,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tabbarv()));
                },
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/hindut.png"))),
                    height: 150,
                    width: 150,
                    // color: Colors.blue,
                  ),
                ),
                Text("HINDU",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 150,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tabbarv()));
                },
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/moon.png"))),
                    height: 150,
                    width: 150,
                    // color: Colors.blue,
                  ),
                ),
                Text("MUSLIM",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(width: 40,),
            Column(
              children: [
                SizedBox(height: 150,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tabbarv()));
                },
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/c.png"))),
                    height: 150,
                    width: 150,
                    // color: Colors.blue,
                  ),
                ),
                Text("KRISJAN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 150,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tabbarv()));
                },
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/eng.png"))),
                    height: 150,
                    width: 150,
                    // color: Colors.blue,
                  ),
                ),
                Text("ENGLISH",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
