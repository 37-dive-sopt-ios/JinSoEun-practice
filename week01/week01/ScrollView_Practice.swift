//
//  ScrollView_Practice.swift
//  week01
//
//  Created by 진소은 on 10/18/25.
//

import Foundation
import UIKit

class ScrollView_Practice: UIViewController {

    
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    private let redView = UIView()
    private let orangeView = UIView()
    private let yellowView = UIView()
    private let greenView = UIView()
    private let blueView = UIView()
    private let purpleView = UIView()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setLayout()
    }
    
    private func setUI() {
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        purpleView.backgroundColor = .purple
    }

    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            // 이게모게
            $0.height.greaterThanOrEqualToSuperview().priority(.low) // contentView의 height가 scrollView의 height보다 크거나 같도록 설정합니다. 우선순위는 낮습니다.
        }
        
        redView.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
            $0.width.equalTo(200)
            $0.height.equalTo(300)
        }
        
        orangeView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalTo(redView.snp.trailing)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(300)
        }
        
        yellowView.snp.makeConstraints {
            $0.top.equalTo(redView.snp.bottom)
            $0.horizontalEdges.equalTo(redView)
            $0.height.equalTo(300)
        }
        
        greenView.snp.makeConstraints {
            $0.top.equalTo(orangeView.snp.bottom)
            $0.horizontalEdges.equalTo(orangeView)
            $0.height.equalTo(300)
        }
        
        blueView.snp.makeConstraints {
            $0.top.equalTo(yellowView.snp.bottom)
            $0.horizontalEdges.equalTo(yellowView)
            $0.height.equalTo(300)
            $0.bottom.equalTo(contentView)

        }
        
        purpleView.snp.makeConstraints {
            $0.top.equalTo(greenView.snp.bottom)
            $0.horizontalEdges.equalTo(greenView)
            $0.height.equalTo(300)
            $0.bottom.equalTo(contentView)
        }
    }
}


#Preview {
    ScrollView_Practice()
}
