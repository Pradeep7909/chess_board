import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChessBoardController controller = ChessBoardController();
  var chesscolor = BoardColor.orange;
  void setorange() {
    setState(() {
      chesscolor = BoardColor.orange;
    });
  }

  void setgreen() {
    setState(() {
      chesscolor = BoardColor.green;
    });
  }

  void setbrown() {
    setState(() {
      chesscolor = BoardColor.brown;
    });
  }

  void setdarkbrown() {
    setState(() {
      chesscolor = BoardColor.darkBrown;
    });
  }

  String step = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.backspace,
                                  color: Colors.black,
                                ),
                              ),
                              const Text("Chess Board Color"),
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setorange();
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      "Orange",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setgreen();
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      "Blue",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.lightBlue,
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setbrown();
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      "Brown",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.brown,
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setdarkbrown();
                                },
                                child: Row(
                                  children: const [
                                    Text(
                                      "Dark Brown",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Colors.blueGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.menu),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: ChessBoard(
                  controller: controller,
                  boardColor: chesscolor,
                  arrows: const [],
                  boardOrientation: PlayerColor.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("..."),
            ),
            
          ],
        ),
      ),
    );
  }
}
