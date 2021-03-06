//
//  Book.swift
//  Lesson 15 Wrap Up Challenge
//
//  Created by Erwin Bender on 9/27/21.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var id:Int
    var title:String
    var author:String
    var isFavorite:Bool
    var currentPage:Int
    var rating:Int
    var content:[String]

}
