import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map mapresponse;
  List listresponse;
  
  
  Future fetchData() async {
    http.Response response;
    response = await http.get(
        'https://raw.githubusercontent.com/StreamCo/react-coding-challenge/master/feed/sample.json');
    if (response.statusCode == 200) {
      setState(() {
        mapresponse = json.decode(response.body);
        // String mapstringres= mapresponse.toString();
        listresponse = mapresponse['entries'];
        

      });
    }
  }
  

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    print(listresponse);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('json parsing')),
            body: mapresponse == null
                ? Container()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                                child: Column(
                              children: [
                                
                                // Image.network(listresponse[index]),
                                Text(listresponse[index]['title'].toString()),
                              ],
                            ));
                          },
                          itemCount:
                              listresponse == null ? 0 : listresponse.length,
                        )
                      ],
                    ),
                  )));
  }
}
