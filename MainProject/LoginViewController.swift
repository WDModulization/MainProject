//
//  LoginViewController.swift
//  MainProject
//
//  Created by scott on 2024/6/2.
//

import UIKit
import WDUIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let new_vc = WDBasicViewController()
        new_vc.view.wd_frame()
        self.view.addSubview(new_vc.view)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
