import 'package:flutter/material.dart';
import 'package:fluttert/route/app_routes.dart';
import 'package:fluttert/widgets/social_media_login_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.blueGrey.withValues(
              alpha: 0.1,
            ), // Shadow color with opacity
          ),
        ],
      ),
      child: Column(
        spacing: 4,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('data')),

          //     Theme.of(context).textTheme.bodyMedium!.copyWith(
          // color: Theme.of(context).colorScheme.onPrimary,
          // ),
          Text(
            'WElCOME TO RATERS',
            style: Theme.of(
              context,
            ).textTheme.displaySmall!.copyWith(color: Colors.amberAccent),
          ),

          Text(
            'Movie lovers Network',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
          SocialMediaLoginButton(
            icon: FontAwesomeIcons.accusoft,
            buttonColor: Colors.blue.withValues(alpha: .5),
            title: "Product",
            onTap: () {
              var productId = "Soup1234";
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ProductScreen(name: 'Anil'),
              //   ),
              // );

              // Navigator.pushNamed(
              //   context,
              //   AppRoute.profile,
              //   arguments: '123Id',
              // );
              context.push(AppRoutes.product, extra: 'true');
            },
          ),
          SocialMediaLoginButton(
            title: 'Facebook',
            icon: FontAwesomeIcons.facebookF,
            buttonColor: Colors.blue,
            onTap: () {},
          ),
          SocialMediaLoginButton(
            title: 'Google',
            icon: FontAwesomeIcons.google,
            buttonColor: Colors.red,
            onTap: () {},
          ),
          SocialMediaLoginButton(
            title: 'Via Email',
            icon: FontAwesomeIcons.gemini,
            buttonColor: Colors.blueGrey.withValues(alpha: 10),
            onTap: () {},
          ),
          Text(
            'Continue as Guest',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),

          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'By registration you agree to ',
              style: TextStyle(color: Colors.black54, fontSize: 12),
              children: [
                TextSpan(
                  text: 'Term of Use',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
