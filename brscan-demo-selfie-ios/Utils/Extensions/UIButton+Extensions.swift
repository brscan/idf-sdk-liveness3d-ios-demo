//
//  UIButton+Extensions.swift
//  mlKitFirebase
//
//  Created by Alan Soares on 20/08/21.
//

import UIKit

extension UIButton {
    
    static func botaoCustomizado(title: String, textColor: UIColor, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 18)
        button.setHeight(40)
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.backgroundColor = backgroundColor
        return button
    }
}
