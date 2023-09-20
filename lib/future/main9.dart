import 'dart:convert';

void main() {
  String jsonStr = ''' 
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
  },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
}
    ''';

  // 파싱 기술 1 - Map 변환
  Map<String, dynamic> jsonMap = json.decode(jsonStr);

  User user = User.fromJson(jsonMap);
  print('${user.id}');
  print('${user.name}');
  print('${user.username}');
  print('${user.email}');
  print('${user.address.street}');
  print('${user.address.suite}');
  print('${user.address.city}');
  print('${user.address.zipcode}');
  print('${user.address.geo.lat}');
  print('${user.address.geo.lng}');
  print('${user.phone}');
  print('${user.website}');
  print('${user.company.name}');
  print('${user.company.catchPhrase}');
  print('${user.company.bs}');
}

// 파싱 기술 2 - 클래스 설계 User, Address, Geo, Company
class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  Company company;
  String phone;
  String website;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        address = Address.fromJson(json['address']),
        company = Company.fromJson(json['company']),
        phone = json['phone'],
        website = json['website'];
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = Geo.fromJson(json['geo']);
}

class Geo {
  String lat;
  String lng;

  Geo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'];
}