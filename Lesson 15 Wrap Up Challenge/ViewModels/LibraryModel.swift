//
//  LibraryModel.swift
//  Lesson 15 Wrap Up Challenge
//
//  Created by Erwin Bender on 9/27/21.
//

import Foundation

class LibraryModel: ObservableObject {
    
    @Published var library = [Book]()
    
    init() {
        
        let service = GetData()
        self.library = service.getLocalData()
        
    }
    
    
    
    
}
