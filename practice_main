/*
import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

import 'package:toonflix/widgets/currency_card.dart';
import 'widgets/button.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  //StatelessWidget 클래스를 상속받음 - build 메소드 구현해야함, build 메소드를 통해 UI를 출력함
  // 그저 UI를 보여주는 역할만 함
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // build 메소드
    return MaterialApp(
      // Widget을 return 해야함
      home: Scaffold(
        // Scaffold는 화면구조 여기에 작성한 것을 화면에 띄워줌
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          // SingleChildScrollView : 화면 스크롤하기
          child: Padding(
            // padding widget : 공간에 여백을 주는 것, 어느 면이나 모든 면에 여백을 추가할 수 있다.
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Cloumn에서 crossAxis는 수평(가로)축
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // Row에서 mainAxis는 수평(가로)축
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2133),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '55 622',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  order: 2,
                ),
                const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.monetization_on_outlined,
                  isInverted: false,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

/*
// StatefuulWidget
void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // State: 우리가 UI를 구축하는 곳
  // 내가 State의 데이터를 바꿀 때 UI는 새로고침되면서 최신 데이터를 보여줌

  int counter = 0; // final이 아니다!!!

  void onClicked() {
    // 버튼 클릭시 데이터 변경 함수

    // setState는 State 클래스에게 데이터가 변경되었다고 알리는 함수(꼭 필요함)
    // setState 함수를 호출하지 않으면 아래에 있는 build 메소드는 실행되지 않는다.
    // 기본적으로 build 메소드를 새로운 데이터와 함께 다시 한번 더 호출한다.
    setState(() {
      counter = counter + 1; // setState 함수 안에서 데이터를 변경해야한다.
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*
// 데이터를 State에 저장하기
void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*
// BuildContext
void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  // StatefulWidget은 life cycle을 가지고 있다.(이것을 widget life cycle이라고 부른다!)
  // 다른 지점에서 실행되는 많은 메소드가 있지만, 중요한 것은 initState, dispose, build이다.
  // build는 우리의 Widget에서 UI를 만들고, initState는 build이전에 호출되는 메소드이다.
  // initState에서 우리는 변수를 초기화하고 API업데이트를 구독할 수 있게 해준다. 그 다음 build메소드 실행
  // 우이의 위젯이 위젯 트리에서 제거될 때는 dispose메소드가 실행된다.
  // dispose 메소드 안에서 이벤트 리스너 같은 것들을 구독 취소하는 것이다.
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // 상태를 초기화하기 위한 메소드
    // 항상 build 메소드보다 먼저 호출됨
    // InitState 메소드는 오직 단 한 번만 호출됨
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    // dispose는 위젯이 스크린에서 제거될 때 호출되는 메소드
    // 위젯이 위젯 트리에서 제거되기 전에 무언가를 취소하고 싶을 때 사용함
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    // context : Text 이전에 있는 모든 상위 요소들에 대한 정보 (위젯 트리에 대한 정보)
    // 여기서 context는 MyLargeTitle의 부모 요소들의 모든 정보를 담고 있다.
    // 매우 먼 요소의 데이터를 가져올 수 있기 때문에 유용함(즉 부모요소에 접근할 수 있게 해줌)
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge!
            .color, // 어떤 변수가 null인지 검사하기 위해 !연산자 필요, ?도 가능하다.
      ),
    );
  }
}
*/

/*
// 타이머 앱 만들기
import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
*/



