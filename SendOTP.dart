import 'dart:html';

void main() {

  const val1 = "tempid";
  const val2 = "mobileno";
  const val3 = "auth";

  var request = new HttpRequest();
  request.withCredentials = true;

  request.open('GET',
      'https://api.msg91.com/api/v5/otp?template_id=${val1}&mobile=${val2}&tokenAuth=${val3}');

  request.setRequestHeader('Content-Type', 'application/JSON');

  request.onLoad.listen((event) => print('Request complete ${event.target}'));

  request.send();
}
