import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultra_app/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isEmailValid = true;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Supervisor',
          ),
        ),
        body: Container(
          child: StatefulBuilder(builder: (context, StateSetter setState) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: Container(
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.greenAccent,
                              height: MediaQuery.of(context).size.height * 0.30,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Theme.of(context).primaryColor,
                                      radius: 40,
                                      child: Icon(
                                        Icons.book,
                                        size: 50,
                                      ),
                                    ),
                                    Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    TextField(
                                      controller: emailController,
                                      autocorrect: true,
                                      decoration: InputDecoration(
                                        errorText: !isEmailValid ? 'Wrong Email' : null,
                                        hintText: 'Enter your student ID',
                                        hintStyle: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Theme.of(context).primaryColor,
                                            width: 3,
                                          ),
                                        ),
                                        prefixIcon: IconTheme(
                                          data: IconThemeData(
                                            color: Theme.of(context).primaryColor,
                                          ),
                                          child: Icon(Icons.email),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    TextField(
                                      controller: passwordController,
                                      autocorrect: true,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: 'Enter your password',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Theme.of(context).primaryColor,
                                            width: 3,
                                          ),
                                        ),
                                        prefixIcon: IconTheme(
                                          data: IconThemeData(
                                            color: Theme.of(context).primaryColor,
                                          ),
                                          child: Icon(Icons.lock),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      child: Center(
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(emailController.text)) {
                                                isEmailValid = true;
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                              } else {
                                                isEmailValid = false;
                                              }
                                            });
                                          },
                                          padding: EdgeInsets.all(16),
                                          color: Theme.of(context).primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              const Text(
                                                'LOGIN',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
