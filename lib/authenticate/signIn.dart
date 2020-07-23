import 'package:clickbuster_app/goolgeauth/auth.dart';
import 'package:clickbuster_app/input/constant.dart';
import 'package:clickbuster_app/input/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Authservices _auth = Authservices();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String error = '';
  //text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : SafeArea(
            left: true,
            right: true,
            top: true,
            bottom: true,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                backgroundColor: Colors.black,
                elevation: 0.0,
                title: Text(
                  "ClickBusters",
                  style: TextStyle(
                    fontFamily: 'Rim',
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              body: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'Email'),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Password'),
                          validator: (val) => val.length < 6
                              ? 'Enter a Password 6+ chars lenght'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.grey,
                              child: Text(
                                'Sign in',
                                style: TextStyle(color: Colors.black),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() => loading = true);
                                  //print('valid');
                                  dynamic result =
                                      await _auth.signInwithemailandpassword(
                                          email, password);

                                  if (result == null) {
                                    setState(() {
                                      error =
                                          'Please Supply Valid Email and Password';
                                      loading = false;
                                    });
                                  }
                                }
                              },
                            ),
                            Spacer(),
                            RaisedButton(
                              color: Colors.grey,
                              child: Text(
                                'Sign up',
                                style: TextStyle(color: Colors.black),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.blue)),
                              onPressed: () async {
                                widget.toggleView();
                              },
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          );
  }
}
