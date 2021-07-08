import 'package:flutter/material.dart';
import 'package:groceri_ui/home.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.done_outline,
                color: Colors.green,
                size: 150,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Order Placed Successfull!",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "your order has been placed sucessfull your ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "order ID:45209384023094",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.orange,
                      Color(0xffff9068),
                      Colors.orange
                    ]),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
