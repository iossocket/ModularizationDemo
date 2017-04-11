//
//  Target_C.swift
//  CModule
//
//  Created by XueliangZhu on 10/04/2017.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

import Foundation

@objc(Target_C)
public class Target_C: NSObject {
    public func Action_viewController(params: NSDictionary) -> UIViewController {
        return CViewController()
    }
}
