//
//  ViewController.swift
//  swift-stackview-sample
//
//  Created by devWill on 2019/09/27.
//  Copyright © 2019 devWill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var xibView: XibView!
    @IBAction func tappedBUtton(_ sender: UIButton) {
        xibView.isHidden = !xibView.isHidden
    }
}

