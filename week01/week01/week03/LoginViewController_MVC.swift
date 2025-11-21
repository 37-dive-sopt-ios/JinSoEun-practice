//
//  LoginViewController_MVC.swift
//  week01
//
//  Created by 진소은 on 11/1/25.
//

import UIKit
import SnapKit

class LoginViewController_MVC: UIViewController {
    
    // MARK: - Properties
    
    private let rootView = LoginView()

    // MARK: - Life Cycle
    
    public override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private Methods
    
    private func setAddTarget() {
        rootView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }
    
    private func pushToWelcomeVC() {
        let welcomeVC = WelcomeViewController()
        welcomeVC.setID(name: rootView.idTextField.text)
        self.navigationController?.pushViewController(welcomeVC, animated: true)
    }
    
    // MARK: Actions
    
    @objc
    private func loginButtonDidTap() {
        pushToWelcomeVC()
    }
}


#Preview {
    LoginViewController_SnapKit()
}
