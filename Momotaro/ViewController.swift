//
//  ViewController.swift
//  Momotaro
//
//  Created by yukimasa ikeda on 2019/07/11.
//  Copyright © 2019 yukimasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 【1】画像データをインスタンス化
        let imageA: UIImage! = UIImage(named: "Image1-A")
        let imageB: UIImage! = UIImage(named: "Image1-B")
        // 【2】コマ送りに使う画像データの配列をセット
        Image.animationImages = [imageA, imageB]
        // 【3】コマ送りの間隔を設定
        Image.animationDuration = 1
        // 【4】コマ送りのアニメーションを開始
        Image.startAnimating()
    }


}

