//
//  EtcButtons.swift
//  calculator
//
//  Created by 김승희 on 6/10/24.
//

import UIKit

class EtcButtons: CalButtons {
    override func configCalButtonLayout() {
        super.configCalButtonLayout()
        self.backgroundColor = .lightGray
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    }
}
