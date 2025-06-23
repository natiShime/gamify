import 'package:flutter/material.dart';
import '../data.dart';
import '../widgets/scrollable_games_widget.dart';

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
  var _selectedGame = 0;
  @override
  void initState() {
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featuredGameWidget(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _featuredGameWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.50,
      width: _devicewidth,
      child: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedGame = index;
          });
        },
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

  Widget _gradientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight! * 0.80,
        width: _devicewidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(35, 45, 59, 1), Colors.transparent],
            stops: [0.65, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _devicewidth! * 0.05,
        vertical: _deviceHeight! * 0.005,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBarwidget(),
          SizedBox(height: _deviceHeight! * 0.15),
          _featuredGamesInfoWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceHeight! * 0.01),
            child: ScrollableGamesWidget(
              games,
              _deviceHeight! * 0.24,
              true,
              _devicewidth!,
            ),
          ),
          _featuredGamebannerWidget(),
          ScrollableGamesWidget(
            games2,
            _deviceHeight! * 0.2,
            false,
            _devicewidth!,
          ),
        ],
      ),
    );
  }

  Widget _topBarwidget() {
    return SizedBox(
      height: _deviceHeight! * 0.13,
      width: _devicewidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.menu, color: Colors.white, size: 30),
          Row(
            children: <Widget>[
              Icon(Icons.search, color: Colors.white, size: 30),
              SizedBox(width: _devicewidth! * 0.03),
              Icon(Icons.notifications, color: Colors.white, size: 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget _featuredGamesInfoWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.12,
      width: _devicewidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            featuredGames[_selectedGame].title,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: _deviceHeight! * 0.043,
            ),
          ),
          SizedBox(height: _deviceHeight! * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,

            children:
                featuredGames.map((game) {
                  bool isActive =
                      game.title == featuredGames[_selectedGame].title;
                  double circleRadius = _deviceHeight! * 0.004;
                  return Container(
                    margin: EdgeInsets.only(right: _devicewidth! * 0.015),
                    height: circleRadius * 2,
                    width: circleRadius * 2,
                    decoration: BoxDecoration(
                      color: isActive ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _featuredGamebannerWidget() {
    return Container(
      height: _deviceHeight! * 0.13,
      width: _devicewidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(featuredGames[3].coverImage.url),
        ),
      ),
    );
  }
}
