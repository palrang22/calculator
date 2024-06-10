//
//  CalButtons.swift
//  calculator
//
//  Created by 김승희 on 6/7/24.
//

import UIKit

class CalButtons: UIButton {
    
    var displayLabel: UILabel?
    var calculator: Calculator?
    var firstNumber: Double?
    var secondNumber: Double?
    var currentOperator: String?
    
    //상속받는 클래스의 생성자 호출
    override init(frame: CGRect) {
        super.init(frame: frame)
        configCalButtonLayout()
    }
    
    //필수생성자 호출 - 원래는 자동상속되지만, 지정생성자가 있는 경우 선언해줘야 함.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // CalButtons 클래스의 생성자
    init(displayLabel: UILabel, calculator: Calculator) {
        self.displayLabel = displayLabel
        self.calculator = calculator
        super.init(frame: .zero)
        configCalButtonLayout()
    }
    
    func configCalButtonLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside) //addTarget 함수: 버튼이 눌렸을 때 buttonTapped() 함수 호출
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.width / 2 // 반값을 주면 원으로 그려짐
    }
    
    // @IBAction 대신 @objc로 tap action 구현
    @objc func buttonTapped() {
        
    }
}
