import 'package:flutter/material.dart';
import 'package:fluttert/models/user_model.dart';

class KycScreen extends StatelessWidget {
  const KycScreen({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Name is ${userModel.name}'),
            Text('Email is ${userModel.email}'),
            Text('Address is ${userModel.address}'),
          ],
        ),
      ),
    );
  }
}
