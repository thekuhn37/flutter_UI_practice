import 'package:flutter/material.dart';
import 'package:toonflis_flutter/widgets/button.dart';
import 'package:toonflis_flutter/widgets/currency_card.dart';
// 자동으로 다른 파일에 있는 클래스를 호출하기 위한 import가 작성된다.

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
          body: SingleChildScrollView(
            // padding을 이 위젯으로 감싸주면 스크롤이 가능
            child: Padding(
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        bgColor: Color.fromRGBO(241, 179, 58, 1),
                        txtColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color.fromRGBO(31, 33, 35, 1),
                        txtColor: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      const CurrencyCard(
                        name: 'Euro',
                        code: 'EUR',
                        amount: '6 824',
                        icon: Icons.euro_symbol,
                        isInverted: false,
                      ),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: const CurrencyCard(
                          name: 'Dollar',
                          code: 'USD',
                          amount: '55 622',
                          icon: Icons.monetization_on_outlined,
                          isInverted: true,
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -40),
                        child: const CurrencyCard(
                          name: 'Won',
                          code: 'KRW',
                          amount: '1 258 433',
                          icon: Icons.euro_symbol,
                          isInverted: false,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
