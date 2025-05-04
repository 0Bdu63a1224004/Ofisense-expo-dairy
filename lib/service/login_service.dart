import 'package:http/http.dart' as http;
class LoginService{
  var _response;
  _sendDataToAPI(String _email, String _pass) async {
    var response = await http.post(Uri.parse(
        'https://www.foreliustech.co.in/chair/api/login.php?email=$_email&pass=$_pass'));
    print(response.statusCode);
    print(_email);
    print(_pass);
    if (response.statusCode == 200) {
      (() {
        print('hai');
        _response = response.body;
      });
    } else {
      (() {
        _response = 'Error: ${response.statusCode}';
      });
    }
  }
}