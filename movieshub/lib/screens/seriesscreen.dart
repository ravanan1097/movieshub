import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SeriesScreen extends StatefulWidget {
  static const routename = 'series_screen';
  @override
  _SeriesScreenState createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
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
    return Scaffold(
        appBar: AppBar(title: Text('Series')),
        body: mapresponse == null
            ? Container()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                            child: Column(
                          children: [
                            // Image.network(listresponse[index]),
                            Text(listresponse[index]['title'].toString()),
                            Text(listresponse[index]['releaseYear'].toString())
                          ],
                        ));
                      },
                      itemCount: listresponse == null ? 0 : listresponse.length,
                    )
                  ],
                ),
              ));
  }
}
