import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'base/common_widgets.dart';

class FutureBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: Center(
        child: FutureBuilder(
          future: http.get("http://placehold.it/200x200"),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return HintText("Future arrived!");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
