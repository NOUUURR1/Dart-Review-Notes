void main() {
  //استدعاء الدوال
  print("______________________________");
  printMyStory();
  print("______________________________");
  sumTowNumbers();
  int result = sumTowNumbers();
  print(result);
  print("______________________________");
  int value = calculateTwoNumbers(50, 60);
  print(value);
  print("______________________________");
  print(calcFinalPrice(100, 10));
  print(calcFinalPrice(100, 0));
  print("______________________________");
  print(calculateFinalPrice(price: 50, discount: 5));
  print("______________________________");
}

// Void Function
void printMyStory() {
  print('My name is nour');
  print('I love coding');
}

//Function with return value
int sumTowNumbers() {
  int num1 = 10, num2 = 20;
  int result = num1 + num2;
  return result;
}

//Function With Parameters
int calculateTwoNumbers(int number1, int number2) {
  int value = number1 + number2;
  return value;
}

//Function With Optional Parameters
double calcFinalPrice(double price, [double discount = 0]) {
  double finalPrice = price - price * discount / 100;
  return finalPrice;
}

//Function With Named Parameters
double calculateFinalPrice({required double price,required double discount}) {
  double finalPric = price - price * discount / 100;
  return finalPric;
}
