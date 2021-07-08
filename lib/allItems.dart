import 'package:flutter/material.dart';
import 'package:groceri_ui/itemCart.dart';

class AllItem extends StatelessWidget {
  // const AllBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Items",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
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
          ),
        ),
      ),
    );
  }
}
