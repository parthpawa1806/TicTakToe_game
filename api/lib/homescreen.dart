import 'dart:convert';

import 'package:api/models/jsonmodel/jsonmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Jsonmodel> postlist = [];

  Future<List<Jsonmodel>> getPostApi () async {
    final Response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(Response.body.toString());
    if (Response.statusCode == 200) {
      for (Map i in data) {
        postlist.add(Jsonmodel.fromJson(i));
      }
      return postlist;
    }else{
        return postlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app'),
      ),
      body: Column(children: []),
    );
  }
}
