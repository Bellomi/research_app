class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            'Escola uma senha mais forte.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Email inválido.');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure('Email já cadastrado.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'Operação não permitida. Contate o suporte.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'Este usuário foi desabilitado. Contate o suporte.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
