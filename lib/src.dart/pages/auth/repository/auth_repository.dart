import 'package:greengrocer/src.dart/constants/endpoints.dart';
import 'package:greengrocer/src.dart/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future signIn({required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        "email": "emailteste@email.com",
        "password": "senha123",
      },
    );
  }
}
