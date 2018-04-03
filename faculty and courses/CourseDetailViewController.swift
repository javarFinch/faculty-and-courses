//
//  CoursesDetailViewController.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/15/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {
    @IBOutlet weak var courseDescriptionLabel: UILabel!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var courseLabel: UILabel!
    var courseDetail: Course?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = courseDetail {
            courseLabel.text = c.name
            courseDescriptionLabel.text = c.shortDesc
            courseDescriptionTextView.text = c.longDesc
            title = c.name
        }

        // Do any additional setup after loading the view.
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
