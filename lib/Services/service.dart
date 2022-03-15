import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shortly/Models/ShortlyModel.dart';

class ShortLinkService {
  Future<Object> getShortLink(String link) async {
    var url = 'https://api.shrtco.de/v2/shorten?url=' + link;
    var uri = Uri.parse(url);
    ShortlyModel shortLink;
    try {
      var response = await http.get(uri);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 201) {
        print(response.body);
        shortLink = shortlyModelFromJson(response.body);
        if (shortLink.ok) {
          return shortLink.result.shortLink;
        }
        return null;
      }
      return json.decode(response.body)["error"];
    } catch (e) {
      return null;
    }
  }
}
