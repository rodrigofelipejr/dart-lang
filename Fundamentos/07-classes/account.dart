import 'dart:math';

class Account {
  String name = 'Rodrigo';
  int numberAccount = Random().nextInt(1000 + 1);
  double balance = 0;

  double consultBalance() => this.balance;

  void deposit(double value) {
    this.balance = this.balance + value;
    print('Deposit: $value - Balance: ${this.balance}');
  }

  void withdraw(double value) {
    this.balance = this.balance - value;
    print('Withdraw: $value - -Balance: ${this.balance}');
  }

  double discount(int absences) => (absences > 1)
      ? 0.8
      : (absences == 1)
          ? 0.9
          : 0;

  void calculateSalary(double salary, double bonus, int absences) {
    var calculatedSalary = this.balance = (salary * discount(absences)) + bonus;
    print('Salary: $calculatedSalary - Bônus: $bonus - Faltas: $absences');
  }
}
