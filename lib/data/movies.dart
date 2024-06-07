class TrendingMovies {
  String title;
  String year;
  int rating;
  String duration;
  String synopsis;
  String artists;
  String director;
  List<String> genre;
  String imagePoster;
  List<String> imageMovies;

  TrendingMovies({
    required this.title,
    required this.year,
    required this.rating,
    required this.duration,
    required this.synopsis,
    required this.artists,
    required this.director,
    required this.genre,
    required this.imagePoster,
    required this.imageMovies,
  });
}

List<TrendingMovies> trendingMoviesList = [
  TrendingMovies(
      title: 'Haikyuu!! Dumpster Battle',
      year: '2024',
      rating: 4,
      duration: '1h 25m',
      synopsis:
          'Karasuno High School made it through the Miyagi prefecture preliminaries for the Harutaka Volleyball Tournament, which was crowded with strong teams, and advanced to the third round by defeating Hyogo Prefecture representative Inarizaki High School, which was considered one of the favorites for the championship. Their opponent, Nekoma High School, used to have a rivalry with Karasuno, and although their interactions with each other decreased at one point, after Hinata and the others joined the club, they once again became good friends, working out together at training camps and practice games. The battle is called the "Battle at the Garbage Dump" because of the "crow" and "cat" names in the school\'s name. Their play styles are completely opposite; Karasuno is super offensive, while Nekoma is a defensive team with a motto of "connection." They will finally face their first official match with the current members, and they will engage in a heated match on the stage of the national tournament.',
      artists: 'Ayumu Murase, Kaito Ishkawa, Yuki Kaji',
      director: 'Susumu Mitsunaka',
      genre: ['Animation', 'Comedy', 'Drama'],
      imagePoster: 'images/poster/haikyu.jpeg',
      imageMovies: [
        'images/movies/haikyu_1.jpeg',
        'images/movies/haikyu_2.jpeg',
        'images/movies/haikyu_3.jpeg'
      ]),
  TrendingMovies(
      title: 'Vina: Sebelum 7 Hari',
      year: '2024',
      rating: 3,
      duration: '1h 40m',
      synopsis:
          'The body of the late Vina (Nayla Purnama) which was found on the Cirebon flyover is thought to have been in a single motorbike accident. Vina\'s grandmother (Lydia Kandou) is suspicious because Vina\'s body was unnaturally crushed but doesn\'t have enough evidence to reject the report. Vina possesses the body of her best friend Linda (Gisellma Firmansyah). She only has 7 days before her death to reveal the painful truth. Al Fatihah.',
      artists: 'Nayla Purnama, Lydia Kandou, Yusuf Mahardika,',
      director: 'Anggy Umbara',
      genre: ['Horror', 'Drama', 'Tragedy'],
      imagePoster: 'images/poster/vina.jpeg',
      imageMovies: [
        'images/movies/vina_1.jpeg',
        'images/movies/vina_2.jpeg',
        'images/movies/vina_3.jpeg'
      ]),
  TrendingMovies(
      title: 'Godzilla x Kong: The New Empire',
      year: '2024',
      rating: 5,
      duration: '1h 55m',
      synopsis:
          'The new installment in the Monsterverse puts the mighty Kong and the fearsome Godzilla against a colossal deadly threat hidden within our world that threatens the existence of their species and our very own, as well as diving deep into the mysteries of Skull Island and beyond. Delving straight into the origins of Hollow Earth, this film will explore the ancient Titan battle that brought man and monster together forever.',
      artists: 'Rebecca Hall, Brian Tyree, Dan Stevens',
      director: 'Adam Wingard',
      genre: ['Action', 'Adventure', 'Fantasy'],
      imagePoster: 'images/poster/godzilla.jpg',
      imageMovies: [
        'images/movies/godzilla_1.webp',
        'images/movies/godzilla_2.jpeg',
        'images/movies/godzilla_3.webp'
      ]),
  TrendingMovies(
      title: 'Avatar: The Way of Water',
      year: '2022',
      rating: 5,
      duration: '3h 12m',
      synopsis:
          'Several years after the Na\'vi repelled the RDA invasion Jake Sully and his family are living on Pandora. Things seem peaceful but the RDA has other plans, invading and capturing Pandora. Sully forms a guerrilla group to try to expel the invaders.',
      artists: 'Sam Worthington, Zoe Saldana, Sigourney Weaver',
      director: 'James Cameron',
      genre: ['Action', 'Adventure', 'Fantasy'],
      imagePoster: 'images/poster/avatar.jpeg',
      imageMovies: [
        'images/movies/avatar_1.png',
        'images/movies/avatar_2.jpeg',
        'images/movies/avatar_3.jpeg'
      ]),
  TrendingMovies(
      title: 'The Idea of You',
      year: '2024',
      rating: 2,
      duration: '1h 55m',
      synopsis:
          'Solène (Anne Hathaway), a 40-year-old single mom, begins an unexpected romance with 24-year-old Hayes Campbell (Nicholas Galitzine), the lead singer of August Moon, the hottest boy band on the planet. When Solène must step in to chaperone her teenage daughter\'s trip to the Coachella Music Festival after her ex bails at the last minute, she has a chance encounter with Hayes and there is an instant, undeniable spark. As they begin a whirlwind romance, it isn\'t long before Hayes\' superstar status poses unavoidable challenges to their relationship, and Solène soon discovers that life in the glare of his spotlight might be more than she bargained for.',
      artists: 'Anne Hathaway, Nicholas Galitzine, Ella Rubin',
      director: 'Michael Showalter',
      genre: ['Comedy', 'Drama', 'Romance'],
      imagePoster: 'images/poster/ideaofyou.jpeg',
      imageMovies: [
        'images/movies/ideofyou_1.jpeg',
        'images/movies/ideofyou_2.jpeg',
        'images/movies/ideofyou_3.jpeg'
      ]),
  TrendingMovies(
      title: 'Kingdom of the Planet of the Apes',
      year: '2024',
      rating: 4,
      duration: '2h 25m',
      synopsis:
          'The new Apes movie is set many years after the conclusion of 2017\'s War for the Planet of the Apes. Many apes societies have grown from when the Moses-like Caesar brought his people to an oasis, while humans have been reduced to a feral-like existence. Some ape groups have never heard of Caesar, while others have contorted his teaching to build burgeoning empires. In this setting, one ape leader begins to enslave other groups to find human technology, while another ape, who watched his clan be taken, embarks on a journey to find freedom. A young human woman becomes key to the latter\'s quest, although she has plans of her own.',
      artists: 'Josh Friedman, Rick Jaffa, Amanda Silver',
      director: 'Wes Ball',
      genre: ['Action', 'Adventure', 'Sci-fi'],
      imagePoster: 'images/poster/apes.jpg',
      imageMovies: [
        'images/movies/apes_1.jpeg',
        'images/movies/apes_2.jpeg',
        'images/movies/apes_3.webp'
      ]),
  TrendingMovies(
      title: 'Dune: Part Two',
      year: '2024',
      rating: 3,
      duration: '2h 46m',
      synopsis:
          'Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, he endeavors to prevent a terrible future only he can foresee.',
      artists: 'Timothée Chalamet, Zendaya, Rebecca Ferguson',
      director: 'Denis Villeneuve',
      genre: ['Action', 'Adventure', 'Drama'],
      imagePoster: 'images/poster/dune.jpeg',
      imageMovies: [
        'images/movies/dune_1.webp',
        'images/movies/dune_2.png',
        'images/movies/dune_3.webp'
      ]),
  TrendingMovies(
      title: 'Furiosa: A Mad Max Saga',
      year: '2024',
      rating: 4,
      duration: '2h 28m',
      synopsis:
          'As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.',
      artists: 'Anya Taylor-Joy, Chris Hemsworth, Tom Burke',
      director: 'George Miller',
      genre: ['Action', 'Adventure', 'Sci-Fi'],
      imagePoster: 'images/poster/furiosa.jpeg',
      imageMovies: [
        'images/movies/furiosa_1.jpeg',
        'images/movies/furiosa_2.jpeg',
        'images/movies/furiosa_3.webp'
      ])
];
