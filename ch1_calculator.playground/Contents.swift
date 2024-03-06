import UIKit

class Calculator {
    // Todo : 내부 구현하기
    func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Double {
        switch operation {
        case "+": // 더하기
            return Double(firstNumber + secondNumber)
        case "-": // 빼기
            return Double(firstNumber - secondNumber)
        case "/": // 나누기
            return Double(firstNumber) / Double(secondNumber)
        case "*": // 곱하기
            return Double(firstNumber * secondNumber)
        case "%": // 나머지 연산
            return Double(firstNumber % secondNumber)
        default:
            return -1
        }
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

// Todo : calculator 변수를 활용하여 사칙연산을 진행
let addResult = calculator.calculate(operation: "+", firstNumber: 10, secondNumber: 20)
let subtractResult = calculator.calculate(operation: "-", firstNumber: 10, secondNumber: 20)
let multiplyResult = calculator.calculate(operation: "*", firstNumber: 10, secondNumber: 20)
let divideResult = calculator.calculate(operation: "/", firstNumber: 10, secondNumber: 20)
let remainderResult = calculator.calculate(operation: "%", firstNumber: 10, secondNumber: 20)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
