////
////  Spot.swift
////  Bullet Journal
////
////  Created by Amanda Zhao on 5/4/18.
////  Copyright © 2018 Zhao. All rights reserved.
////
//
//import Foundation
//
//class Spot: NSObject {
//    var date: String
//    var mood: String
//    var thankfulFor: [String]
//    var goodMemory: String
//    var toDos: [String]
//    var toDoItems: [String]
//
//    init(date: String, mood: String, thankfulFor: [String], goodMemory: String, toDos: [String], toDoDetails: [String]) {
//        self.date = date
//        self.mood = mood
//        self.thankfulFor = thankfulFor
//        self.goodMemory = goodMemory
//        self.toDos = toDos
//        self.toDoItems = toDoItems
//    }
//
//    convenience init(dictionary: [String: Any]) {
//        let name = dictionary["date"] as! String? ?? ""
//        let address = dictionary["mood"] as! String? ?? ""
//        let latitude = dictionary["thankfulFor"] as! String? ?? ""
//        let longitude = dictionary["goodMemory"] as! String? ?? ""
//        let averageRating = dictionary["toDos"] as! String? ?? ""
//        let numberOfReviews = dictionary["toDoItems"] as! String? ?? ""
//        self.init(date: "", mood: "", thankfulFor: [""], goodMemory: "", toDos: [""], toDoDetails: [""])
//
//    }
//
//}

