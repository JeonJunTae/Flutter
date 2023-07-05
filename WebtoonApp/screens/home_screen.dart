import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/webtoon_widget.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();
  // FutureBuilder를 사용하려면 Future를 선언해야함

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: FutureBuilder(
        // FutureBuilder : 자기가 기다릴 Future와 builder가 필요
        future: webtoons,
        builder: (context, snapshot) {
          // builder 함수는 context와 snapshot을 전달받음
          if (snapshot.hasData) {
            // snapshot은 Future의 상태
            // 로딩 중인지, 데이터가 있는지, 에러가 났는지를 알 수 있다.
            return Column(
              children: [
                const SizedBox(height: 50),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
            // snapshot안에 데이터가 있음(snapshot은 그냥 이름임)
            // 많은 양의 데이터를 보여줘야 할 때 ListView를 사용하자
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      itemBuilder: (context, index) {
        // itembuilder는 만들어야 하는 item의 index를 받는다.
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
      // item 사이에 구분자를 넣어줌
    );
  }
}


/*
if (snapshot.hasData) {
              // snapshot은 Future의 상태
              // 로딩 중인지, 데이터가 있는지, 에러가 났는지를 알 수 있다.
              return ListView.builder(
                // 좀더 최적화된 ListView
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var webtoon = snapshot.data![index];
                  return Text(webtoon.title);
                },
              );
              // snapshot안에 데이터가 있음(snapshot은 그냥 이름임)
              // 많은 양의 데이터를 보여줘야 할 때 ListView를 사용하자
            }
            */
