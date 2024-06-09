//
//  CalButtons.swift
//  calculator
//
//  Created by 김승희 on 6/7/24.
//

import UIKit

class CalButtons: UIButton {
    
    //상속받는 클래스의 생성자 호출
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    //필수생성자 호출 - 원래는 자동상속되지만, 지정생성자가 있는 경우 선언해줘야 함.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // CalButtons 클래스의 생성자
    init() {
        super.init(frame: .zero)
    }
    
    func configCalButtonLayout() {
        self.layer.cornerRadius = self.frame.width / 2 //width, height의 반값을 주면 원으로 그려짐
        
    }
}
