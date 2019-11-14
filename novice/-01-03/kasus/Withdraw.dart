import 'ATMMachine.dart';

class Withdraw extends ATMMachine {
  static double withdraw = 0;
  void setWithdraw(double w) {
    withdraw = w;
  }

  static double getWithdraw() {
    return withdraw;
  }
}
