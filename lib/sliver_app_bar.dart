import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: Colors.red),
              ),
              title: Text("SilverAppBar"),
            ),
            SliverList(
              delegate: SliverChildListDelegate(List.generate(50, (index) {
                return Card(
                  child: ListTile(title: Text("Row $index")),
                );
              })),
            )
          ],
        ));
  }
}
