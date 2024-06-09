//
//  ViewController.swift
//  calculator
//
//  Created by 김승희 on 6/7/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func configButton() {
        var numButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .lightGray
            button.layer.cornerRadius = 40
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        view.addSubview(numButton)
    }

    var numButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 40
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController

    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
