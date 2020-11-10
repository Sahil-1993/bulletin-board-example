//
//  ViewController.swift
//  BulletinBoardExample
//
//  Created by Sahil Arora on 2020-11-09.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {

    @IBOutlet var btn_ClickMe:UIButton!
    lazy var bulletinManager: BLTNItemManager = {
        let item_TobeShown = BLTNPageItem(title: "Welcome to Bulletin Board")
        item_TobeShown.descriptionText = "Hello World!"
        item_TobeShown.alternativeHandler = { _ in
            
            
        }
        return BLTNItemManager(rootItem: item_TobeShown)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction  func action_Clickme(sender:UIButton)
    {
        self.bulletinManager.showBulletin(above: self)
    }

}

