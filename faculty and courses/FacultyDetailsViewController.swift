//
//  DetailsViewController.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/14/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import UIKit

class FacultyDetailsViewController: UIViewController {

    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var facultyImage: UIImageView!
    @IBOutlet weak var facultyNameLabel: UILabel!
    var facultyDetails: Faculty?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let f = facultyDetails {
            detailTextView.text = facultyDetails?.bio
            facultyImage.image = UIImage(named: f.userName + ".jpg")
            title = f.firstName + " "  + f.lastName
            facultyNameLabel.text = f.firstName + " " + f.lastName + ", " + f.degree
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! WebViewController
        dvc.webSite = facultyDetails?.userName
    }
}
