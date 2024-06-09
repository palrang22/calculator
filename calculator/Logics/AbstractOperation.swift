//
//  AbstractOperation.swift
//  calculator
//
//  Created by 김승희 on 6/7/24.
//

import Foundation

protocol AbstractOperation {
    func eval(firstNum: Double, secondNum: Double) -> Double
}
