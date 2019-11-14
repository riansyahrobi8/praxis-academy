import 'dart:io';

import 'Deposit.dart';
import 'Withdraw.dart';
import 'BalanceInquiry.dart';
import 'ATMMachine.dart';

void main() {
  int select = 0;
  int choice = 0;

  print("===========================================================");
  print("\tWelcome to this simple ATM Machine");
  print("===========================================================");
  print("");

  do {
    try {
      do {
        print("\tPlease select ATM Transactions");
        print("\tPress [1] Deposit");
        print("\tPress [2] Withdraw");
        print("\tPress [3] Balance Inquiry");
        print("\tPress [4] Exit");

        print("\n\tWhat would you like to do ? ");
        select = int.parse(stdin.readLineSync());

        if (select > 4) {
          print("\n\tPlease select correct transactions.");
        } else {
          switch (select) {
            case 1:
              print("\n\tEnter the amount of money to deposit");
              Deposit.deposit = double.parse(stdin.readLineSync());
              BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
              ATMMachine.depositMoney();
              break;

            case 2:
              print(
                  "\n\tTo withdraw, make sure that you have sufficient balance in your account.");
              print("");
              print("\tEnter amount of money to withdraw.");
              Withdraw.withdraw = double.parse(stdin.readLineSync());
              ATMMachine.withdrawMoney();
              break;

            case 3:
              ATMMachine.checkBalance();
              break;

            default:
              print("\n\tTransaction exited");
          }
        }
      } while (select > 4);

      do {
        try {
          print("\n\tWould you like to try another transaction ? ");
          print("\n\tPress [1] Yes \n\tPress [2] No ");
          print("\tEnter choice : ");
          choice = int.parse(stdin.readLineSync());

          if (choice > 2) {
            print("\n\tPlease select correct choice.");
          }
        } catch (e) {
          print("\tError Input! Please enter a number only.");
          print("\tEnter your choice: ");
          select = int.parse(stdin.readLineSync());
        }
      } while (choice > 2);
    } catch (e) {
      print("\tError Input! Please enter a number only.");
      print("\tEnter your choice: ");
      select = int.parse(stdin.readLineSync());
    }
  } while (choice <= 1);
  print("\n\tThank you for using this simple ATM Machine");
}
