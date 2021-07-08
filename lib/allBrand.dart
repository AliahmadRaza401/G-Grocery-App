import 'package:flutter/material.dart';
import 'package:groceri_ui/brandCart.dart';

class AllBrand extends StatelessWidget {
  // const AllBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Brands",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Wrap(
              spacing: 30,
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
        ),
      ),
    );
  }
}
