//
//  InicialViewController.swift
//  brscan-demo-documento-ios
//
//  Created by C93514A on 01/04/22.
//

import UIKit
import CoreLocation
import serasa_idf_liveness3d_ios

class InicialViewController: UIViewController{
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    var response: String

    
    private let botaoChamarLiveness3d: UIButton = .botaoCustomizado(title: "Facial biometrics", textColor: .grey6, backgroundColor: .primary)

    
    
    init(retorno: String = "") {
        self.response = retorno
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    func configureUI(){
        response != "" ? print("RESPONSE: \(response)") : nil
        
        
        botaoChamarLiveness3d.addTarget(self, action: #selector(ChamarLiveness3d), for: .touchUpInside)
        view.backgroundColor = .white
        
        view.addSubview(botaoChamarLiveness3d)
        botaoChamarLiveness3d.centerX(inView: view)
        botaoChamarLiveness3d.centerY(inView: view)
        botaoChamarLiveness3d.anchor(left: view.leftAnchor, right: view.rightAnchor, paddingLeft: 24, paddingRight: 24)

        
    }
    
    
    @objc func ChamarLiveness3d(){
        let controller = CapturarViewController()
        navigationController?.pushViewController(controller, animated: true)
        
    }
}

