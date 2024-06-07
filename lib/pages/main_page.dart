import 'package:flutter/material.dart';
import 'package:trending_movies/data/movies.dart';
import 'package:trending_movies/pages/detail_page.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({Key? key, required this.title}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _searchBoolean = false;
  List<int> _searchIndexList = [];
  final List<String> _listMovies =
      trendingMoviesList.map((titles) => titles.title).toList();

  Widget _searchTextField() {
    return TextField(
      onChanged: (String s) {
        setState(() {
          _searchIndexList = [];
          for (int i = 0; i < _listMovies.length; i++) {
            if (_listMovies[i].toLowerCase().contains(s.toLowerCase())) {
              _searchIndexList.add(i);
            }
          }
        });
      },
      autofocus: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _searchGridView() {
    return GridView.builder(
        itemCount: _searchIndexList.length,
        itemBuilder: (context, searchIndex) {
          final int movieIndex = _searchIndexList[searchIndex];
          final TrendingMovies movies = trendingMoviesList[movieIndex];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(movies: movies);
              }));
            },
            child: Card(
              color: Colors.grey[800],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.asset(
                    movies.imagePoster,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      movies.title,
                      style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                    child: Text(
                      movies.year,
                      style:
                          const TextStyle(fontSize: 9.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(5, (index) {
                          return Icon(
                            index < movies.rating
                                ? Icons.star
                                : Icons.star_border,
                            size: 10,
                            color: Colors.amber,
                          );
                        }),
                      ))
                ],
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ));
  }

  Widget _defaultGridView() {
    return GridView.builder(
        itemCount: _listMovies.length,
        itemBuilder: (context, index) {
          final TrendingMovies movies = trendingMoviesList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(movies: movies);
              }));
            },
            child: Card(
              color: Colors.grey[800],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.asset(
                    movies.imagePoster,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      movies.title,
                      style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                    child: Text(
                      movies.year,
                      style:
                          const TextStyle(fontSize: 9.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(5, (index) {
                          return Icon(
                            index < movies.rating
                                ? Icons.star
                                : Icons.star_border,
                            size: 10,
                            color: Colors.amber,
                          );
                        }),
                      ))
                ],
              ),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: !_searchBoolean ? Text(widget.title) : _searchTextField(),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.orange),
            backgroundColor: Colors.black,
            actions: !_searchBoolean
                ? [
                    IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            _searchBoolean = true;
                            _searchIndexList = [];
                          });
                        })
                  ]
                : [
                    IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchBoolean = false;
                          });
                        })
                  ]),
        backgroundColor: Colors.black,
        body: !_searchBoolean ? _defaultGridView() : _searchGridView());
  }
}
