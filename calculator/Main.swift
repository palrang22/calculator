//
//  Main.swift
//  calculator
//
//  Created by 김승희 on 6/10/24.
//

import UIKit
import SwiftUI

class Main: UIViewController {
    
    var showLabel = UILabel()
    let CalCollectionView : UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return cv
    }()
    let buttonTitles: [[String]] = [
            ["AC", "+/-", "%", "/"],
            ["7", "8", "9", "*"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "+"],
            ["", "0", ".", "="]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        CalCollectionView.dataSource = self
        CalCollectionView.delegate = self
        configCollectionView()

    }
    
    func configCollectionView() {
        view.addSubview(CalCollectionView)
        
        CalCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        CalCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        CalCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        CalCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        CalCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        
        CalCollectionView.backgroundColor = .clear
        
        CalCollectionView.register(CalCollectionViewCell.self, forCellWithReuseIdentifier: "calCell")
    }
}

extension Main: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return buttonTitles.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buttonTitles[section].count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CalCollectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalCollectionViewCell
        let title = buttonTitles[indexPath.section][indexPath.item]
        cell.configButton(with: title, displayLabel: showLabel, calculator: Calculator())
        return cell
    }
    
    
}

extension Main: UICollectionViewDelegate {
    
}

extension Main: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width - 60) / 4, height: (view.frame.width - 60) / 4 )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5 , left: 5, bottom: 5, right: 5)
    }
}


// Canvas 설정
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = Main

    func makeUIViewController(context: Context) -> Main {
        return Main()
    }

    func updateUIViewController(_ uiViewController: Main, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
