class User {
  String? user;
  String? password;

  void auth() {
    var user = 'fma@gmail.com';
    var password = '12345';

    if (this.user == user && this.password == password) {
      print('Authentication success!\n');
    } else {
      print('Authentication failed!\n');
    }
  }
}
