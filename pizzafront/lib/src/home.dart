import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool _cartvisibility = false;
  double sum = 0;
  List<double> orderprices=[];
  List<Widget> orderedItems = [];
  List<int> orderedIndices = [];
  List<bool> orderedvisibility = [];
  bool _overlay1 = false;
  bool _overlay2 = false;
  bool _overlay3 = false;
  bool _overlay4 = false;
  bool _overlay5 = false;
  bool _overlay6 = false;
  bool _overlay7 = false;
  bool _overlay8 = false;
  bool _overlay9 = false;
  List<double> prices = [10.0, 12.0, 13.0, 11.0, 14.0, 18.0, 15.0, 12.0, 19.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 0.8,
        backgroundColor: Color(0xfffffa8a),
        automaticallyImplyLeading: false,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Sli',
              style: GoogleFonts.portLligatSans(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xffe12301),
              ),
              children: [
                TextSpan(
                  text: 'ceL',
                  style: TextStyle(color: Color(0xffe1d800), fontSize: 30),
                ),
                TextSpan(
                  text: 'ine',
                  style: TextStyle(color: Color(0xffdba24a), fontSize: 30),
                ),
              ]),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.history,
                color: Colors.black54,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black54,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Row(
        children: [
          Container(
            width: _cartvisibility
                ? (MediaQuery.of(context).size.width - 350)
                : (MediaQuery.of(context).size.width - 50),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 65,
                  runAlignment: WrapAlignment.spaceAround,
                  runSpacing: 30,
                  children: <Widget>[
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay1 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/Big_philly_cheese_steak.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'BIG PHILLY CHEESE STEAK',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices topped with tender Philly Steak, mushrooms, red onion and capsicum on a tasty American style cheddar sauce base.",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay1
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/Big_philly_cheese_steak.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG PHILLY CHEESE STEAK',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                              13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                              Container()),
                                                                      Expanded(
                                                                          child:
                                                                              Text(prices[0].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[0]);
                                            orderedIndices.add(0);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay2 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/big_cheese.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'BIG CHEESE',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices. Authentic, soft & foldable New York-style dough, topped with Marinara pizza sauce & lots of stretchy mozzarella",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay2
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/big_cheese.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG CHEESE',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[1].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[1]);
                                            orderedIndices.add(1);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay3 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('images/big_ham.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'BIG HAM & PINEAPPLE',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices. Authentic, soft & foldable New York-style dough, topped with Marinara pizza sauce, smoky leg ham & sweet pineapple pieces",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay3
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/big_ham.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG HAM & PINEAPPLE',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[2].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[2]);
                                            orderedIndices.add(2);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay4 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/big_pepperoni.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'BIG PEPPERONI',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices. Authentic, soft & foldable New York-style dough, topped with Marinara pizza sauce & lots of crispy American pepperoni with hints of fennel & chilli",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay4
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/big_pepperoni.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG PEPPERONI',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[3].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[3]);
                                            orderedIndices.add(3);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay5 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/big_pepperoni_sausage_mushroom.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'BIG PEPPERONI, SAUSAGE & MUSHROOM',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices. Authentic, soft & foldable New York-style dough, topped with Marinara pizza sauce, crispy American pepperoni, pork & fennel sausage & sliced mushrooms",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay5
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/big_pepperoni_sausage_mushroom.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG PEPPERONI, SAUSAGE & MUSHROOM',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[4].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[4]);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay6 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/big_three_meats.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'BIG THREE MEATS',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Huge pie cut into 8 extra-large slices. Authentic, soft & foldable New York-style dough, topped with Marinara pizza sauce, crispy American pepperoni, ground beef & Italian sausage",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay6
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/big_three_meats.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'BIG THREE MEATS',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[5].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[5]);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay7 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/new_yorker_half_half.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'NEW YORKER HALF N HALF',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Combine your two favourite New Yorkers!",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay7
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/new_yorker_half_half.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'NEW YORKER HALF N HALF',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[6].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[6]);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay8 = isHovering;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 300,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'images/chicken_parmy.jpg'),
                                    height: 200,
                                    width: 300,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'CHICKEN PARMY',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "22 crumbed chicken bites with crispy rasher bacon, creamy mozzarella & rich tomato sauce",
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            _overlay8
                                ? Positioned(
                                    top: 100,
                                    left: 0,
                                    right: 0,
                                    child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            orderedItems.add(Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                    height: 110,
                                                    width: 290,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 110,
                                                          width: 105,
                                                          child: Image(
                                                            image: AssetImage(
                                                                'images/chicken_parmy.jpg'),
                                                            height: 110,
                                                            width: 105,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 80,
                                                          width: 170,
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'CHICKEN PARMY',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                          13),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Container(
                                                                  width: 170,
                                                                  height: 30,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                          Container()),
                                                                      Expanded(
                                                                          child:
                                                                          Text(prices[7].toString() + '€'))
                                                                    ],
                                                                  ))
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ));
                                            orderprices.add(prices[7]);
                                          });
                                        },
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          size: 100,
                                          color:
                                              Colors.white70.withOpacity(0.8),
                                        )))
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        onTap: () {},
                        onHover: (isHovering) {
                          setState(() {
                            _overlay9 = isHovering;
                          });
                        },
                        child: Container(
                          child: Stack(
                            children: [
                              Container(
                                width: 300,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'images/reef_steak_bacon.jpg'),
                                      height: 200,
                                      width: 300,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'REEF, STEAK & BACON',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Juicy prawns, seasoned steak & crispy rasher bacon, topped with creamy hollandaise sauce & spring onions",
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              _overlay9
                                  ? Positioned(
                                      top: 100,
                                      left: 0,
                                      right: 0,
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              orderedItems.add(Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(2.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(),
                                                          borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                      height: 110,
                                                      width: 290,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        children: [
                                                          Container(
                                                            height: 110,
                                                            width: 105,
                                                            child: Image(
                                                              image: AssetImage(
                                                                  'images/reef_steak_bacon.jpg'),
                                                              height: 110,
                                                              width: 105,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 80,
                                                            width: 170,
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                                  children: [
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child: Text(
                                                                        'REEF, STEAK & BACON',
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black54,
                                                                            fontSize:
                                                                            13),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Container(
                                                                    width: 170,
                                                                    height: 30,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                      children: [
                                                                        Expanded(
                                                                            child:
                                                                            Container()),
                                                                        Expanded(
                                                                            child:
                                                                            Text(prices[8].toString() + '€'))
                                                                      ],
                                                                    ))
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ));
                                              orderprices.add(prices[8]);
                                            });
                                          },
                                          child: Icon(
                                            Icons.add_circle_outline,
                                            size: 100,
                                            color:
                                                Colors.white70.withOpacity(0.8),
                                          )))
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: Color(0xffdba24a),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdba24a),
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                            -2.0, -2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: 50,
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              _cartvisibility = !_cartvisibility;
                            });
                          },
                          child: Icon(Icons.shopping_cart)),
                    ),
                  ),
                ),
                _cartvisibility
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                color: Color(0xffd4bcb4),
                                /*boxShadow: [
                            BoxShadow(
                              color: Color(0xffdba24a),
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  -2.0, -2.0), // shadow direction: bottom right
                            )
                          ],*/
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                    child: Text(
                                  "Order summary ",
                                  style: TextStyle(
                                      fontSize: 25, color: Color(0xfffcecec)),
                                )),
                              )),
                          Expanded(
                              flex: 1,
                              child: SingleChildScrollView(
                                  child: Container(
                                      /*height: 10000000
                              ,*/
                                      child: Column(children: [
                                ...orderedItems
                                    .map((Widget wid) => Stack(
                                          children: [
                                            wid,
                                            Positioned(
                                              top: 4,
                                              right: 0,
                                              child: InkWell(
                                                onTap: () {
                                                    setState(() {
                                                      orderprices.remove(orderprices[orderedItems.indexOf(wid)]);
                                                      orderedItems.remove(wid);

                                                    });
                                                  },
                                                child: Icon(Icons.delete),
                                              ),
                                            )
                                          ],
                                        ))
                                    .toList()
                              ])))),
                          Container(
                              width: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                color: Colors.white70,
                                /*boxShadow: [
                            BoxShadow(
                              color: Color(0xffdba24a),
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  -2.0, -2.0), // shadow direction: bottom right
                            )
                          ],*/
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                  "price:",
                                  style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.deepOrangeAccent),
                                ),Text(
                                          orderprices.fold(0, (previous, current) => previous + current).toString()+'€',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black45),
                                        )
                                      ],
                                    )),
                              ))
                        ],
                      )
                    : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}
