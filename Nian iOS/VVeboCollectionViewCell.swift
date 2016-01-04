//
//  VVeboCollecionViewCell.swift
//  Nian iOS
//
//  Created by Sa on 16/1/4.
//  Copyright © 2016年 Sa. All rights reserved.
//

import Foundation
import UIKit

class VVeboCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    var image: NSDictionary?
    func setup() {
        if image != nil {
            let path = image?.stringAttributeForKey("path")
            let w = image?.stringAttributeForKey("width")
            let h = image?.stringAttributeForKey("height")
            imageView.setImage("http://img.nian.so/step/\(path!)!200x")
            imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "onImage"))
        }
    }
    
    func onImage() {
        let path = image?.stringAttributeForKey("path")
        imageView.showImage(V.urlStepImage(path!, tag: .Large))
    }
}
