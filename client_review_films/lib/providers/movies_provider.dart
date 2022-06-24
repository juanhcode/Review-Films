import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _baseUrl = 'api.themoviedb.org';
  String _apiKey = '87613a0fe078f1dd287f2db21ed57bb8';
  String _language = 'es-ES';
  //https:///3/movie/now_playing?api_key=87613a0fe078f1dd287f2db21ed57bb8&language=es-ES&page=1

  MoviesProvider() {
    print('MoviesProvider inicializado');
    getOnDisplayMovies();
  }

  //Me trae las peliculas
  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    final response = await http.get(url);
    final decodeData = json.decode(response.body) as Map<String, dynamic>;
    print(decodeData);
    print('GetOnDisplayMovies');
  }
}
