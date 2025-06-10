import 'package:flutter/material.dart';
import '../data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double? _deviceHeight;
  double? _devicewidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(body: Stack(children: <Widget>[_featuredGameWidget()]));
  }

  Widget _featuredGameWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.50,
      width: _devicewidth,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children:
            featuredGames.map((game) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(game.coverImage.url),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
