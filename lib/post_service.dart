import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostService{

  Future<String> submitPost(String title, String body) async {

    Future<String> postData(String title, String body) async {
      final response = await http.post(
          Uri.parse("https://jsonplaceholder.typicode.com/posts"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"title": title, "body": body}),
          );

      if(response.statusCode==201){
        return "success";
      }else{
       throw Exception("cannot post");
      }
    }
return "success";
  }

}