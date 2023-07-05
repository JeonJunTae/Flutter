import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          // 애니메이션 효과를 이용해서 유저가 다른 페이지로 왔다고 느끼게 해줄 수 있다.
          // 사실은 또 다른 StatelessWidget을 렌더했을 뿐이다.
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true, // 옵션
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            // Hero는 두 화면 사이에 애니메이션을 주는 컴포넌트, 두 화면 모두 Hero를 써야함
            tag: id, // 두 화면 모두 같은 id
            child: Container(
              width: 250,
              clipBehavior:
                  Clip.hardEdge, // clipBehavior는 자식의 부모 영역 침범을 제어하는 방법
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.5),
                    )
                  ]),
              child: Image.network(
                thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
