import 'package:get/get.dart';
import 'package:movie/app/data/movie_models.dart';

class MovieService extends GetConnect {
  Future<List<dynamic>> fetchMovie() async {
    final response = await get(
        'https://api.themoviedb.org/3/discover/movie?api_key=e020b4926367bed54b0932937c78afd1');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }
}
