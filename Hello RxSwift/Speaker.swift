//
//  Speaker.swift
//  Hello RxSwift
//
//  Created by Muhammad Azam Bin Baderi on 1/13/17.
//  Copyright © 2017 Muhammad Azam Bin Baderi. All rights reserved.
//

import UIKit

struct Speaker {
    let name: String
    let twitterHandle: String
    var image: UIImage?
    
    init(name: String, twitterHandle: String) {
        self.name = name
        self.twitterHandle = twitterHandle
        //image = UIImage(named: name.stringByReplacingOccurrencesOfString(" ", withString: ""))
    }
}

extension Speaker: CustomStringConvertible {
    var description: String {
        return "\(name) \(twitterHandle)"
    }
}
