//
//  XibView.swift
//  swift-stackview-sample
//
//  Created by devWill on 2019/09/27.
//  Copyright © 2019 devWill. All rights reserved.
//

import UIKit

class XibView: UIView {
    @IBOutlet weak var upperView: UIView!
    @IBAction func tappedButton(_ sender: UIButton) {
        upperView.isHidden = !upperView.isHidden
    }
    // loaded from NIB
    private weak var view: UIView!
    
    convenience init() {
        self.init(frame: CGRect())
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // we need to adjust the frame of the subview to no longer match the size used
        // in the XIB file BUT the actual frame we got assinged from the superview
        self.view.frame = bounds
    }
    
    private func loadNib ()  {
        self.view = Bundle (for: type(of: self)).loadNibNamed(
            "XibView", owner: self, options: nil)! [0] as? UIView
        self.view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        self.addSubview(self.view)
    }
}
