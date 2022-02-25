import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_antarkeun_app/onboarding_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/Banner1.png',
    'assets/Banner2.png',
    'assets/Banner3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.09),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.green.shade600,
          title: Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/9.png"),
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Games Ontario Roman",
                      style: TextStyle(
                          fontFamily: "SourceSerif",
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " West Jakarta, Indonesia",
                      style:
                          TextStyle(fontFamily: "RobotoMedium", fontSize: 13),
                    )
                  ],
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_outlined))
          ],
        ),
      ),
      body: PageView(children: [
        Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Tracking Your Package",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "RowdiesRegular",
                                fontSize: 25),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Please enter your tracking number",
                            style: TextStyle(
                                color: Colors.grey.shade50,
                                fontFamily: "SourceSerif",
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              right: MediaQuery.of(context).size.width * 0.05,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.03),
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Container(
                                  padding: EdgeInsets.only(right: 7),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.amber.shade700,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      "Track",
                                      style: TextStyle(
                                          fontFamily: "RobotoMedium",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Enter Tracking Number",
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontFamily: "SourceSerif"),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ])),
              Container(
                //alignment: Alignment.centerLeft,
                //decoration: BoxDecoration(color: Colors.red),
                //margin: EdgeInsets.only(top: 5),
                height: MediaQuery.of(context).size.height * 0.23,
                //width: MediaQuery.of(context).size.width * 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.9,
                      //width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(left: 10),
                      //padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage("assets/Banners1.png"),
                        ),
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage("assets/Banners2.png"),
                        ),
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage("assets/Banners3.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "What service are you looking for?",
                  style: TextStyle(
                      fontFamily: "RowdiesLight",
                      fontSize: 21,
                      color: Colors.green.shade600
                      //fontWeight: FontWeight.w500
                      ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 15),
                alignment: Alignment.center,
                child: Text(
                  "Please Select Our Services",
                  style: TextStyle(
                      fontFamily: "RubikRegular",
                      fontSize: 15,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 0),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Image(
                              image: AssetImage("assets/MyPackage.png"),
                              width: 100,
                            ),
                            Text(
                              "My Package",
                              style: TextStyle(
                                  fontFamily: "RowdiesRegular",
                                  color: Colors.green.shade600),
                            ),
                            
                          ]),
                        ),
                      ),
                       Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 0),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Image(
                              image: AssetImage("assets/AddPackage.png"),
                              width: 100,
                            ),
                            Text(
                              "Add Package",
                              style: TextStyle(
                                  fontFamily: "RowdiesRegular",
                                  color: Colors.green.shade600),
                            ),
                            
                          ]),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 0),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Image(
                              image: AssetImage("assets/CustomerService.png"),
                              width: 100,
                            ),
                            Text(
                              "Customer Service",
                              style: TextStyle(
                                  fontFamily: "RowdiesRegular",
                                  color: Colors.green.shade600),
                            ),
                            
                          ]),
                        ),
                      ),
                       Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 0),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Image(
                              image: AssetImage("assets/ShippingCost.png"),
                              width: 100,
                            ),
                            Text(
                              "Shipping Cost",
                              style: TextStyle(
                                  fontFamily: "RowdiesRegular",
                                  color: Colors.green.shade600),
                            ),
                            
                          ]),
                        ),
                      )
                    ],
                  )
                ],
              )
            ]),
      ]),
    );
  }
}
