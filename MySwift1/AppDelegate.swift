//
//  AppDelegate.swift
//  MySwift1
//
//  Created by Oscar Adolfo Recchia on 4/7/17.
//  Copyright © 2017 Oscar Adolfo Recchia. All rights reserved.
//

import UIKit
import  CoreFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
  /*
    struct Person: Hashable
    {
      
        var age : Int
    }
    
  */
    
    
    //:  begin of Set random picking algorithm
    

    var begin :  CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
    
    
    var users : Set<Person>
    
    
    var end :  CFAbsoluteTime = CFAbsoluteTimeGetCurrent()

    
    print ( end - begin )
    
    
    
    
 //: end of Set random picking algorithm
    
    
    //:  begin of List random picking algorithm
    
    
    
    var Users : Set<Person>
    
    
    
    //: end of List random picking algorithm
    
    
    
    
    var myFloat : Float = 2.0
    
    
    
    var myk : Int = 4
    
    
    
    func applyKTimes(f:(Float) -> Float,x:Float,k:Int) -> Float
    {
        
        var fff : Float = x
        
        print ( "Sono all'interno")
        
       for _  in 0...k-1
       {
        

        fff =  f(fff)
                print ( fff)
        
        }
        
        return fff         }
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
               print ("Sono qui")
        
        
        
        print ( "Sono in application")
        
        myFloat = applyKTimes(f:{ $0 * myFloat /*  k-th power */ }, x: myFloat, k: myk)

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

