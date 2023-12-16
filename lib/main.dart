import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// run App은 arguments로 widget을 받는다.
class App extends StatelessWidget {
  const App({super.key});
// 위젯이 되기 위해서는 3가지 위젯 중 하나를 이어받아야 한다.그 중 하나가
//staelesswidget. 그리고 이 경우 build 메서드를 구성해야 한다.(implement) (상속)
// build method는 UI를 스크린에 띄워준다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // materialapp or cupertinoapp - depends on what style do you want.
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          // custom color 사용 시에는 Colors가 아니라 Color()로 한다.
          // 또는 Color.fromRGBO를 사용할 수 도있다. (red, green, blue, opacity)
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // padding: const EdgeInsets.all(20),
            // padding: const EdgeInsets.only(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Harry',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            // 줄 동일한 내용 복사 : option + shift + down arrow
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(241, 179, 58, 1),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      // container : html의 div와 흡사하다.
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
