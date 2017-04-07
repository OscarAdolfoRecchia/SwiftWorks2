//
//  AppDelegate.swift
//  MySwift1
//
//  Created by Oscar Adolfo Recchia on 4/7/17.
//  Copyright © 2017 Oscar Adolfo Recchia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    
    var myFloat : Float = 0.0
    
    
    
    var myk : Int = 5
    
    
    
    func applyKTimes(f:(Float) -> Float,x:Float,k:Int) -> Float
    {
        
        var fff : Float = x
        
        print ( "Sono all'interno")
        
       for _  in 0...k-1
       {
        
        print ( fff)
        fff =  f(fff)
        
        }
        
        return fff         }
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
               print ("Sono qui")
        
        
        
        print ( "Sono in application")
        
        myFloat = applyKTimes(f:{ $0 + 23 /* every kind of processing */ }, x: myFloat, k: myk)

print (" Final  myFloat   = \(myFloat)")
        // Override point for customization after application launch.
        return true
    }
    
    
    func applyTwice(f : (Float) -> Float, x: Float) -> Float {
        print (" ciaoooooo")
        return (  f(f(x)))
        
    }
    
    


    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
        print ("Sono qui")
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

