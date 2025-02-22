import 'dart:convert';

void main(List<String> args) {
  var jsonData = [
  {"userId": 1, "id": 1, "title": "Example Title", "body": "Example Body"},
  {"userId": 2, "id": 2, "title": "Another Title", "body": "Another Body"}
];
String jsonString = jsonData.toString();
print(jsonString);
var jsondecode_value=jsonDecode(jsonString);
print(jsondecode_value);
}



