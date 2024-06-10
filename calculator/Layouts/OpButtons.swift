//
//  OpButtons.swift
//  calculator
//
//  Created by 김승희 on 6/10/24.
//

import UIKit

class OpButtons: CalButtons {
    override func configCalButtonLayout() {
        super.configCalButtonLayout()
        self.backgroundColor = .orange
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    }
}
