import UIKit

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
    // calculate 함수 정의
    func calculate(operator: String, firstNumber: Double, secondNumber: Double) -> Double? {
        switch `operator` {
        case "+":
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return remainderOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}

class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber + secondNumber)
    }
}

class SubtractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber) / Double(secondNumber)
    }
}

class RemainderOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

// Todo : calculator 변수를 활용하여 사칙연산을 진행
if let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 5) {
    print("addResult : \(addResult)")
}
if let subtractResult = calculator.calculate(operator: "-", firstNumber: 10, secondNumber: 5) {
    print("addResult : \(subtractResult)")
}
if let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 5) {
    print("addResult : \(multiplyResult)")
}
if let divideResult = calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 5) {
    print("addResult : \(divideResult)")
}
if let remainderResult = calculator.calculate(operator: "%", firstNumber: 10, secondNumber: 5) {
    print("addResult : \(remainderResult)")
}
