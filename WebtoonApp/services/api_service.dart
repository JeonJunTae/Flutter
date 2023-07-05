import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_modef.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    // http.get은 Future 타입을 반환한다.
    // Future란 당장 완료될 수 있는 작업이 아니라는 것을 말한다. 따라서 이 작업이 끝날 때 까지 기다려야 한다.
    // 가끔씩 코드를 실행하다가 무언가를 기다려야될 때 async/await사용
    // 데이터가 올 때까지 잠깐 멈춰야될 때
    // 비동기 함수로 지정하면 반환값은 무조건 Future이다.

    if (response.statusCode == 200) {
      // Future가 마무리되면 Reponse를 반환하는데 우리는 Response가 성공했는지 확인하자.
      final List<dynamic> webtoons = jsonDecode(response.body);
      // response.body는 String, String을 원래 응답의 포맷인 JSON 형식으로 바꾸자.
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id"); // url 만들기
    final response = await http.get(url); // 해당 url로 request보내기
    if (response.statusCode == 200) {
      //request 성공 여부 확인하기
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon); // json을 constructor로 전달
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodesById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];
    final url = Uri.parse("$baseUrl/$id/episodes"); // url 만들기
    final response = await http.get(url); // 해당 url로 request보내기
    if (response.statusCode == 200) {
      //request 성공 여부 확인하기
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
