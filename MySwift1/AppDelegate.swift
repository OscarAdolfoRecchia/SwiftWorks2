//
//  AppDelegate.swift
//  MySwift1
//
//  Created by Oscar Adolfo Recchia on 4/7/17.
//  Copyright © 2017 Oscar Adolfo Recchia. All rights reserved.
//

import UIKit
import  CoreFoundation


struct Person
{
    var name : String
    var age : Int
}

struct PersonNode
{
  //:  var cur
}


extension Person: Hashable, Equatable {
    var hashValue: Int { return name.hashValue ^ age.hashValue }
}
 func == (lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name && lhs.age == rhs.age
}




@UIApplicationMain



class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    

    
  
    
    
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
        

        
            let a = Person(name: "George", age : 20)
            let b = Person(name: "Mary", age: 26)
            let c = Person(name: "Moon", age: 23)
            
            let arr = [ a, b, c ]
            var set = Set(arr)
        
        let d = Person(name: "Simon", age : 20)
        let e = Person(name: "Simon", age : 21)
        
        let f = Person(name: "Simon", age : 22)
        
        let g = Person(name: "Simon", age : 23)
        
        let h = Person(name: "Simon", age : 24)
        
        let i = Person(name: "Simon", age : 25)
        
        let l = Person(name: "Simon", age : 26)
        
        let m = Person(name: "Simon", age : 27)
        
        let n = Person(name: "Simon", age : 28)
        
        let o = Person(name: "Simon", age : 29)
        
        let p = Person(name: "Simon", age : 30)
        
        let q = Person(name: "Simon", age : 31)
        
        let r = Person(name: "Simon", age : 32)
        
        let s = Person(name: "Simon", age : 33)
        

        set.insert(d)
        set.insert(e)
        set.insert(f)
        set.insert(g)
        set.insert(h)
        set.insert(i)
        set.insert(l)
        set.insert(m)
        set.insert(n)
        set.insert(o)
        set.insert(p)
        set.insert(q)
        set.insert(r)
        set.insert(s)
        
        
       
            
            
    for name in set
    {
        print ("Nome = \(name)")
     //:   print ("Eta' = \(age)")
        
        
        }
        
 var set2 = set
        
        var begin :  CFAbsoluteTime
        
        
        
        var end :  CFAbsoluteTime
        begin = CFAbsoluteTimeGetCurrent()
        
        print ("Timestamp di partenza : \( begin)")
        
         let start = NSDate(); // <<<<<<<<<< Start time
        
        
        
 for   _  in  1...set.count
 {
 //: estrai utente
    let offset = Int(arc4random_uniform(UInt32(set.count)))
    
    print ( set[set.index(set.startIndex, offsetBy: offset)]) // a random entry from set
    
    set.remove(set[set.index(set.startIndex, offsetBy: offset)])
   
        }
        
        
        print ("remaining set =  \(set)")
        
        print ("set2 = \(set2)")
    
  let stop = NSDate()
        
        let myDuration : Double = stop.timeIntervalSince(start as Date); // <<<<< Difference in seconds (double)

        
        
        print ( "Durata con NSdate() = \(myDuration)")
        end = CFAbsoluteTimeGetCurrent()
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "MET") //  Set  Middle Europe TZ
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ssZZZZZ" //  full format
        print ("Timestamp di arrivo : \( end)")
        
        print ( "Durata estrazione =  \(end-begin)")
        
        let dateBegin = Date(timeIntervalSince1970: begin )
        
        let dateEnd = Date(timeIntervalSince1970: end  )
    
 
        let beginDate = dateFormatter.string(from: dateBegin)
        let endDate = dateFormatter.string(from: dateEnd)
        
        
        print ( beginDate)
        print (endDate)

        //:  begin of Set random picking algorithm
       
        
        
        

        
        
    
        
        //: end of Set random picking algorithm
        
        
        //:  begin of linked List random picking algorithm
        //: populate the list  with previous set values
        
     
        
        for j  in 0...set2.count-1
        {
         
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
    
        //: end of List random picking algorithm
        
       
        
        
        
        
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


class Node {
    
    
    
    
}


public class LinkedList {
    fileprivate var head: Node?
    private var tail: Node?
    
     var isEmpty: Bool {
        return head == nil
    }
    
     var first: Node? {
        return head
    }
    
     var last: Node? {
        return tail
    }
}


