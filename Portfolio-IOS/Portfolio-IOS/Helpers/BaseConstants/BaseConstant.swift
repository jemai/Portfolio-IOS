//
//  BaseConstant.swift
//  Portfolio-IOS
//
//  Created by Abdelhak Jemaii on 24/10/2016.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import UIKit

struct ColorConstants {
    static let AppBackground  = UIColor(hexString: "#D5D5D5")
    static let ContactBackground  = UIColor(hexString: "#9C959D")
}

struct CollectionsArrays {
    static let menuDataSource = [MenuModel(title: "About",image: "ic_about"),MenuModel(title: "Projects",image: "ic_project"),MenuModel(title: "Contact",image: "ic_contact"),MenuModel(title: "Hobbies",image: "ic_hobbie")]
}

struct TableArrays {
    static let hobbiesDataSource = [SharedModel(title: "  A guitar player" ,image: "ic_paul_gilbert" ,description : LongTexts.guitarDesc),SharedModel(title: "  A bboy",image: "ic_bboy",description : LongTexts.bboyDesc)]
    //
    static let projectsDataSource = [SharedModel(title: "  M-Banking",image: "ic_m_banking" ,description : LongTexts.MbankingDesc),SharedModel(title: "  Love'nTouch",image: "ic_lit",description : LongTexts.LitDesc),SharedModel(title: "  Youpi",image: "ic_youpi",description : LongTexts.YoupiDesc),SharedModel(title: "  Doolesh",image: "ic_doolesh",description : LongTexts.DooleshDesc)]
    //
    static let contactDataSource = [ContactModel(image : "ic_fb" ,link : "/jemaii.abdelhak"),ContactModel(image : "ic_github" ,link : "/jemai"),ContactModel(image : "ic_google" ,link : "/abdelhak.jemaii"),ContactModel(image : "ic_linkedin" ,link : "/jemai-abdelhak")]
    //,ContactModel(image : "" ,link : "+216 23 736 912")
}
struct BaseArrays {
    static let TitlesArray = ["Home","About","Projects","Contact","Hobbies"]
}
struct LongTexts {
    //
    static let AboutText = "Software engineer with through hand-on experience in mobile development IOS and Android. Supportive and enthusiastic team player dedicated to streamlining process and efficiently resolving project issues. Willing to learn more about mobile apps and more about its systems."
    //
    static let MbankingDesc = "A banking application, that allows users to check their accounts, to make transactions between accounts and third party accounts. \n \n It allows to confirm online payments and other features that gives to the user a direct access to his bank anywhere."
    //
    static let DooleshDesc = "Whether traveling on vacation or business trip for a few days or weeks. Doolesh be your inspiration to discover Tunisia,\n \n  as loved and lived by Tunisians: a wide choice of restaurants, good shopping addresses, relaxing spa and steam proposals, unusual walks, ideas for cultural outings ."
    //
    static let YoupiDesc = "An application to manage residents on a building it helps to alert a problem, to fix an issue with the building and to manage the access of the residents."
    //
    static let LitDesc = "A tinder like application that use the like to match mechanisme, with a great UI/UX and a strong native chat using the socket.io.\n \n A user can manage his profile, filtring by distance or age ... and can chat with other users and send images"
    //
    static let bboyDesc = "Since 2003 i loved the hip hop culture and the urban arts, i started practicing breakdance and in 2005 as a member of a bboy crew we organised our first show mixed with different styles of dances and it was a great success and a great experience."
    //
    static let guitarDesc = "I started playing guitar since 2014, it's just the perfect sound.\n For me art is everything and programming is a kind of genius art that uses intelligence to create and manipulate a UI."
}
