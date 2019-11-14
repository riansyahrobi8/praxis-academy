import 'BalanceInquiry.dart';
import 'Withdraw.dart';
import 'Deposit.dart';

class ATMMachine {
  static void checkBalance() {
    print(
        "\tYour current balance is " + BalanceInquiry.getBalance().toString());
  }

  static void withdrawMoney() {
    if (BalanceInquiry.balance == 0) {
      print("====================================");
      print("\tYour current balance is zero.");
      print("\tYou cannot withdraw!");
      print("\tYou need to deposit money first");
      print("====================================");
    } else if (BalanceInquiry.balance <= 500) {
      print("====================================");
      print("\tYou do not have sufficient money to withdraw");
      print("\tChecked your balance to see your money in the bank");
      print("====================================");
    } else if (Withdraw.withdraw > BalanceInquiry.balance) {
      print("====================================");
      print("\tThe amount you withdraw is greater than to your balance");
      print("\tPlease check the amount you entered");
      print("====================================");
    } else {
      BalanceInquiry.balance = BalanceInquiry.balance - Withdraw.withdraw;
      print(
          "\n\tYou withdraw the amount of php " + Withdraw.withdraw.toString());
    }
  }

  static void depositMoney() {
    print("\tYou deposited the amount of " + Deposit.getDeposit.toString());
  }
}
