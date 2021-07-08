import 'package:flutter/material.dart';
import 'package:groceri_ui/order.dart';
import 'package:groceri_ui/product.dart';

class BrandCart extends StatelessWidget {
  // const BrandCart({Key? key}) : super(key: key);

  var brandurl;
  BrandCart({this.brandurl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Product()));
      },
      child: Container(
        width: 110,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.orange, width: 2)),
        child: Image.asset(
          brandurl,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
