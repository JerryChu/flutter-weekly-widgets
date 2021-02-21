import 'package:flutter/material.dart';

import 'animated_container.dart';
import 'fade_transition.dart';
import 'future_builder.dart';
import 'opacity.dart';
import 'expanded.dart';
import 'floating_action_button.dart';
import 'safe_area.dart';
import 'wrap.dart';

void main() {
  runApp(Expo());
}

final Map<String, WidgetBuilder> routes = {
  "SafeArea": (context) => SafeAreaDemo(),
  "Expanded": (context) => ExpandedDemo(),
  "Wrap": (context) => WrapDemo(),
  "AnimatedContainer": (context) => AnimatedContainerDemo(),
  "Opacity": (context) => OpacityDemo(),
  "FutureBuilder": (context) => FutureBuilderDemo(),
  "FadeTransition": (context) => FadeTransitionDemo(),
  "FloatingActionButton": (context) => FloatingActionButtonDemo(),
};

// Demo for Flutter Weekly Widgets
// https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG
class Expo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "Weekly Widgets";
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: title),
      routes: routes,
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  final List<String> routeKeys = routes.keys.toList()..sort();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemCount: routeKeys.length,
        itemBuilder: (BuildContext context, int index) {
          final routeKey = routeKeys[index];
          return ListTile(
              title: Text(routeKey),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: routes[routeKey]));
              });
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1),
      ),
    );
  }
}
