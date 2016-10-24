//
//  FileUtils.swift
//  MOBILE_BANKING_IOS
//
//  Created by Aymen Chouirfi on 8/26/16.
//  Copyright © 2016 Aymen Chouirfi. All rights reserved.
//

import Foundation

struct FileUtils{
    
    /*
     *  utils
     */
    static func loadBundlePathForCurrentLanguage(_ filename : String, filetype: String) -> String?{
        //
        var pathName = ""
        //
        if let currentlanguageKey  = LanguageManager.sharedManager.currentApplicationLanguage(){
            pathName = filename + "_" + String(currentlanguageKey)
        }else{
            pathName = filename + "_" + LanguageManager.Language.DEFAULT_LANGUAGE
        }
        //
        let path:String? = Bundle.main.path(forResource: pathName, ofType: filetype);
        return path
    }
}

