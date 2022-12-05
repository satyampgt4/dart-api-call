import 'dart:html';

void main() {
  const data =
      '{\n  \"Param1\": \"value1\",\n  \"Param2\": \"value2\",\n  \"Param3\": \"value3\"\n}';
  var request = new HttpRequest();
  request.withCredentials = true;

  request.open(
      'GET', 'https://api.msg91.com/api/v5/otp?template_id=&mobile=&authkey=');
  request.setRequestHeader('Content-Type', 'application/JSON');

  request.onLoad.listen(
      (event) => print('Request complete ${event.target?.reponseText}'));
  request.send(data);
}
