import 'package:flutter/material.dart';
import 'package:fluttert/app_theme/app_colors.dart';
import 'package:fluttert/app_theme/app_text_style.dart';
import 'package:fluttert/models/user_model.dart';
import 'package:fluttert/route/app_router.dart';
import 'package:fluttert/route/app_routes.dart';
import 'package:fluttert/widgets/login_card_widget.dart';
import 'package:fluttert/widgets/my_button_widget.dart';
import 'package:fluttert/widgets/my_card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController _emailTextEditingController = TextEditingController();
  String? _name;
  String? _address;
  final _from = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _from,
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              KTextFormField(
                label: 'First',
                hintText: 'First name',
                prefixIcon: Icon(Icons.person_2_rounded),
              ),
              KTextFormField(
                label: 'Middle Name',
                hintText: 'Middle Name',
                prefixIcon: Icon(Icons.ac_unit),
              ),
              TextFormField(
                onSaved: (newValue) {
                  _name = newValue;
                  print('name is $newValue');
                },
                decoration: InputDecoration(
                  hintText: 'Name',
                  suffixStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailTextEditingController,
                onSaved: (newValue) {
                  newValue = _emailTextEditingController.value.text;
                  print('newValue$newValue');
                },
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'please enter email',
                  suffixStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(Icons.email),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  } else if (!value.contains('@')) {
                    return 'Please enter correct email id ';
                  }
                  return null;
                },
              ),

              TextFormField(
                onSaved: (newValue) {
                  _address = newValue;
                  print('Address$_address');
                },

                decoration: InputDecoration(
                  hintText: 'HEllo',
                  suffixStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(Icons.home_filled),
                ),
              ),
              // LoginCardWidget(),
              MyButtonWidget(
                title: 'Press Me',
                onTap: () {
                  if (_from.currentState!.validate()) {
                    _from.currentState!.save();
                    var name = _name;
                    var email = _emailTextEditingController.value.text;
                    var address = _address;
                    print('Final value of form is $name $address $email');
                    UserModel user = UserModel(
                      name: name!,
                      email: email,
                      address: address!,
                    );
                    context.push(AppRoutes.kyc, extra: user);
                  }
                },
              ),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyCardWidget(
                      cardTitle: "This is a card",
                      imageURl:
                          'https://images.pexels.com/photos/1229498/pexels-photo-1229498.jpeg',
                      localImage: 'assets/images/mustang.jpg',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KTextFormField extends StatelessWidget {
  const KTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
  });
  final String label;
  final String hintText;
  final Icon prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        hint: Text(hintText),

        prefixIcon: prefixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
