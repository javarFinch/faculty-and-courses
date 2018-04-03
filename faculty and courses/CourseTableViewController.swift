//
//  CoursesTableViewController.swift
//  faculty and courses
//
//  Created by Mac Lab on 2/12/18.
//  Copyright © 2018 Javar Finch. All rights reserved.
//

import UIKit

class CourseTableViewController: UITableViewController {
    var courseResponse = CourseJSONResponse()
    var decoder = JSONDecoder()
    override func viewDidLoad() {
        super.viewDidLoad()
        processsJSON()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courseResponse.courses.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath)
        let course = courseResponse.courses[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text = course.name
        cell.detailTextLabel?.text = course.shortDesc
        title = " CEC Courses"

        return cell
    }
    
    func processsJSON() {
        do {
            if let url = Bundle.main.url(forResource: "CoursesData", withExtension: ".json") {
                let data = try Data(contentsOf: url)
                courseResponse = try decoder.decode(CourseJSONResponse.self, from: data)
            }
        } catch {
            print(error)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! CourseDetailViewController
        let indexPath = tableView.indexPathForSelectedRow
        let course = courseResponse.courses[(indexPath?.row)!]
        dvc.courseDetail = course
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
