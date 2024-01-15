//
//  SecondViewController.swift
//  first HW of 4mon
//
//  Created by Rahilya Nazaralieva on 14/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var successImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "success2")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
        private func setupUI() {
            view.backgroundColor = UIColor(hex: "#4AC6E9, #047494")

            
            view.addSubview(successImage)
            successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            successImage.heightAnchor.constraint(equalToConstant: 210).isActive = true
            successImage.widthAnchor.constraint(equalToConstant: 180).isActive = true
    }
    



}
