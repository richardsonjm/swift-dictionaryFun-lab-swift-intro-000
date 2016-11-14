//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
 
    
    // 2.
    
    
    func names(forFlavor flavor: String) -> [String] {
        var namesList = [String]()
        for (name, _) in favoriteFlavorsOfIceCream {
            if (favoriteFlavorsOfIceCream[name] == flavor) {
                namesList.append(name)
            }
        }
        return namesList
    }
    
    
    // 3.
    
    
    
    func count(forFlavor flavor: String ) -> Int {
        var flavorCount = 0
        for(_, favFlavor) in favoriteFlavorsOfIceCream {
            if (favFlavor == flavor) {
                flavorCount = flavorCount + 1
            }
        }
        return flavorCount
    }
    
    
    
    // 4.
   
    
    
    func flavor(forPerson person: String) -> String? {
        if let favFlavor = favoriteFlavorsOfIceCream[person] {
            return favFlavor
        } else {
            return nil;
        }
    }
    
    
    
    // 5.
   
    
    
    func replace(flavor: String, forPerson person:String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    // 6.
    
    
    
    func remove(person: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }

    }
    
    
    
    
    // 7.
    
    
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    // 8.
    
    
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    
    
    
    
    // 9.
    
    
    
    func attendeeList() -> String {
        var nameList = String()
        var namesToProcess = favoriteFlavorsOfIceCream.count
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            nameList.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)")
            namesToProcess = namesToProcess - 1
            if (namesToProcess > 0) {
                nameList.append("\n")
            }
        }
        return nameList
    }
    
    
    
    

}
