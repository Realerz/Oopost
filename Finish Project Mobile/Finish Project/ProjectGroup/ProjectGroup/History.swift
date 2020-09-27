//
//  History.swift
//  ProjectGroup
//
//  Created by student on 21/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit

class History: UIViewController {

    @IBOutlet weak var exMess: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        exMess.text = message
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
