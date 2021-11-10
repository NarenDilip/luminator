import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:luminator/src/constants/const.dart';
import 'package:luminator/src/models/loginrequester.dart';
import 'package:luminator/src/tb/storage/storage.dart';
import 'package:luminator/src/ui/components/rounded_button.dart';
import 'package:luminator/src/ui/components/rounded_input_field.dart';
import 'package:luminator/src/ui/listview/region_list_screen.dart';
import 'package:luminator/src/ui/login/login_thingsboard.dart';
import 'package:luminator/src/utils/utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return login_screenState();
  }
}

class login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginForm());
  }
}

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  late SharedPreferences logindata;
  final user = LoginRequester(
      username: "",
      password: "",
      token: "",
      refreshtoken: "",
      responseCode: 0,
      email: "");
  late final TbStorage storage;
  TextEditingController passwordController = TextEditingController(text: "");
  final TextEditingController _emailController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
          height: size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/background_img.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(
                      image: AssetImage("assets/icons/logo.png"),
                      height: 75,
                      width: 75),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "LOG IN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  rounded_input_field(
                    hintText: user_email,
                    isObscure: false,
                    controller: _emailController,
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Please enter the email";
                      } else if (!EmailValidator.validate(email)) {
                        return "Please enter the validate email";
                      }
                    },
                    onSaved: (email) => user.username = email!,
                    onChanged: (String value) {},
                  ),
                  SizedBox(height: size.height * 0.02),
                  rounded_input_field(
                    hintText: user_password,
                    isObscure: true,
                    onSaved: (value) => user.password = value!,
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the password";
                      }
                    },
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  rounded_button(
                    text: sign_in,
                    color: purpleColor,
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        FocusScope.of(context).requestFocus(FocusNode());
                        _loginAPI(context);
                      }
                    },
                    key: null,
                  ),
                ],
              ))),
    );
  }

  Future<void> _loginAPI(BuildContext context) async {
    // storage = TbSecureStorage();
    Utility.isConnected().then((value) async {
      if (value) {
        Utility.progressDialog(context);

        if ((user.username.isNotEmpty) && (user.password.isNotEmpty)) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('username', user.username);
          var status = await login_thingsboard.callThingsboardLogin(
              context, user.username, user.password);
          if (status == true) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => region_list_screen()));
          }
        } else {
          Navigator.pop(context);
          Fluttertoast.showToast(
              msg: "Please check Username and Password, Invalid Credentials",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: 16.0);
        }
      }
    });
  }
}
