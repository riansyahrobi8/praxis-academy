import 'ATMMachine.dart';

class Deposit extends ATMMachine {
  static double deposit;
  void setDeposit(double d) {
    deposit = d;
  }

  static double getDeposit() {
    return deposit;
  }
}
