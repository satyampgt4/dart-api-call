import 'dart:html';

void main() {
  
  
  const val1 ="hi";
  const val2 ="9789798";
  const val3 ="979879";
  
  var request = new HttpRequest();
  request.withCredentials = true;

  
  request.open(
      'GET', 'https://api.msg91.com/api/v5/otp?template_id=${val1}&mobile=${val2}&authkey=${val2}');
  
  request.setRequestHeader('Content-Type', 'application/JSON');

  request.onLoad.listen(
      (event) => print('Request complete ${event.target}'));
  
    request.send();
}
