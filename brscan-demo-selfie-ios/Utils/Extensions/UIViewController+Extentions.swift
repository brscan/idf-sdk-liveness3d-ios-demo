//
//  UIViewController+Extentions.swift
//  mlKitFirebase
//
//  Created by Alan Soares on 18/08/21.
//

import UIKit

fileprivate var avView: UIView?

extension UIViewController {
    func showSpinner() {
        let label = UILabel()
        label.text = "Espere só um pouquinho"
        label.textColor = .white
        
        avView = UIView(frame: self.view.bounds)
//        avView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        avView?.backgroundColor = .azulBackground
        
        let ai = UIActivityIndicatorView(style: .whiteLarge)
        ai.center = avView!.center
        ai.startAnimating()
        avView?.addSubview(ai)
        self.view.addSubview(avView!)
        
        avView?.addSubview(label)
        label.centerX(inView: avView!)
        label.anchor(top: ai.bottomAnchor, paddingTop: 20)
        
    }
    
     func removeSpinner() {
        avView?.removeFromSuperview()
        avView = nil
    }
}
