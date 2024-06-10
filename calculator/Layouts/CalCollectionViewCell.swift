//
//  CalCollectionViewCell.swift
//  calculator
//
//  Created by 김승희 on 6/10/24.
//

import UIKit

class CalCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "calCell"
    var button: CalButtons?
    
    override init(frame: CGRect) {
        self.button = CalButtons()
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configButton(with title: String, displayLabel: UILabel, calculator: Calculator) {
        
        if ["AC", "+/-", "%"].contains(title) {
            button = EtcButtons(displayLabel: displayLabel, calculator: calculator)
        } else if ["+", "-", "*", "/", "="].contains(title) {
            button = OpButtons(displayLabel: displayLabel, calculator: calculator)
        } else {
            button = NumButtons(displayLabel: displayLabel, calculator: calculator)
        }
        guard let button = button else { return }
        
        button.setTitle(title, for: .normal)
        contentView.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            button.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            button.heightAnchor.constraint(equalTo: contentView.heightAnchor)
        ])
    }
    
}
