import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

// 별도의 프로퍼티로 선언하기
  final _blackColor = const Color.fromRGBO(31, 33, 35, 1);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      // container 내 item이 overflowe 등 할 때의 조치를 지시
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        // 만일 isInverted가 true라면? (?) 색깔 흰색, 이외에는(:) 검정색.
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: isInverted ? _blackColor : Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        fontSize: 20,
                        color: isInverted ? _blackColor : Colors.white,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      code,
                      style: TextStyle(
                        fontSize: 16,
                        color: isInverted
                            ? _blackColor
                            : Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(width: 50),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(
                  -5,
                  12,
                ),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 80,
                  // weight: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
