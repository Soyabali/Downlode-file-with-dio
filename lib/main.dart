import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                downlodeFile();
              }, child: const Text("delete Data"))
            ],
          ),
        ),
      ),
    );
  }
}
void downlodeFile() async{
  var dio = Dio();
  Directory directory = await getApplicationDocumentsDirectory();
  var response = await dio.download("https://filesamples.com/samples/document/txt/sample1.txt",
      '${directory.path}/file.txt');
  print(response.statusCode);
  print('xxxxxxxxxxxxxx......');
}