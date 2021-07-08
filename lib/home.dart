import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groceri_ui/allBrand.dart';
import 'package:groceri_ui/allItems.dart';
import 'package:groceri_ui/brandCart.dart';
import 'package:groceri_ui/homeSlider.dart';
import 'package:groceri_ui/itemCart.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "G Grocery",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // action button
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  color: Colors.orange,
                  child: TextField(
                    decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Describe Your Issue...",
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SliderHome(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Select Brand",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AllBrand()));
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BrandCart(brandurl: "assets/l1.png"),
                      BrandCart(brandurl: "assets/l2.png"),
                      BrandCart(brandurl: "assets/l3.png"),
                      BrandCart(brandurl: "assets/l4.png"),
                      BrandCart(brandurl: "assets/l5.png"),
                      BrandCart(brandurl: "assets/l6.png"),
                      BrandCart(brandurl: "assets/l7.png"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Select Item",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AllItem()));
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ItemCart(
                      itemurl: "assets/i1.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i2.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i3.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i4.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i5.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i6.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i7.jpg",
                    ),
                    ItemCart(
                      itemurl: "assets/i3.jpg",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  // margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/b1.jpg"),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.orange, width: 4)),
                  // child: Image.asset(
                  //   itemurl,
                  //   width: 50,
                  //   height: 150,
                  // ),
                  child: SizedBox(
                    height: 170,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  // margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/b2.jpg"),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.orange, width: 4)),
                  // child: Image.asset(
                  //   itemurl,
                  //   width: 50,
                  //   height: 150,
                  // ),
                  child: SizedBox(
                    height: 170,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  // margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/b3.png"),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.orange, width: 4)),
                  // child: Image.asset(
                  //   itemurl,
                  //   width: 50,
                  //   height: 150,
                  // ),
                  child: SizedBox(
                    height: 170,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
