//dans ce fichier je déclare mes variable avec mes URL direct.

import 'package:netflix_projet_flutter/services/api_key.dart';

class API {
  final String apiKey = APIKey.apikey;
  final String baseURL = 'https://api.themoviedb.org/3';
  final String baseImageURL = 'https://image.tmdb.org/t/p/w500/';
  final String baseVideoURL = 'https://www.youtube.com/watch?v=';
}