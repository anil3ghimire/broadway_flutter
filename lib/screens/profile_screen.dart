import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('KYC'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 600) {
              return Column(
                children: [FlutterLogo(), Text('This is a Big Screen Device')],
              );
            } else {
              return Column(
                children: [
                  FlutterLogo(),
                  Text('This is a small Screen Device'),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
