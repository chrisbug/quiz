import './person.dart';

void countUpNumbers(int number) {
  for(int i = 0; i < number; i++) {
    print('hello ${i + 1}');
  }
}

void addNumbers(int num1, int num2) {
  int sum = num1 + num2;
  print(sum);
}
void main() {
  addNumbers(5, 7);
  var person = new Person(name:'Chris', age:26);
  print(person.name);
}