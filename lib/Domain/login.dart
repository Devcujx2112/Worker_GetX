class Login {
  String username;
  String password;

  Login({required this.username, required this.password});
}

class Register extends Login {
  String fullName;

  Register({required super.username, required super.password, required this.fullName});
}