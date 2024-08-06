import 'dart:math';

class Waiter {
  static const Duration _normalMaxWaitTime = Duration(milliseconds: 1000);
  static const Duration _normalMinWaitTime = Duration(milliseconds: 500);

  static const Duration _lognMaxWaitTime = Duration(milliseconds: 2000);
  static const Duration _longMinWaitTime = Duration(milliseconds: 3500);

  static Future<void> waitNormalRandomTime() async {
    final diff = Waiter._normalMaxWaitTime.inMicroseconds -
        Waiter._normalMinWaitTime.inMicroseconds;
    final waitDiff =
        Waiter._normalMinWaitTime.inMicroseconds + Random().nextInt(diff);
    await Future.delayed(Duration(microseconds: waitDiff), () {});
  }

  static Future<void> waitLongRandomTime() async {
    final diff = Waiter._lognMaxWaitTime.inMicroseconds -
        Waiter._longMinWaitTime.inMicroseconds;
    final waitDiff =
        Waiter._longMinWaitTime.inMicroseconds + Random().nextInt(diff);
    await Future.delayed(Duration(microseconds: waitDiff), () {});
  }
}
