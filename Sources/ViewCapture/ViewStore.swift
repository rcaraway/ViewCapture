//
//  File.swift
//  
//
//  Created by Rob Caraway on 8/16/20.
//

import UIKit

public struct ViewStore {
    let name: String
    let frames: [String: CGRect] // Key = UIScreen.readableScreenSize()
    let backgroundColor: UIColor
}

public extension ViewStore {
    func getFrame() -> CGRect? {
        if let frame = frames[UIScreen.readableScreenSize()] {
            return frame
        } else {
            //TODO: try to grab a frame if its in a relatively similar size
            return nil
        }
    }
}

public extension UIScreen {
    static func readableScreenSize() -> String {
        return "\(Int(UIScreen.main.bounds.width)) x \(Int(UIScreen.main.bounds.height))"
    }
}
