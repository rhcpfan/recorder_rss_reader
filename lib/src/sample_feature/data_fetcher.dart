import 'package:http/http.dart' as http;

class DataFetcher {
  Future<String> fetchRssFeed() async {
    var rssFeed = await http.get(Uri.parse("https://recorder.ro/feed"));
    return rssFeed.body;
  }
}
