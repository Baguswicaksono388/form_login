import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_login/model/user_model.dart';
import 'auth_services.dart';
import 'model/post_model_result.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  PostResult postResult;
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Text(),
            FutureBuilder(
              future: FirebaseAuth.instance.currentUser(),
              builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.email);
                } else {
                  return Text('Loading...');
                }
              },
            ),
            Text((postResult != null)
                ? postResult.id +
                    " | " +
                    postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.created
                : "Tidak ada data"),
            Text((user != null)
                ? user.id + " | " + user.name
                : "User Tidak ada"),
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("Tejo", "TNI").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
            RaisedButton(
              onPressed: () {
                User.connectToAPI("2").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
            RaisedButton(
                child: Text("Sign Out"),
                onPressed: () async {
                  await AuthServices.signOut();
                })
          ],
        ),
      ),
    );
  }
}
