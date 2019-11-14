import 'ATMMachine.dart';

class BalanceInquiry extends ATMMachine {
  static double balance = 0;
  void setBalance(double b) {
    balance = b;
  }

  static double getBalance() {
    return balance;
  }
}
