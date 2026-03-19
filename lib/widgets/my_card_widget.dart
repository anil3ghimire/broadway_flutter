import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
    required this.cardTitle,
    required this.imageURl,
    required this.localImage,
  });
  final String cardTitle;
  final String imageURl;
  final String localImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: kIsWeb ? MediaQuery.sizeOf(context).height : 300,
      width: kIsWeb
          ? MediaQuery.sizeOf(context).width * 0.20
          : MediaQuery.sizeOf(context).width * 0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.amberAccent,
      ),
      child: Column(
        spacing: 12,
        children: [
          Text(cardTitle),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.network(height: 200, imageURl),
          ),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),

            child: Image.asset(height: 60, width: 80, localImage),
          ),
          // MyButtonWidget(title: "Buy", onTap: () {}),
        ],
      ),
    );
  }
}
