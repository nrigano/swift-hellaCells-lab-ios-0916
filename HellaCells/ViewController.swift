//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.height)
        let tableView = UITableView(frame: frame)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "hellaCell")
        tableView.delegate = self
        tableView.dataSource = self
     
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hellaCell = tableView.dequeueReusableCell(withIdentifier: "hellaCell", for: indexPath)
        hellaCell.textLabel?.text = String(indexPath.row + 1)
        return hellaCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row + 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//Custom Cell lab
//create and push to new view controller.  predicated on idea of being a navigation controller
