//
//  ViewController.swift
//  MailApp
//
//  Created by wolfyteze on 16/02/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let identifire = "cell"
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MailTableViewCell", bundle: nil), forCellReuseIdentifier: identifire)
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==1 {
            return 2
        }else{
            return 10
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire) as! MailTableViewCell
        cell.titleLabel.text = "TitleLabel"
        cell.subtitleLabel.text = "SubTitleLabel"
        cell.imageCell.image = #imageLiteral(resourceName: "img1")
//        if cell==nil {
//            cell = UITableViewCell(style: .default, reuseIdentifier: identifire)
//            print("create")
//        }
//
//        if indexPath.section==0{
//            cell!.textLabel?.text = "MailSubject"
//            cell!.detailTextLabel?.text = "Subtitle"
//            cell!.imageView?.image = #imageLiteral(resourceName: "img1")
//        }else{
//            cell!.textLabel?.text = "MailSubject2"
//            cell!.detailTextLabel?.text = "Subtitle2"
//            cell!.imageView?.image = #imageLiteral(resourceName: "img1")
//        }
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
}

