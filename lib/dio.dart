import 'package:dio/dio.dart';
import 'package:ramdonuser/UserModel.dart';

class ConnectionDio {
  int extend = 17;

  Future Getdata() async {
    List<Results> lista = [];
    final Response response =
        await Dio().get('https://randomuser.me/api/?results=$extend');
    for (var user in response.data['results']) {
      lista.add(Results(
          email: user['email'],
          firstname: user['name']['first'],
          large: user['picture']['large'],
          username: user['login']['username']));
    }
    return lista;
  }
}
