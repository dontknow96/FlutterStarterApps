import 'dart:math';

class Waiter {
  static const Duration _someMaxWaitTime = Duration(milliseconds: 1000);
  static const Duration _someMinWaitTime = Duration(milliseconds: 500);

  static Future<void> waitRandomTime() async {
    final diff = Waiter._someMaxWaitTime.inMicroseconds -
        Waiter._someMinWaitTime.inMicroseconds;
    final waitDiff =
        Waiter._someMinWaitTime.inMicroseconds + Random().nextInt(diff);
    await Future.delayed(Duration(microseconds: waitDiff), () {});
  }
}
