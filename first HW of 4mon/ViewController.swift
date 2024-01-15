//
//  ViewController.swift
//  first HW of 4mon
//
//  Created by Rahilya Nazaralieva on 13/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var mainImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "1")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.font = UIFont(name: "Roboto-Bold", size: 35)
        view.font = .systemFont(ofSize: 35, weight: .bold)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signLabel: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = UIFont(name: "Roboto-Bold", size: 20)
        view.font = .systemFont(ofSize: 20, weight: .regular)
        view.textColor = .white.withAlphaComponent(0.6)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var emailLabel: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.font = UIFont(name: "Roboto-Bold", size: 12)
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var forEmailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "erp1253@gmail.com"
        view.font = UIFont(name: "Roboto-Bold", size: 16)
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.font = UIFont(name: "Roboto-Bold", size: 12)
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "1234656789"
        view.font = UIFont(name: "Roboto-Bold", size: 13)
        view.font = .systemFont(ofSize: 13, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var borderDownView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var eyesButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(named: "2"), for: .normal)
        view.addTarget(self, action: #selector(eyesButtonTapped(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Forgot Password?", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        view.setTitleColor(.systemBlue, for: .normal)
        view.addTarget(self, action: #selector(forgotPasswordButtonTapped(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var checkBoxOutline: UIButton = {
        let view = UIButton(type: .system)
        let checkmarkImage = UIImage(systemName: "square")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        view.setImage(checkmarkImage, for: .normal)
        
        let fillImage = UIImage(systemName: "checkmark.square.fill")
        view.setImage(checkmarkImage, for: .normal)
        view.setImage(fillImage, for: .selected)
        view.addTarget(self, action: #selector(rememberMeButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var checkBoxLabel: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signInButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .blue
        view.layer.cornerRadius = 15
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var downFirstLabel: UILabel = {
        let view = UILabel()
        view.text = "Don’t have an Account?"
        view.font = UIFont(name: "Roboto-Bold", size: 13)
        view.font = .systemFont(ofSize: 13, weight: .regular)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var downSecondLabelButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        view.setTitleColor(.systemBlue, for: .normal)
        view.addTarget(self, action: #selector(signUpButtonTapped(sender:)), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
  
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#4AC6E9, #047494")
        
        
        view.addSubview(mainImage)
        mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0).isActive = true
        mainImage.heightAnchor.constraint(equalToConstant: 256).isActive = true
        
        

        
        view.addSubview(welcomeLabel)
        welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        welcomeLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        view.addSubview(signLabel)
        signLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 7).isActive = true
        signLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        signLabel.widthAnchor.constraint(equalToConstant: 226).isActive = true
        
        view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 280).isActive = true
        mainView.widthAnchor.constraint(equalToConstant: 395).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: 475).isActive = true
        
        mainView.addSubview(emailLabel)
        emailLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 43).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 193).isActive = true
        
        mainView.addSubview(forEmailTextField)
        forEmailTextField.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 25).isActive = true
        forEmailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        forEmailTextField.widthAnchor.constraint(equalToConstant: 149).isActive = true
        
        mainView.addSubview(borderView)
        borderView.topAnchor.constraint(equalTo: forEmailTextField.topAnchor, constant: 40).isActive = true
        borderView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        borderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        borderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        
        mainView.addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 25).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 283).isActive = true
        
        mainView.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: 25).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 263).isActive = true
        
        mainView.addSubview(borderDownView)
        borderDownView.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 40).isActive = true
        borderDownView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        borderDownView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        borderDownView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        
        mainView.addSubview(eyesButton)
        eyesButton.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 50).isActive = true
        eyesButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 312).isActive = true
        eyesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        eyesButton.heightAnchor.constraint(equalToConstant: 13).isActive = true
        
        mainView.addSubview(forgotPasswordButton)
        forgotPasswordButton.topAnchor.constraint(equalTo: borderDownView.topAnchor, constant: 5).isActive = true
        forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 233).isActive = true
        forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 22).isActive = true
      
        mainView.addSubview(checkBoxOutline)
        checkBoxOutline.topAnchor.constraint(equalTo: forgotPasswordButton.topAnchor, constant: 41).isActive = true
        checkBoxOutline.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        checkBoxOutline.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -330).isActive = true
        checkBoxOutline.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        mainView.addSubview(checkBoxLabel)
        checkBoxLabel.topAnchor.constraint(equalTo: forgotPasswordButton.topAnchor, constant: 41).isActive = true
        checkBoxLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        checkBoxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 182).isActive = true

        mainView.addSubview(signInButton)
        signInButton.topAnchor.constraint(equalTo: checkBoxLabel.topAnchor, constant: 50).isActive = true
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: 168).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

        mainView.addSubview(downFirstLabel)
        downFirstLabel.topAnchor.constraint(equalTo: signInButton.topAnchor, constant: 80).isActive = true
        downFirstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        downFirstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 170).isActive = true
        
        mainView.addSubview(downSecondLabelButton)
        downSecondLabelButton.topAnchor.constraint(equalTo: signInButton.topAnchor, constant: 74).isActive = true
        downSecondLabelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120).isActive = true
        downSecondLabelButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
    }
    
    @objc private func eyesButtonTapped(sender: UIButton) {
    }
    @objc private func forgotPasswordButtonTapped(sender: UIButton) {
    }
    @objc private func rememberMeButtonTapped() {
        checkBoxOutline.isSelected.toggle()
    }
    
    @objc private func signInButtonTapped(sender: UIButton) {
        guard let text = passwordTextField.text, text.count >= 4 else {
            passwordTextField.placeholder = "Пароль должен содержать не менее 4 символов"
            let attributedPlaceholder = NSAttributedString(
                string: "Пароль должен содержать не менее 4 символов",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
            )
            passwordTextField.attributedPlaceholder = attributedPlaceholder
            return
        }
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


    
    @objc private func signUpButtonTapped(sender: UIButton) {
    }
    

}
    

