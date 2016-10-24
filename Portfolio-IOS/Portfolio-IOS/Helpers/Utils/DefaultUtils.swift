//
//  BasePreference.swift
//  MOBILE_BANKING_IOS
//
//  Created by Abdelhak Jemaii on 24/10/16.
//  Copyright © 2016 Abdelhak Jemaii. All rights reserved.
//

import Foundation

struct DefaultUtils {
    
    static func getBoolean(_ key: String?) -> Bool {
        if(StringUtils.isStringEmpty(key)){
            return false;
        }
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: key!)
    }
    
    static func getFloat(_ key: String?) -> Float{
        if(StringUtils.isStringEmpty(key)){
            return 0.0;
        }
        let defaults = UserDefaults.standard
        return defaults.float(forKey: key!)
    }
    
    static func getInt(_ key: String?) -> Int{
        if(StringUtils.isStringEmpty(key)){
            return 0;
        }
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: key!)
    }
    
    static func getString(_ key: String?) -> String?{
        if(StringUtils.isStringEmpty(key)){
            return nil;
        }
        let defaults = UserDefaults.standard
        return defaults.string(forKey: key!)
    }
    
    static func getArray(_ key: String?) -> AnyObject?{
        if(StringUtils.isStringEmpty(key)){
            return nil;
        }
        let defaults = UserDefaults.standard
        return defaults.array(forKey: key!) as AnyObject?
    }
    
    static func getObject(_ key: String?) -> AnyObject?{
        if(StringUtils.isStringEmpty(key)){
            return nil;
        }
        let defaults = UserDefaults.standard
        return defaults.object(forKey: key!) as AnyObject?
    }
    
    
    
    static func putBoolean(_ key: String?,value: Bool) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putDouble(_ key: String?,value: Double) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putFloat(_ key: String?,value: Float) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putInt(_ key: String?,value: Int) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putString(_ key: String?,value: String?) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putArray(_ key: String?,value: NSArray) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func putObject(_ key: String?, value: AnyObject) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key!)
        defaults.synchronize()
    }
    
    static func removeFromBasePreferencekey(_ key: String?) {
        if(StringUtils.isStringEmpty(key)){
            return ;
        }
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: key!)
        defaults.synchronize()
    }
}
