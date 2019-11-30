//
//  ViewController.swift
//  DemoProject
//
//  Created by ikh4ever on 11/2/19.
//  Copyright © 2019 ikh4ever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //create textfield
    lazy var customTextField :UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 210, height: 60))
            textField.center = self.view.center
            textField.placeholder = "Password"
            textField.tintColor = .darkGray
            textField.layer.shadowColor = UIColor.black.cgColor
            textField.layer.shadowOffset = CGSize(width: 5, height: 5)
            textField.borderStyle = .roundedRect
            textField.layer.shadowRadius = 5
            textField.layer.shadowOpacity = 1.0
            textField.setLeftIcon(UIImage(named: "lock")!)
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.view.addSubview(self.customTextField)
        // Do any additional setup after loading the view.
    }


}

//Create TextField Extension
extension UITextField{
    func setLeftIcon(_ image: UIImage){
        let iconView = UIImageView(frame:CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView : UIView = UIView(frame:CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

