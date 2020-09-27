//
//  YouboxViewController.swift
//  ProjectGroup
//
//  Created by student on 21/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit

class YouboxViewController: UIViewController {

    
    @IBOutlet weak var Mesbox: UILabel!
    
    @IBOutlet weak var newText: UITextField!
    
    @IBAction func acText(_ sender: Any) {
        Mesbox.text = newText.text
        newText.text = "" 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Mesbox.text = message
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
