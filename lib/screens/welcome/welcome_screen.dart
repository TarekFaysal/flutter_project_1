import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (EmailValidator.validate(value)) {
                      return null;
                    } else {
                      return "Please enter a valid email";
                    }
                  },
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                      hintText: "example@email.com", labelText: "Email *"),
                ),
                TextFormField(
                  obscureText: showPassword,
                  validator: (value) {
                    if (value.length > 6) {
                      return null;
                    } else {
                      return "password must be a minimum of 6 characters";
                    }
                  },
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showPassword == true) {
                              showPassword = false;
                            } else {
                              showPassword = true;
                            }
                          });
                        },
                        icon: showPassword
                            ? Icon(Icons.face)
                            : Icon(Icons.favorite),
                      ),
                      labelStyle: TextStyle(),
                      hintText: "******",
                      labelText: "Password *"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter first name";
                    }
                  },
                  controller: firstNameTextEditingController,
                  decoration: InputDecoration(
                      hintText: "first name", labelText: "first name *"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter last name";
                    }
                  },
                  controller: lastNameTextEditingController,
                  decoration: InputDecoration(
                      hintText: "last name", labelText: "last name *"),
                ),
                TextFormField(
                  validator: (value) {
                    // print(value.length);
                    if (value.length == 11) {
                      return null;
                    } else {
                      return "Phone Number must be 11 numbers";
                    }
                  },
                  controller: phoneNumberTextEditingController,
                  decoration: InputDecoration(
                      hintText: "Phone Number", labelText: "Phone Number *"),
                ),
                TextFormField(
                  controller: descriptionTextEditingController,
                  decoration: InputDecoration(
                      hintText: "Description", labelText: "Description"),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  String email = emailTextEditingController.text;
                  String password = passwordTextEditingController.text;
                  String phone = phoneNumberTextEditingController.text;
                  print(email);
                  print(password);
                  print(phone);
                }
              },
              child: Text("Sign Up")),
        ],
      ),
    ));
  }
}
