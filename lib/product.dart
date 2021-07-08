import 'package:flutter/material.dart';
import 'package:groceri_ui/order.dart';

class Product extends StatelessWidget {
  // const BrandCart({Key? key}) : super(key: key);

  var brandurl, price;
  Product({this.brandurl, this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Products",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Wrap(
            spacing: 15,
            runSpacing: 20,
            children: [
              productItem(context, "assets/p1.jpg", "Rs: 15"),
              productItem(context, "assets/p2.jpg", "Rs: 15"),
              productItem(context, "assets/p3.jpg", "Rs: 15"),
              productItem(context, "assets/p4.jpg", "Rs: 15"),
              productItem(context, "assets/p5.jpg", "Rs: 15"),
              productItem(context, "assets/p6.jpg", "Rs: 15"),
              productItem(context, "assets/p7.jpg", "Rs: 15"),
              productItem(context, "assets/p1.jpg", "Rs: 15"),
              productItem(context, "assets/p2.jpg", "Rs: 15"),
              productItem(context, "assets/p3.jpg", "Rs: 15"),
              productItem(context, "assets/p4.jpg", "Rs: 15"),
              productItem(context, "assets/p5.jpg", "Rs: 15"),
            ],
          ),
        ),
      ),
    );
  }

  Widget productItem(context, var img, var price) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      padding: EdgeInsets.all(10),
      height: 230,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.orange, width: 2)),
      child: Column(
        children: [
          Image.asset(
            img,
            width: 150,
            height: 100,
          ),
          SizedBox(
            height: 30,
          ),
          Text(price),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Order()));
              },
              child: Text(
                "Order",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
