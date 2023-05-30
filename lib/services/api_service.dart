
import 'package:dio/dio.dart';
import 'package:netflix_projet_flutter/services/api.dart';

class APIService {
  final API api = API();
  final Dio dio = Dio();

  Future<Response> getData(String path, {Map<String, dynamic>? params}) async {

    // on construit ici l'url que je vais appelé
    String url = api.baseURL + path;

    //on construit les paramentres de la requet
    //tous ces paramètres seront présent dans chaque requetes
    Map<String, dynamic> query = {
      'api_key': api.apiKey,
      'language': 'fr-FR',
    };

    //si params n'est pas nul alors je rajoute du contenue d'URL a query
    if (params != null) {
      query.addAll(params);
    }

    //ici je fais l'app
    final response = await dio.get( url, queryParameters: query);
    
    //on controle que la requet c'est bien passé.
    if (response.statusCode == 200) {
      return response;
    //sinon on renvoie une erreur.
    } else {
      throw response;
    }
  }
}