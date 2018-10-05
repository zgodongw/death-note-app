//
//  ViewController.swift
//  d02
//
//  Created by Zenande GODONGWANA on 2018/10/04.
//  Copyright © 2018 Zenande GODONGWANA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self;
            tableView.dataSource = self;
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell") as! NoteCell
        cell.note = Data[indexPath.row]
        return cell
    }
    
    @IBAction func unwindFromDetail(sender: UIStoryboardSegue) {
        
    }
}

