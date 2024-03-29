//
//  PostsTableViewController.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 3/21/23.
//

import UIKit


class PostsTableViewController: UITableViewController {
    
    @IBOutlet var barLabelUser: UILabel!
    var posts: [Post] = [Post(user: "Zane Jones", date: Date(), text: "Chuck Norris can pick apples from an orange tree and make the best lemonade you've ever had.", comments: [Comment(user: "Chuck Norris", date: Date(), text: "True")]), Post(user: "Zane Jones", date: Date(), text: "Chuck Norris doesn't read books. He stares them down until he gets the information he wants.", comments: [Comment(user: "Chuck Norris", date: Date(), text: "Also true")]), Post(user: "Zane Jones", date: Date(), text: "Chuck Norris appeared in the 'Street Fighter II' video game, but was removed by Beta Testers because every button caused him to do a roundhouse kick. When asked bout this “glitch,” Chuck Norris replied, “That's no glitch.”", comments: [Comment(user: "Chuck Norris", date: Date(), text: "Not false")])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        barLabelUser.text = posts[0].user != "" ? posts[0].user:"Error"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostTableViewCell
        
        let post = posts[indexPath.row]
        cell.post = post
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    @IBSegueAction func openPosts(_ coder: NSCoder, sender: Any?) -> CommentsTableViewController? {
        if let cell = sender as? PostTableViewCell, let indexPath = tableView.indexPath(for: cell) {
            let currentPost = posts[indexPath.row]
            return CommentsTableViewController(coder: coder, post: currentPost)!
        }
            else { return CommentsTableViewController(coder: coder, post: nil)!}
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
