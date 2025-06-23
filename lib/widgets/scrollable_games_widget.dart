import 'package:flutter/material.dart';
import '../data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double _height;
  final double _width;
  // ignore: unused_field
  final bool _showTitle;

  final List<Game> _gamesData;

  ScrollableGamesWidget(
    this._gamesData,
    this._height,
    this._showTitle,
    this._width,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children:
            _gamesData.map((game) {
              return Container(
                height: _height,
                width: _width * 0.30,
                padding: EdgeInsets.only(right: _width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: _height * 0.80,
                      width: _width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(game.coverImage.url),
                        ),
                      ),
                    ),
                    Text(
                      game.title,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _height * 0.08,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
