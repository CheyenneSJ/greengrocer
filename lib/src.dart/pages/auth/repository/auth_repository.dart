import 'package:greengrocer/src.dart/constants/endpoints.dart';
import 'package:greengrocer/src.dart/pages/auth/repository/auth_errors.dart'
    as authErrors;
import 'package:greengrocer/src.dart/pages/auth/result/auth_result.dart';
import 'package:greengrocer/src.dart/services/http_manager.dart';

import '../../../models/user_model.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future<AuthResult> signIn(
      {required String email, required String password}) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        "email": "emailteste@email.com",
        "password": "senha123",
      },
    );
    if (result['result'] != null) {
      final user = UserModel.fromJson(result['result']);
      return AuthResult.success(user);
    } else {
      return AuthResult.error(authErrors.authErrorsString(result['error']));
    }
  }
}
