//
//  UIView+.swift
//  week01
//
//  Created by 진소은 on 10/17/25.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
