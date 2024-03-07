import UIKit

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
    
    // 각 연산을 호출하여 계산
    func add(firstNumber: Double, secondNumber: Double) -> Double {
        return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func subtract(firstNumber: Double, secondNumber: Double) -> Double {
        return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func multiply(firstNumber: Double, secondNumber: Double) -> Double {
        return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func divide(firstNumber: Double, secondNumber: Double) -> Double? {
        return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func remainder(firstNumber: Double, secondNumber: Double) -> Double {
            return remainderOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        }
}

class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
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
    func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        guard secondNumber != 0 else { return nil }
        return firstNumber / secondNumber
    }
}

class RemainderOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber.truncatingRemainder(dividingBy: secondNumber)
    }
}


let calculator = Calculator()

// 각 연산 메서드를 호출하여 계산
let addResult = calculator.add(firstNumber: 10, secondNumber: 5)
print("addResult : \(addResult)")

let subtractResult = calculator.subtract(firstNumber: 10, secondNumber: 5)
print("subtractResult : \(subtractResult)")

let multiplyResult = calculator.multiply(firstNumber: 10, secondNumber: 5)
print("multiplyResult : \(multiplyResult)")

if let divideResult = calculator.divide(firstNumber: 10, secondNumber: 5) {
    print("divideResult : \(divideResult)")
}

let remainderResult = calculator.remainder(firstNumber: 10, secondNumber: 15)
print("remainderResult : \(remainderResult)")

