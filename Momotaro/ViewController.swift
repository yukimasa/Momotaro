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
        Image.animationDuration = 2
        // 【4】コマ送りのアニメーションを開始
        Image.startAnimating()
    }
    
    var currentPage: Int = 1

    @IBAction func nextButton() {
        if currentPage < 4 {
            currentPage += 1
        }
        print("\(currentPage)ページ目")
        changePage(currentPage)
    }
    
    @IBAction func prevButton() {
        if currentPage > 1 {
            currentPage -= 1
        }
        print("\(currentPage)ページ目")
        changePage(currentPage)
    }
    
    func changePage(_ page: Int) {
        Image.stopAnimating()
        switch page {
        case 1:
            Image.animationImages = [UIImage(named: "Image1-A")!, UIImage(named: "Image1-B")!]
        case 2:
            Image.animationImages = [UIImage(named: "Image2-A")!, UIImage(named: "Image2-B")!]
        case 3:
            Image.animationImages = [UIImage(named: "Image3-A")!, UIImage(named: "Image3-B")!]
        case 4:
            Image.animationImages = [UIImage(named: "Image4-A")!, UIImage(named: "Image4-B")!]
        default: break
        }
        Image.startAnimating()
    }

}

