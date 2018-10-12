//
//  AddCollegeVC.swift
//  CollegeProfileBuilder
//
//  Created by Michael Murphy on 10/10/18.
//  Copyright © 2018 Michael Murphy. All rights reserved.
//

import UIKit
import SafariServices

class AddCollegeVC: UIViewController {
    
    @IBOutlet weak var collegeNameTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var webPageTextField: UITextField!
    
    
    
    var college: College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func collegeNameChanged(_ sender: UITextField) {
        updateNavItem(with: sender.text!)
    }
    
    
    func updateNavItem(with text: String) {
        self.navigationItem.title = text
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "" {
            
        }
    }
    
    
    
    
    
    
    @IBAction func viewWebpageBtnPressed(_ sender: UIButton) {
        let svc = SFSafariViewController(url: URL(string: "http://\(webPageTextField.text!)")!)
        present(svc, animated: true, completion: nil)
    }
    
    
    
}
