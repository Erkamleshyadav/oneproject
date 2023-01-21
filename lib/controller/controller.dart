import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oneproject/model/person.dart';

class Usercontroller {
  static Future getdata() async {
    http.Response url;
    List<Person> users = [];

    var res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (res.statusCode == 200) {
      var data = jsonDecode(res.body.toString());

      for (Map<String, dynamic> mapdata in data) {
        var person = Person.fromJson(mapdata);
        users.add(person);
      }
      return users;
    }
  }
}
