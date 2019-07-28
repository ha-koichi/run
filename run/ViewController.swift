//
//  ViewController.swift
//  run
//
//  Created by Ha-koichi on 2019/07/13.
//  Copyright © 2019 Ha-koichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tbl: UITableView!
    
    let data = [("タイトル1", "田中", "記事の内容1"), ("タイトル2", "鈴木", "記事の内容2"), ("タイトル3", "佐藤", "記事の内容3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbl.dataSource = self
        tbl.delegate = self
        tbl.register(UINib(nibName: "ChannelViewCellController", bundle: nil), forCellReuseIdentifier: "ChannelViewCellController")

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(data.count)
        return data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let now = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChannelViewCellController", for: indexPath ) as! ChannelViewCellController

        // セルに表示する値を設定する
        cell.titleLabel.text = data[indexPath.row].0
        cell.nameLabel.text = data[indexPath.row].1
        cell.dateLabel.text = formatter.string(from: now as Date)
//        cell.contentText.text = data[indexPath.row].2
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

