import 'package:flutter/material.dart';
import 'package:learning_app/utils/routes.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool changeButton = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "User Name"),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                  // isLoading = true;
                });

                await Future.delayed(Duration(seconds: 4));

                Navigator.pushNamed(context, MyRoutes.homeRoute);
                // setState(() {
                //   isLoading = false;
                // });
              },
              // child: Container(
              // height: 50,
              // width: 150,
              // color: isLoading ? Colors.white : Colors.deepPurple,
              // alignment: Alignment.center,
              // child: isLoading
              //     ? CircularProgressIndicator(
              //         color: Colors.deepPurple,
              //         strokeWidth: 4.0,
              //         semanticsLabel: "Loading",
              //       )
              //     : Text(
              //         'LogIn',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 18,
              //             fontWeight: FontWeight.bold),
              //       ),

              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.deepPurple,
                        size: 32.0,
                      )
                    : Text(
                        "LogIn",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                decoration: BoxDecoration(
                    color: changeButton ? Colors.white : Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
              ),
            ),

            // ElevatedButton(
            //     child: Text('LogIn'),
            //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.homeRoute);
            //     }),
          ],
        ),
      ),
    );
  }
}
