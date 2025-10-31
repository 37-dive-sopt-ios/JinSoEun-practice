//
//  LoginViewController.swift
//  week02
//
//  Created by 진소은 on 10/18/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    let Primary_orange = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1.0)
    
    // MARK: - UI Components
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 70, y: 163, width: 250, height: 50))
        label.text = "동네라서 가능한 모든 것\n당근에서 가까운 이웃과 함께해요."
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        label.textAlignment = .center
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 276, width: self.view.bounds.width - 40, height: 52))
        textField.placeholder = "아이디"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.borderStyle = .none
        textField.backgroundColor = UIColor(red: 222/255, green: 222/255, blue: 222/255, alpha: 1.0)
        textField.layer.cornerRadius = 3
        textField.clearButtonMode = .whileEditing
        textField.addLeftPadding(23)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 335, width: self.view.bounds.width - 40, height: 52))
        textField.placeholder = "비밀번호"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.borderStyle = .none
        textField.isSecureTextEntry = true
        textField.backgroundColor = UIColor(red: 222/255, green: 222/255, blue: 222/255, alpha: 1.0)
        textField.layer.cornerRadius = 3
        textField.clearButtonMode = .whileEditing
        textField.addLeftPadding(23)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 422, width: self.view.bounds.width - 40, height: 57))
        button.setTitle("로그인하기", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.backgroundColor = Primary_orange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setLayout()
    }
    
    // MARK: - UI & Layout
    
    private func setUI() {
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        self.view.addSubviews(titleLabel, idTextField, passwordTextField, loginButton)
    }
    
    private func pushToWelcomeVC() {
        let welcomeVC = WelcomeViewController()
        welcomeVC.setID(name: idTextField.text)
        self.navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    @objc
    private func loginButtonDidTap() {
        pushToWelcomeVC()
    }
}
