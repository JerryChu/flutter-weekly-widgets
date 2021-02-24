import 'package:flutter/material.dart';
import 'package:weekly_widgets/base/common_widgets.dart';
import 'package:weekly_widgets/base/utils.dart';

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: FractionColumnWidth(.25),
            1: FractionColumnWidth(.25),
            2: FractionColumnWidth(.5)
          },
          children: [
            TableRow(children: [
              ColoredContainer(
                height: 100,
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                color: Utils.randomColor(),
              )
            ]),
            TableRow(children: [
              ColoredContainer(
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                height: 25,
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                color: Utils.randomColor(),
              )
            ]),
            TableRow(children: [
              ColoredContainer(
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                color: Utils.randomColor(),
              ),
              ColoredContainer(
                height: 100,
                color: Utils.randomColor(),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
