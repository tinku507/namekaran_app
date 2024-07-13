import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'apiservice.dart';
import 'modelapi.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  void launchwhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("cant open whatsapp");
  }

  late Future<List<NameApi>> _name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name = Name().getname("10", "2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<List<NameApi>>(
                future: _name,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<NameApi> data = snapshot.data!;
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            child: Card(
                              shadowColor: Colors.black,
                              elevation: 5,
                              child: Container(
                                height: 100,
                                width: 300,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 25, top: 25),
                                                child: Text(
                                                  data[index].name.toString(),
                                                  style: TextStyle(fontSize: 17,
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      letterSpacing: 1),),
                                              ),
                                            ),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .only(left: 25, top: 10),
                                                  child: Text(
                                                      data[index].meaning
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          color: Colors
                                                              .black45)),
                                                )),
                                          ]),
                                    ),
                                    SizedBox(width: 30),

                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20),
                                          GestureDetector(onTap: () {
                                            launchwhatsapp(
                                                number: "+916395561661",
                                                message: "hello");

                                            var msg = data[index].name
                                                .toString() + " " +
                                                data[index].meaning.toString();
                                            launchUrl(Uri.parse(
                                                'https://wa.me/?text=$msg'),
                                                mode: LaunchMode
                                                    .externalApplication);
                                            //Share.share(data[index].name.toString());

                                          },
                                              child: Icon(Icons.share_rounded,
                                                  size: 25)),
                                          SizedBox(height: 10),
                                          GestureDetector(onTap: () {
                                            Clipboard.setData(ClipboardData(
                                                text: data[index].name
                                                    .toString()));
                                          },
                                              child: Icon(
                                                Icons.copy_rounded, size: 25,))

                                        ],

                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                    );
                  }
                  else {
                    return Center(
                      child: Text("No name Found"),
                    );
                  }
                },

              )


          )


        ],
      ),
      //
    );
  }
}
