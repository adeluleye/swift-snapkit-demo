//
//  ViewController.swift
//  SnapKitDemo
//
//  Created by ADELU ABIDEEN ADELEYE on 10/8/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let mainView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(white: 0.6, alpha: 0.4)
        view.layer.cornerRadius = 20
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupViews()
    }
    
    func setup() {
        view.backgroundColor = .white
        title = "Example 1"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupViews() {
        view.addSubview(mainView)
        
        mainView.snp.makeConstraints { (make) in
            make.topMargin.left.equalTo(20)
            make.right.bottomMargin.equalTo(-20)
        }
    }


}

