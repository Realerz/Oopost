//
//  showViewController.swift
//  ProjectGroup
//
//  Created by student on 14/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit

var message = ""

class showViewController: UIViewController {

    
    @IBOutlet weak var ViewG: UILabel!
    @IBOutlet weak var ViewZ: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        ViewG.text = gender
        ViewZ.text = nameZ
    }
    
    @IBOutlet weak var box: UITextField!
    
    
    @IBAction func send(_ sender: Any) {
        message = box.text!
        
        let alert = UIAlertController(title: "Alert", message: "Send message success", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Close",style: UIAlertAction.Style.default, handler:nil))
        
        self.present(alert, animated: true, completion: nil)
        
        box.text = ""
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
