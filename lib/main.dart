import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*****************************************************APP BAR***********************************************
      body: Column(
        children: [
          Container(

            width: double.infinity,
            height: 80,
            padding: EdgeInsets.all(20.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                    Container(child:
                    Column(
                        children: const [
                        Text("Welcome back", style: TextStyle(
                          fontFamily: 'Railway',
                          fontWeight: FontWeight.bold,
                        ),),
                          Text("Gp Muthu"),
                        ],
                      )
                    ),

               const Icon(Icons.add_shopping_cart),
              ],
            ),

          ),



          //********************************************SCROLL VIEW****************************************
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
                Row(
                      children: [
                        Card(
                          child: SizedBox(
                          width: 200,
                          height: 120,

                          child: Stack(
                                children: <Widget>[
                                  Image.asset("lib/assets/images/Electrician-Header.png"),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),



                    ),
                        ),
                        SizedBox(width: 12),
                        Card(
                          child: SizedBox(
                            width: 200,
                            height: 120,

                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/carpenter.jpg"),
                                Positioned.fill(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),



                          ),
                        ),
                        SizedBox(width: 12),
                        Card(

                          child: SizedBox(
                            width: 200,
                            height: 120,

                            child: Stack(
                              children: <Widget>[
                                Image.asset("lib/assets/images/plumber.jpg"),
                                Positioned.fill(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),



                          ),
                        ),

                      ],
                    ),




        ),


       //*************************************************TEXT SERVICE**************************
          Container(
            padding: EdgeInsets.all(10.0),
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Services",
                style: TextStyle(
                  fontFamily: "JosefinSans"
                ),),
                Icon(Icons.more_horiz)
              ],
            ),
          ),



          //********************************************Service cards**************************
          Container(
            child:
            Column(

              children: [
                InkWell(
                onTap: (){


          showDialog(
          context: context,builder: (_) => AlertDialog(


          content: cardlist(titleimg: "lib/assets/images/thor.gif", c1img: "lib/assets/images/Fan.jpg", c2img: "lib/assets/images/tv.jpg", c3img: "lib/assets/images/ac.png", c1txt: "Fan", c2txt: "TV", c3txt: "AC"),




          ) );


          },
            child:
                  service(name: "Electircal Service", image: "lib/assets/images/e-service.png"),
                ),
                  SizedBox(width: 15,),
      InkWell(
        onTap: (){


          showDialog(
              context: context,builder: (_) => AlertDialog(


            content: cardlist(titleimg: "lib/assets/images/tangirone.gif", c1img: "lib/assets/images/tap.png", c2img: "lib/assets/images/pipe.png", c3img: "lib/assets/images/watertank.jpg", c1txt: "Tap", c2txt: "Pipe leakage", c3txt:"Water Tank"),



          ) );


        },
        child:
                  service(name: "Plumbing Service", image:"lib/assets/images/p-sercive.png"),
      ),
                  SizedBox(width: 15,),
      InkWell(
        onTap: (){


          showDialog(
              context: context,builder: (_) => AlertDialog(



            content: cardlist(titleimg: "lib/assets/images/ironman.gif", c1img: "lib/assets/images/door.png", c2img: "lib/assets/images/cubord.png", c3img: "lib/assets/images/table.png", c1txt: "Door", c2txt: "Cupboard", c3txt: "Furniture"),


          ) );


        },
        child:
                  service(name: "Carpentery Service", image:"lib/assets/images/c_service-modified.png"),
      ),

              ],
            ),
          )

      ]
      ),
    );
  }
}













