//
//  WelcomeViewController.swift
//  week01
//
//  Created by 진소은 on 10/18/25.
//

import UIKit

final class WelcomeViewController_Closure: UIViewController {
    
    // MARK: - Properties
    
    var name: String?
    
    var completionHandler: ((String) -> Void)?
    
    // MARK: - Coomponents
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 112, y: 87, width: 150, height: 150))
        imageView.image = UIImage(named: "karrot_logo")
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        label.text = "???님 \n반가워요!"
        label.font = UIFont(name: "Pretendard-ExtraBold", size: 25)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var goHomeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 426, width: self.view.bounds.width - 40, height: 57))
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.layer.cornerRadius = 6
        return button
    }()
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 498, width: self.view.bounds.width - 40, height: 57))
        button.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: false)
        setLayout()
        
        bindID()
    }
    
    // MARK: - Set Layout
    
    private func setLayout() {
        self.view.addSubviews(logoImageView, welcomeLabel, goHomeButton, backToLoginButton)
    }
    
    // MARK: - Custom Methods
    
    @objc
    private func backToLoginButtonDidTap() {
        let nickname: String = name ?? "알 수 없는 사용자"
        
        completionHandler?("\(nickname)님이 다시 로그인 버튼을 눌렀어요!")

        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    private func bindID() {
        self.welcomeLabel.text = "\(name ?? "nil")님 \n반가워요!"
    }
    
    func setID(name: String?) {
        self.name = name
        self.welcomeLabel.text = "\(name ?? "nil")님 \n반가워요!"
    }
}
