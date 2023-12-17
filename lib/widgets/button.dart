// 단축키 :  st -> stateless widget format이 자동으로 적용된다.
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color txtColor;
// property 정해주고 code action 실행 시 바로 컨스트럭터도 만들어준다.
  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      // container : html의 div와 흡사하다.
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: txtColor,
          ),
        ),
      ),
    );
  }
}
