import UIKit

class Calculator {
    let addOp: AbstractOperation = AddOperation()
    let subtractOp: AbstractOperation = SubtractOperation()
    let multiplyOp: AbstractOperation = MultiplyOperation()
    let divideOp: AbstractOperation = DivideOperation()
    let remainderOp: AbstractOperation = RemainderOperation()
    
    // 각 연산을 호출하여 계산
    func add(firstNumber: Double, secondNumber: Double) -> Double {
        return addOp.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func subtract(firstNumber: Double, secondNumber: Double) -> Double {
        return subtractOp.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func multiply(firstNumber: Double, secondNumber: Double) -> Double {
        return multiplyOp.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func divide(firstNumber: Double, secondNumber: Double) -> Double? {
        return divideOp.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    func remainder(firstNumber: Double, secondNumber: Double) -> Double {
        return remainderOp.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return 0.0
    }
}

class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}

class RemainderOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
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

