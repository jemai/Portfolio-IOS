//
//  BaseConstant.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation

struct CollectionsArrays {
    static let menuDataSource = [MenuModel(title: "About",image: "ic_about"),MenuModel(title: "Projects",image: "ic_project"),MenuModel(title: "Contact",image: "ic_contact"),MenuModel(title: "Hobbies",image: "ic_hobbie")]
}

struct TableArrays {
    static let hobbiesDataSource = [SharedModel(title: "A guitar player" ,image: "ic_paul_gilbert" ,description : ""),SharedModel(title: "A bboy",image: "ic_bboy",description : "")]
    //
    static let projectsDataSource = [SharedModel(title: "M-Banking",image: "ic_m_banking" ,description : LongTexts.MbankingDesc),SharedModel(title: "Love'nTouch",image: "ic_lit",description : LongTexts.LitDesc),SharedModel(title: "Youpi",image: "ic_youpi",description : LongTexts.YoupiDesc),SharedModel(title: "Doolesh",image: "ic_doolesh",description : LongTexts.DooleshDesc)]
    //
    static let contactDataSource = [ContactModel(image : "ic_fb" ,link : "/jemaii.abdelhak"),ContactModel(image : "ic_github" ,link : "/jemai"),ContactModel(image : "ic_google" ,link : "abdelhak.jemaii"),ContactModel(image : "ic_linkedin" ,link : "/jemai-abdelhak")]
}

struct LongTexts {
    //
    static let AboutText = "Software engineer with through hand-on experience in mobile development IOS and Android. Supportive and enthusiastic team player dedicated to streamlining process and efficiently resolving project issues. Willing to learn more about mobile apps and more about its systems."
    //
    static let MbankingDesc = ""
    //
    static let DooleshDesc = ""
    //
    static let YoupiDesc = ""
    //
    static let LitDesc = ""
    
}
