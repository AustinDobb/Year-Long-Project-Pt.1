//
//  ViewController.swift
//  Tech Social Media App
//
//  Created by Austin Dobberfuhl on 9/29/23.
//

//var dateComponents: DateComponents {
//    var components = DateComponents()
//    components.year = 2022
//    components.month = 4
//    components.day = 3
//    
//    return components
//}
//
//let myDate = Calendar.current.date(from: dateComponents)

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let collectionOfPosts = Array(repeating: Posts(title: "Hello everyone", bodyText: "Hey, I'm new to this social media stuff, does anyone know how this works? Is this even showing?", date: .now, user: "Jimbo The Third"), count: 10)
    
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return collectionOfPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Posts", for: indexPath) as! PostsTableViewCell
        
        let collectionOfPosts = collectionOfPosts[indexPath.row]
        
        cell.updatePosts(with: collectionOfPosts)
        cell.showsReorderControl = true
        //        var content = cell.defaultContentConfiguration()
        //        content.text =
        //        cell.contentConfiguration = content
        
        return cell
    }
    
    

    @IBOutlet weak var tabelView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabelView.delegate = self
        tabelView.dataSource = self
    }


}

//You have joined a tech startup that needs you to start putting together a "Tech Social Media App." You need to create the user profile screen.
//This screen should show you as a user.
//Should show a profile photo and a background photo at the top of the screen.
//Should show the users name and some interesting tech facts about the user(including tech interests, tech companies and tech they don't like)
//Should have one post under the user details
//Create a second tab where posts are displayed.
//Show at least one post from your user
//You are to design and create the screens yourself.
//You are also to come up with a company name.

//PART TWO
//You have been called back to work on the "Tech social media" app to complete phase 2.
//The board wants to see a list of posts.
//Create an array of 10 posts.
//A post consists of a title, bodyText, date, user and comments.
//Create a view to display those posts in a table view.
//Must use a custom table view cell to display the posts.
//You are to create a custom design for these cells. Make it look good!

