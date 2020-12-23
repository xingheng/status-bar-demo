//
//  Extensions.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/29.
//

import UIKit

extension UIColor {

    open class var random : UIColor {
        get {
            return UIColor.init(red: self.channel(self.upperChannel, 0), green: self.channel(self.upperChannel, 0), blue: self.channel(self.upperChannel, 0), alpha: 1)
        }
    }

    open class var randomLight : UIColor {
        get {
            return UIColor.init(red: self.channel(self.upperChannel / 2, self.upperChannel / 2), green: self.channel(self.upperChannel / 2, self.upperChannel / 2), blue: self.channel(self.upperChannel / 2, self.upperChannel / 2), alpha: 1)
        }
    }

    open class var randomDark : UIColor {
        get {
            return UIColor.init(red: self.channel(self.upperChannel / 2, 0), green: self.channel(self.upperChannel / 2, 0), blue: self.channel(self.upperChannel / 2, 0), alpha:1)
        }
    }

    private static func channel(_ upper: UInt32, _ seed: UInt32) -> CGFloat {
        let a = CGFloat(arc4random_uniform(upper) + seed) / CGFloat(self.upperChannel)
        return a
    }

    private class var upperChannel : UInt32 {
        get { 255 }
    }
}
