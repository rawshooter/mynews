//
//  RSSController.swift
//  mynews
//
//  Created by Thomas Alexnat on 01.05.17.
//  Copyright © 2017 Thomas Alexnat. All rights reserved.
//

import UIKit

class RSSController: UIViewController, XMLParserDelegate {

    @IBOutlet weak var button: UIButton!

    
    
    
    var xmlParser: XMLParser!
    var entryTitle: String!
    var entryDescription: String!
    var entryLink: String!
    var currentParsedElement:String! = String()
    var entryDictionary: [String:String]! = Dictionary()
    var entriesArray:[Dictionary<String, String>]! = Array()
    
    let feed1 = "https://www.engadget.com/rss.xml"
    let feed2 = "https://www.engadget.com/rss.xml"
    let feed3 = "https://www.engadget.com/rss.xml"
    
    @IBAction func ActionRSSButton(_ sender: UIButton) {
        print("load XML Data")
        
        
        
        let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
        
        var dataTask: URLSessionDataTask?
        
        
        
        
        let url = URL(string: feed1)
        
        
        dataTask = defaultSession.dataTask(with: url!) {
            data, response, error in
            
            DispatchQueue.main.async() {
                // set the UI status
                
            }
            
            
            if let error = error {
                print(error.localizedDescription)
                
            } else if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode == 200 {
                
                    print(httpResponse.allHeaderFields)
                    
                    // print(data ?? "no data")
                    
                    if let data = data{
                        let stringData = String(data: data, encoding: String.Encoding.utf8) as String!
                        //    print(stringData ?? "no xml found")
                        
                        self.xmlParser = XMLParser(data: data)
                        self.xmlParser.delegate = self
                        self.xmlParser.parse()
                        
                        
                    }
                }
            }
        }
        
        dataTask?.resume()
        
    }
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBarItem.appearance()


    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
