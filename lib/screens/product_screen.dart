import 'package:flutter/material.dart';
import 'package:fluttert/screens/home_screen.dart';
import 'package:fluttert/widgets/my_drawer_widget.dart' show MyDrawer;

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int totalValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            Text('This is 32 fonts', style: TextStyle(fontSize: 32)),
            Text('This is 14 fonts', style: TextStyle(fontSize: 14)),

            Center(child: Text('My sum is ${totalValue}')),

            ElevatedButton(
              onPressed: () {
                increment();
              },
              child: Text('Increment'),
            ),

            ElevatedButton(
              onPressed: () {
                decrement();
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      totalValue++;
    });
  }

  void decrement() {
    setState(() {
      totalValue--;
    });
  }
}
