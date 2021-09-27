//
//  GetData.swift
//  Lesson 15 Wrap Up Challenge
//
//  Created by Erwin Bender on 9/27/21.
//

import Foundation

class GetData {

        func getLocalData() -> [Book] {
            
            // Parse local json file
            
            // Get a url path to the json file
            
            let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
            
            // Check if pathString is not nil, otherwise...
            guard pathString != nil else {
                return [Book]()
             }
            
            // Create a url object
            
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                // Create a data object
            
                let data = try Data(contentsOf: url)
                
                // Decode the data with a JSON Decoder
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let bookData = try decoder.decode([Book].self, from: data)
                    
                    // Add the unique IDs
                    
//                   for b in bookData {
////
////                        r.id = UUID()
//
//                        // Add unique ID to pages in content
//                    for p in b.contents {
//
//                            p.id = UUID()
//
//                        }
//
//                    }
                    // Return the recipes
                    
                    return bookData
                    
                }
                catch {
                    // Error with parsing json
                    print("Error parsing json: \(error)")
                }
               

                
                }
            catch {
                // Error with getting data
                print("Error getting data: \(error)")
            }
            return [Book]()
        }
    
    
}
