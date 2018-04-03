//
//  Faculty.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/8/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import Foundation

class Faculty : Decodable  {
    var userName: String
    var middleName: String
    var degree: String
    var firstName: String
    var lastName: String
    var title: String
    var category: String
    var bio: String
    init() {
        self.userName = ""
        self.middleName = ""
        self.degree = ""
        self.firstName = ""
        self.lastName = ""
        self.title = ""
        self.category = "Faculty"
        self.bio = ""
    }
    
    
}

class FacultyJSONResponse : Decodable {
    var faculty: [Faculty]
    init() {
        faculty = [Faculty]()
    }
}
