import 'package:flutter/material.dart';

void main() {
  runApp(const CineVerseApp());
}

// ------------------------------------------------------------
// MOVIE MODEL
// ------------------------------------------------------------

class Movie {
  final String title;
  final String posterUrl;
  final String genre;
  final int year;
  final double rating;
  final String duration;
  final String language;
  final String shortDescription;
  final String overview;

  const Movie({
    required this.title,
    required this.posterUrl,
    required this.genre,
    required this.year,
    required this.rating,
    required this.duration,
    required this.language,
    required this.shortDescription,
    required this.overview,
  });
}

// ------------------------------------------------------------
// MOVIE DATA
// ------------------------------------------------------------

const List<Movie> movies = [
  Movie(
    title: 'Interstellar',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    duration: '2h 49m',
    language: 'English',
    shortDescription: 'Space • Time • Adventure',
    overview:
        'A group of explorers travel through a mysterious wormhole in space in an attempt to ensure humanity has a future.',
  ),

  Movie(
    title: 'Inception',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg',
    genre: 'Thriller',
    year: 2010,
    rating: 8.8,
    duration: '2h 28m',
    language: 'English',
    shortDescription: 'Dreams • Mystery • Action',
    overview:
        'A skilled thief who steals secrets through dream-sharing technology is given the difficult task of planting an idea into someone’s mind.',
  ),

  Movie(
    title: 'The Dark Knight',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    duration: '2h 32m',
    language: 'English',
    shortDescription: 'Crime • Action • Drama',
    overview:
        'Batman faces a dangerous criminal mastermind who creates chaos across Gotham City while testing the limits of the hero and his allies.',
  ),

  Movie(
    title: 'Avatar',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/kyeqWdyUXW608qlYkRqosgbbJyK.jpg',
    genre: 'Fantasy',
    year: 2009,
    rating: 7.8,
    duration: '2h 42m',
    language: 'English',
    shortDescription: 'Fantasy • Adventure • Sci-Fi',
    overview:
        'A former Marine becomes part of an extraordinary world on another planet and must decide where his loyalty truly belongs.',
  ),

  Movie(
    title: 'The Matrix',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg',
    genre: 'Sci-Fi',
    year: 1999,
    rating: 8.7,
    duration: '2h 16m',
    language: 'English',
    shortDescription: 'Sci-Fi • Action • Mystery',
    overview:
        'A computer programmer discovers that the world he knows is not what it appears to be and joins a rebellion against a powerful artificial system.',
  ),

  Movie(
    title: 'Avengers: Endgame',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg',
    genre: 'Action',
    year: 2019,
    rating: 8.4,
    duration: '3h 1m',
    language: 'English',
    shortDescription: 'Action • Superhero • Adventure',
    overview:
        'After devastating events change the universe, the remaining heroes come together for one final attempt to restore what was lost.',
  ),

  Movie(
    title: 'Joker',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg',
    genre: 'Drama',
    year: 2019,
    rating: 8.4,
    duration: '2h 2m',
    language: 'English',
    shortDescription: 'Drama • Crime • Thriller',
    overview:
        'A troubled man living on the margins of society begins a transformation that changes his life and the city around him.',
  ),

  Movie(
    title: 'Spider-Man',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
    genre: 'Animation',
    year: 2018,
    rating: 8.4,
    duration: '1h 57m',
    language: 'English',
    shortDescription: 'Animation • Action • Adventure',
    overview:
        'A teenager discovers a hidden world of Spider heroes and learns that anyone can become a hero when the moment calls for it.',
  ),

  Movie(
    title: 'Dune',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg',
    genre: 'Sci-Fi',
    year: 2021,
    rating: 8.0,
    duration: '2h 35m',
    language: 'English',
    shortDescription: 'Sci-Fi • Adventure • Drama',
    overview:
        'A young heir travels to a dangerous desert planet and becomes involved in a struggle over its valuable resources and future.',
  ),

  Movie(
    title: 'The Lion King',
    posterUrl:
        'https://image.tmdb.org/t/p/w500/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg',
    genre: 'Animation',
    year: 1994,
    rating: 8.5,
    duration: '1h 28m',
    language: 'English',
    shortDescription: 'Animation • Family • Adventure',
    overview:
        'A young lion must find courage and accept his responsibility after a tragedy changes the course of his life.',
  ),
];

// ------------------------------------------------------------
// APP
// ------------------------------------------------------------

