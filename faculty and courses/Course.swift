//
//  Courses.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/12/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import Foundation
class Course: Decodable {
    var name : String
    var shortDesc : String
    var longDesc : String
    init() {
        self.name = ""
        self.shortDesc = ""
        self.longDesc = ""
    }
    
}




class CourseJSONResponse: Decodable {
    
    var courses: [Course]
    init() {
        courses = [Course]()
    }
}
