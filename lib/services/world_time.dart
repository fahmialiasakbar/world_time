import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/atimezone/$url'));
      Map data = jsonDecode(response.body);
      print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      print(offset);

      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time';
    }
  }
}
