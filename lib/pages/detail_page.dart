import 'package:flutter/material.dart';
import 'package:trending_movies/data/movies.dart';

var leftTextStyle =
    const TextStyle(fontWeight: FontWeight.bold, color: Colors.white);

var rightTextStyle =
    const TextStyle(fontWeight: FontWeight.normal, color: Colors.blue);

var leftTextStyleDekstop = const TextStyle(
    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16);
var rightTextStyleDekstop = const TextStyle(
    fontWeight: FontWeight.normal, color: Colors.blue, fontSize: 16);

class DetailPage extends StatelessWidget {
  final TrendingMovies movies;

  const DetailPage({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DekstopDetailPage(movies: movies);
      } else {
        return MobileDetailPage(movies: movies);
      }
    });
  }
}

class DekstopDetailPage extends StatelessWidget {
  final TrendingMovies movies;
  const DekstopDetailPage({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movies.title),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.orange),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              movies.year,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              '•',
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              movies.duration,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 32,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Text(
                              '${movies.rating}/5',
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 600,
                height: 600,
                child: Image.asset(movies.imagePoster)),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[0],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[1],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[2],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Director',
                            style: leftTextStyleDekstop,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            movies.director,
                            style: rightTextStyleDekstop,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Stars',
                            style: leftTextStyleDekstop,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Text(
                            movies.artists,
                            style: rightTextStyleDekstop,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '|',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[900],
                            fontSize: 40),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Storyline',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                movies.synopsis,
                style: const TextStyle(
                    color: Colors.white, wordSpacing: 2.0, fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: SizedBox(
                height: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[0]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[1]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[2]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class MobileDetailPage extends StatelessWidget {
  final TrendingMovies movies;

  const MobileDetailPage({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movies.title),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.orange),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              movies.year,
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              '•',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              movies.duration,
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Text(
                              '${movies.rating}/5',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 300,
                height: 300,
                child: Image.asset(movies.imagePoster)),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[0],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[1],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        child: Card(
                          semanticContainer: true,
                          color: Colors.black,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Center(
                            child: Text(
                              movies.genre[2],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Director',
                            style: leftTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            movies.director,
                            style: rightTextStyle,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Stars',
                            style: leftTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              movies.artists,
                              style: rightTextStyle,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '|',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[900],
                            fontSize: 30),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Storyline',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                movies.synopsis,
                style: const TextStyle(color: Colors.white, wordSpacing: 1.5),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: const Divider(
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[0]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[1]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(movies.imageMovies[2]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
