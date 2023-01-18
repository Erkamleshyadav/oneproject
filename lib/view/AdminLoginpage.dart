import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneproject/view/admindashboard.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Invalid credential';
                }
                if (value.length < 5) {
                  return 'Atleast 5 character';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green.shade50,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.greenAccent,
                ),
                labelText: 'Login Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password';
                  }
                  if (value.length < 5) {
                    return 'Atleat 5 character';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade50,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    prefixIcon: Icon(
                      Icons.password_rounded,
                      color: Colors.greenAccent,
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))))),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an Account? ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                Text(
                  'SignUp ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(AdminDeskpanel());
                    } else {
                      print('not validated');
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 60,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
