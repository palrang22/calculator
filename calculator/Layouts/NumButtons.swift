//
//  NumButtons.swift
//  calculator
//
//  Created by 김승희 on 6/10/24.
//

import UIKit

class NumButtons: CalButtons {
    override func configCalButtonLayout() {
        super.configCalButtonLayout()
        self.backgroundColor = .darkGray
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    }
}