class CineVerseApp extends StatelessWidget {
  const CineVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CineVerse',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F5F3),
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8F4F46),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ------------------------------------------------------------
// HOME SCREEN
// ------------------------------------------------------------

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedGenre = 'All';
  String searchText = '';

  final TextEditingController searchController = TextEditingController();

  List<Movie> get filteredMovies {
    return movies.where((movie) {
      final matchesGenre =
          selectedGenre == 'All' || movie.genre == selectedGenre;

      final matchesSearch =
          movie.title.toLowerCase().contains(searchText.toLowerCase());

      return matchesGenre && matchesSearch;
    }).toList();
  }

  void openMovie(Movie movie) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MovieDetailScreen(movie: movie),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final genres = [
      'All',
      'Action',
      'Sci-Fi',
      'Thriller',
      'Drama',
      'Fantasy',
      'Animation',
    ];

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // ------------------------------------------------
            // HEADER
            // ------------------------------------------------

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 10),
                child: Row(
                  children: [
                    Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2B1319),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.movie_creation_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),

                    const SizedBox(width: 12),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CineVerse',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF2B1319),
                            ),
                          ),
                          Text(
                            'Discover your next movie',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF68708B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border_rounded,
                          color: Color(0xFF2B1319),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ------------------------------------------------
            // SEARCH BAR
            // ------------------------------------------------

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Search for a movie...',
                      hintStyle: TextStyle(
                        color: Color(0xFF9BA0B0),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF8F4F46),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ------------------------------------------------
            // FEATURED MOVIE
            // ------------------------------------------------

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: () => openMovie(movies[0]),
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: DecorationImage(
                        image: NetworkImage(movies[0].posterUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.15),
                            Colors.black.withValues(alpha: 0.9),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFA75B51),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'FEATURED',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),

                          const SizedBox(height: 9),

                          const Text(
                            'Interstellar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            '2014  •  Sci-Fi  •  2h 49m',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ------------------------------------------------
            // SECTION TITLE
            // ------------------------------------------------

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 14),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Browse Movies',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF2B1319),
                        ),
                      ),
                    ),

                    Text(
                      '${filteredMovies.length} movies',
                      style: const TextStyle(
                        color: Color(0xFF68708B),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ------------------------------------------------
            // GENRE FILTERS
            // ------------------------------------------------

            SliverToBoxAdapter(
              child: SizedBox(
                height: 45,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: genres.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(width: 9),
                  itemBuilder: (context, index) {
                    final genre = genres[index];
                    final selected = selectedGenre == genre;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGenre = genre;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 11,
                        ),
                        decoration: BoxDecoration(
                          color: selected
                              ? const Color(0xFF2B1319)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          genre,
                          style: TextStyle(
                            color: selected
                                ? Colors.white
                                : const Color(0xFF68708B),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // ------------------------------------------------
            // MOVIE GRID
            // ------------------------------------------------

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
              sliver: SliverLayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.crossAxisExtent;

                  final columns = width > 900
                      ? 5
                      : width > 650
                          ? 4
                          : 2;

                  return SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final movie = filteredMovies[index];

                        return MovieCard(
                          movie: movie,
                          onTap: () => openMovie(movie),
                        );
                      },
                      childCount: filteredMovies.length,
                    ),
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 22,
                      childAspectRatio: 0.58,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// MOVIE CARD
// ------------------------------------------------------------

class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  const MovieCard({
    super.key,
    required this.movie,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    movie.posterUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) {
                      return Container(
                        color: const Color(0xFFE5E2E1),
                        child: const Icon(
                          Icons.movie_outlined,
                          size: 40,
                        ),
                      );
                    },
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;

                      return Container(
                        color: const Color(0xFFE5E2E1),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),

                  // Rating
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.75),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFD166),
                            size: 14,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            movie.rating.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: Color(0xFF2B1319),
            ),
          ),

          const SizedBox(height: 4),

          Text(
            '${movie.year}  •  ${movie.genre}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF68708B),
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// DETAIL SCREEN
// ------------------------------------------------------------

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F3),
      body: CustomScrollView(
        slivers: [
          // ------------------------------------------------
          // LARGE MOVIE IMAGE
          // ------------------------------------------------

          SliverAppBar(
            expandedHeight: 420,
            pinned: true,
            backgroundColor: const Color(0xFF2B1319),
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.45),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    movie.posterUrl,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.15),
                          Colors.black.withValues(alpha: 0.25),
                          Colors.black.withValues(alpha: 0.9),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Color(0xFFFFD166),
                              size: 20,
                            ),

                            const SizedBox(width: 5),

                            Text(
                              movie.rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(width: 15),

                            Text(
                              '${movie.year}  •  ${movie.genre}',
                              style: const TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ------------------------------------------------
          // DETAIL CONTENT
          // ------------------------------------------------

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Information badges
                  Row(
                    children: [
                      Expanded(
                        child: InfoBox(
                          icon: Icons.access_time_rounded,
                          label: 'Duration',
                          value: movie.duration,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: InfoBox(
                          icon: Icons.language_rounded,
                          label: 'Language',
                          value: movie.language,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Expanded(
                        child: InfoBox(
                          icon: Icons.category_outlined,
                          label: 'Genre',
                          value: movie.genre,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'About the movie',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF2B1319),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    movie.overview,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.7,
                      color: Color(0xFF68708B),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Movie information card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      children: [
                        DetailRow(
                          title: 'Movie',
                          value: movie.title,
                        ),
                        DetailRow(
                          title: 'Release Year',
                          value: movie.year.toString(),
                        ),
                        DetailRow(
                          title: 'Rating',
                          value: '${movie.rating} / 10',
                        ),
                        DetailRow(
                          title: 'Duration',
                          value: movie.duration,
                        ),
                        DetailRow(
                          title: 'Language',
                          value: movie.language,
                          last: true,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // Watch button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: const Text(
                        'Start Exploring',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2B1319),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// INFO BOX
// ------------------------------------------------------------

class InfoBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoBox({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: const Color(0xFFA75B51),
            size: 21,
          ),

          const SizedBox(height: 7),

          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFF68708B),
            ),
          ),

          const SizedBox(height: 3),

          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2B1319),
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// DETAIL ROW
// ------------------------------------------------------------

class DetailRow extends StatelessWidget {
  final String title;
  final String value;
  final bool last;
  const DetailRow({
    super.key,
    required this.title,
    required this.value,
    this.last = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: BoxDecoration(
        border: last
            ? null
            : const Border(
                bottom: BorderSide(
                  color: Color(0xFFEDE9E8),
                ),
              ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF68708B),
              fontSize: 13,
            ),
          ),

          const Spacer(),

          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF2B1319),
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}