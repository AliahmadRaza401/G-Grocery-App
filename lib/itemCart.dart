import 'package:flutter/material.dart';
import 'package:groceri_ui/product.dart';

class ItemCart extends StatelessWidget {
  // const BrandCart({Key? key}) : super(key: key);
  var itemurl;
  ItemCart({this.itemurl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Product()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.43,
        // margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(itemurl),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.orange, width: 4)),
        // child: Image.asset(
        //   itemurl,
        //   width: 50,
        //   height: 150,
        // ),
        child: SizedBox(
          height: 210,
        ),
      ),
    );
  }
}
