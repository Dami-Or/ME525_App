//
//  Tutorial.swift
//  TheRoo
//
//  Created by Dami Or on 4/19/16.
//  Copyright © 2016 Dami Or. All rights reserved.
//

import Foundation

class Tutorial : UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}