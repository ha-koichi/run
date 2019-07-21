//
//  ChannelViewController.swift
//  run
//
//  Created by Ha-koichi on 2019/07/14.
//  Copyright © 2019 Ha-koichi. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data = [("タイトル1", "田中"), ("タイトル2", "鈴木"), ("タイトル3", "佐藤")]
    
    var myTalbeView:  UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        tableView.estimatedRowHeight = 20 //セルの高さ
        return UITableView.automaticDimension //自動設定
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel?.text = data[indexPath.row].0
        cell.detailTextLabel?.text = data[indexPath.row].1
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
