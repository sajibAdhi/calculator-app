class CalculatorLogic {
  double firstNumber = 0;
  double secondNumber = 0;
  dynamic firstResult = "";
  dynamic finalResult = "0";
  dynamic operation = "";

  void reset() {
    firstNumber = 0;
    secondNumber = 0;
    firstResult = "";
    finalResult = "0";
    operation = "";
  }

  void add() {
    parseNumber();
    performOperation('+');
  }

  void sub() {
    parseNumber();
    performOperation('-');
  }

  void div() {
    parseNumber();
    performOperation('/');
  }

  void mul() {
    parseNumber();
    performOperation('*');
  }

  void percentage() {
    firstResult = firstResult / 100;
    finalResult = firstResult;
  }

  void negative() {
    firstResult.toString().startsWith('-')
        ? firstResult = firstResult.toString().substring(1)
        : firstResult = '-' + firstResult.toString();

    finalResult = firstResult;
  }

  void decimal() {
    if (!firstResult.toString().contains('.')) {
      firstResult = firstResult.toString() + '.0';
    }
    finalResult = firstResult;
  }

  void execute() {
    if (operation == '+') {
      addCalculation();
    } else if (operation == '-') {
      subCalculation();
    } else if (operation == '/') {
      divCalculation();
    } else if (operation == '*') {
      mulCalculation();
    }
  }

  void setNumber(number) {
    firstResult = number;
    finalResult = firstResult;
  }

  void parseNumber() {
    if (firstNumber == 0) {
      firstNumber = double.parse(firstResult);
    } else {
      secondNumber = double.parse(firstResult);
    }
  }

  void addCalculation() {
    firstResult = (firstNumber + secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  void subCalculation() {
    firstResult = (firstNumber - secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  void divCalculation() {
    firstResult = (firstNumber / secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  void mulCalculation() {
    firstResult = (firstNumber * secondNumber).toString();
    firstNumber = double.parse(firstResult);
    finalResult = firstResult;
  }

  void performOperation(symbol) {
    operation = symbol;
    firstResult = "";
  }
}
