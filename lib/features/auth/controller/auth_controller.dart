import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:karmait/features/auth/repository/auth_repository.dart';

// Provider that will allow us to AuthController Class
final authControllerProvider = Provider((ref) => AuthController(authRepository: ref.read(authRepositoryProvider)));

class AuthController {
  final AuthRepository _authRepository;
  AuthController({required AuthRepository authRepository}) : _authRepository = authRepository;

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
