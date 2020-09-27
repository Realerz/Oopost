//
//  testViewController.swift
//  ProjectGroup
//
//  Created by student on 14/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    
    @IBOutlet var zoneCol: [UIButton]!
    
    @IBAction func Zone(_ sender: Any) {
        zoneCol.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
            })
    }
    }
    
    enum z: String {
        case ButtonA = "AA"
        case BB = "BB"
        case CC = "CC"
    }
    
    
    @IBAction func Tabbed(_ sender: UIButton) {
        guard let v = sender.currentTitle,
            let ZZ = z(rawValue:v) else {
            return
        }
        
        switch ZZ {
        case .ButtonA:
            print("AA")
        case .BB:
            print("BB")
        case .CC:
            print("CC")
        }
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
