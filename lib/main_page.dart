import 'package:flutter/material.dart';
import 'input_barang.dart';
import 'keranjang_page.dart';
import 'profile.dart';

void main() {
  runApp(
    MaterialApp(home: MainPage()),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.list, color: Colors.orange),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0), // Adjust the radius as needed
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              onPressed: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                })),
              },
              icon: Icon(
                Icons.person,
                color: Colors.orange,
            )),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Center(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 72, 243),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ]
                      ),
                      child: Image.asset("assets/images/burger.jpg", width: 50, height: 50,),
                    ),
                  ),
                ),
                Center(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ]
                      ),
                      child: Image.asset("assets/images/sanqua.jpg", width: 50, height: 50,),
                    ),
                  ),
                ),
              ],),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "All food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // Row
          // all menu item widget
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                //single item
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/burger.jpg",
                                height: 130,
                              ),
                            ),
                            Text("Burger", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 23,
                              )
                            ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) {
          if (newIndex == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return KeranjangPage();
            }));
          }
          if (newIndex == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return InputBarang();
            }));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart_rounded),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}