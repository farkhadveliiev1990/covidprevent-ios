//
//  VerifyViewController.swift
//  Focus
//
//  Created by JinYC on 4/28/20.
//  Copyright © 2020 JinYC. All rights reserved.
//

import UIKit

class VerifyViewController: UIViewController {

    @IBOutlet weak var logoUIV: UIImageView!
    @IBOutlet weak var contentUV: UIView!
    
    @IBOutlet weak var phoneUV: UIView!
    @IBOutlet weak var phoneUTF: UITextField!
    
    @IBOutlet weak var verifyUV: UIView!
    @IBOutlet weak var verifyUTF: UITextField!
    
    @IBOutlet weak var actionUB: UIButton!
    
    var isVerify = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initWithUI()
        
        let tapMainUV = UITapGestureRecognizer(target: self, action: #selector(onClickMainUV))
        view.addGestureRecognizer(tapMainUV)
    }
    
    func initWithUI() {
        logoUIV.layer.cornerRadius = 20.0
        
        contentUV.layer.cornerRadius = 8.0
        contentUV.setShadowToUIView(radius: 8.0)
        
        phoneUV.layer.cornerRadius = 8.0
        phoneUV.layer.borderColor = UIColor(named: "color_green")?.cgColor
        phoneUV.layer.borderWidth = 1.0
        
        verifyUV.layer.cornerRadius = 8.0
        verifyUV.layer.borderColor = UIColor(named: "color_green")?.cgColor
        verifyUV.layer.borderWidth = 1.0
        
        isVerify = false
        initActionUB()
    }
    
    @objc func onClickMainUV() {
        phoneUTF.resignFirstResponder()
        verifyUTF.resignFirstResponder()
    }
    
    func initActionUB() {
        actionUB.layer.cornerRadius = 8.0
        if isVerify {
            actionUB.backgroundColor = UIColor(named: "color_green")
            actionUB.setTitle("firmar", for: .normal)
            actionUB.setTitleColor(UIColor.white, for: .normal)
            verifyUV.isHidden = false
        } else {
            actionUB.backgroundColor = UIColor.white
            actionUB.layer.borderColor = UIColor(named: "color_green")?.cgColor
            actionUB.layer.borderWidth = 2.0
            actionUB.setTitle("Enviar código", for: .normal)
            actionUB.setTitleColor(UIColor(named: "color_green"), for: .normal)
            verifyUV.isHidden = true
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onClickActionUB(_ sender: Any) {
        if isVerify {
            
        } else {
            
        }
    }
    
}
