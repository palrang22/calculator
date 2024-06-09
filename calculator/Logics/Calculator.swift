//
//  Calculator.swift
//  calculator
//
//  Created by 김승희 on 6/7/24.
//

import Foundation

class Calculator {
    
    var evaluation: AbstractOperation?
    
    init() {
        self.evaluation = nil
    }
    
    func evaluate(op: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch op {
        case "+":
            evaluation = AddOperation()
        case "-":
            evaluation = SubstractOperation()
        case "*":
            evaluation = MultiplyOperation()
        case "/":
            evaluation = DivideOperation()
        default:
            0
        }
        guard let evaluation = evaluation else {
            fatalError("값을 넣으세요")
        }
        
        return evaluation.eval(firstNum: firstNumber, secondNum: secondNumber)
    }
}
