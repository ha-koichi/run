//
//  DrawerViewController.swift
//  run
//
//  Created by Ha-koichi on 2019/07/16.
//  Copyright © 2019 Ha-koichi. All rights reserved.
//

import UIKit

class DrawerViewController: UIViewController {

    @IBOutlet weak var DrawerMenu: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // メニューの位置を取得する
        let menuPos = self.DrawerMenu.layer.position
        // 初期位置を画面の外側にするため、メニューの幅の分だけマイナスする
        self.DrawerMenu.layer.position.x = -self.DrawerMenu.frame.width
        // 表示時のアニメーションを作成する
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: .curveEaseOut,
            animations: {
                self.DrawerMenu.layer.position.x = menuPos.x
        },
            completion: { bool in
        })
        
    }
    
    // メニューエリア以外タップ時の処理
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch in touches {
            if touch.view?.tag == 1 {
                UIView.animate(
                    withDuration: 0.2,
                    delay: 0,
                    options: .curveEaseIn,
                    animations: {
                        self.DrawerMenu.layer.position.x = -self.DrawerMenu.frame.width
                },
                    completion: { bool in
                        self.dismiss(animated: true, completion: nil)
                }
                )
            }
        }
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
