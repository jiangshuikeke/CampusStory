//
//  UIColor+Extension.swift
//  CampusStory
//
//  Created by 陈沈杰 on 2022/7/19.
//

import Foundation
import UIKit

extension UIColor{
    convenience init(hexStr:String){
        var red:UInt64 = 0,green:UInt64 = 0,blue:UInt64 = 0
        var hex:NSString
        if hexStr.hasPrefix("0x") || hexStr.hasPrefix("0X"){
            let begin = "0x".endIndex
            hex = hexStr[begin ..< hexStr.endIndex] as NSString
        }else{
            hex = hexStr as NSString
        }
        
        //扫描字符串并且根据16进制将它数值保存在指定的变量中
        Scanner(string: hex.substring(with: NSRange(location: 0, length: 2))).scanHexInt64(&red)
        Scanner(string: hex.substring(with: NSRange(location: 2, length: 2))).scanHexInt64(&green)
        Scanner(string: hex.substring(with: NSRange(location: 4, length: 2))).scanHexInt64(&blue)
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
}
