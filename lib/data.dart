class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  List<GameImage> images = [];
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio);
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
      "https://upload.wikimedia.org/wikipedia/en/9/93/Horizon_Zero_Dawn.jpg",
      "",
    ),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
      "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
      "",
    ),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
      "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
      "",
    ),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
      "https://i.etsystatic.com/12175780/r/il/19fc5a/1532651946/il_1588xN.1532651946_9fb5.jpg",
      "",
    ),
    "",
    "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
      "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
      "",
    ),
    "",
    "Rockstar Games",
  ),
  Game(
    "The Last of Us Part II",
    GameImage(
      "https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png",
      "",
    ),
    "",
    "Naughty Dog",
  ),
  Game(
    "Sekiro: Shadows Die Twice",
    GameImage(
      "https://upload.wikimedia.org/wikipedia/en/6/6e/Sekiro_art.jpg",
      "",
    ),
    "",
    "From Software",
  ),
  Game(
    "Just Cause 4",
    GameImage(
      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQGbXR3wc2KA8vgcdE-n1my2fxQOXu5CurUVx6A5bw0ln342sMD",
      "",
    ),
    "",
    "Avalanche Studios",
  ),
];

List<Game> featuredGames = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
      "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
      "",
    ),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
      "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
      "",
    ),
    "",
    "Infinity Ward",
  ),
  Game(
    "Dragon Ball Z: Kakarot",
    GameImage(
      "https://static.wikia.nocookie.net/dragonball/images/c/c0/DBZ_Kakarot_Box_Art.jpg/revision/latest?cb=20230520144144",
      "",
    ),
    "",
    "CyberConnect2",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
      "https://static.trueachievements.com/customimages/093902.jpg",
      "",
    ),
    "",
    "NetherRealm Studios",
  ),
];
