//
//  Global.swift
//  CampusStory
//
//  Created by 陈沈杰 on 2022/7/19.
//

import Foundation
import UIKit

//MARK: - 字体
let Caption1Font:UIFont = UIFont.preferredFont(forTextStyle: .caption1) //12
let Caption2Font:UIFont = UIFont.preferredFont(forTextStyle: .caption2)
let LargeTitleFont:UIFont = UIFont.preferredFont(forTextStyle: .largeTitle) //34
let BodyFont:UIFont = UIFont.preferredFont(forTextStyle: .body) //17
let ButtonFont:UIFont = UIFont.preferredFont(forTextStyle: .callout) //16
let Title1Font:UIFont = UIFont.preferredFont(forTextStyle: .title1) //28
let Title2Font:UIFont = UIFont.preferredFont(forTextStyle: .title2) //22
let Title3Font:UIFont = UIFont.preferredFont(forTextStyle: .title3) //20
let HeadLineFont:UIFont = UIFont.preferredFont(forTextStyle: .headline) //17 bold

//MARK: - 边距
let EdgeM:CGFloat = 20.0


//MARK: - 色调 Hue
let EssentialColor:UIColor = UIColor(hexStr: "0x4095E5")
let ComplementaryColor:UIColor = .white
let BackgroundColor:UIColor = UIColor(hexStr: "0xF8F8F8")
let BlackColor:UIColor = UIColor(hexStr: "0x")


//MARK: - 有关于屏幕
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height

///状态栏管理
var StatusBarManager : UIStatusBarManager? {
    let scence = UIApplication.shared.connectedScenes.first as! UIWindowScene
    return scence.statusBarManager
}

///状态栏高度
var StatusHeight : CGFloat {
    return StatusBarManager?.statusBarFrame.height ?? 44
}
