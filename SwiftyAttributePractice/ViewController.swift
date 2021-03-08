//
//  ViewController.swift
//  SwiftyAttributePractice
//
//  Created by Masateru Maegawa on 2021/03/08.
//  Copyright © 2021 Masateru Maegawa. All rights reserved.
//

import UIKit
import SwiftyAttributes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstLabel: UILabel!{
        didSet {
            let style = NSMutableParagraphStyle()
            // 行間設定
            style.lineSpacing = 6
            // テキストの位置、どちらに寄せるか、など
            style.alignment = .center
            firstLabel.attributedText =
                "アメンボ赤いな"
                    .withFont(.systemFont(ofSize: 20))
                    .withParagraphStyle(style)
                    .withTextColor(.red)
                +
                "アイウエオ"
                    // Fontサイズ
                    .withFont(.systemFont(ofSize: 24))
                    // 段落スタイル
                    .withParagraphStyle(style)
                    // テキストの色
                    .withTextColor(.purple)
                    // 外枠の色
                    .withStrokeColor(.red)
                    // 外枠の太さ
                    .withStrokeWidth(-3.0)
        }
    }
    
    @IBOutlet weak var secondLabel: UILabel!{
        didSet {
          let style = NSMutableParagraphStyle()
          style.lineSpacing = 6
          style.alignment = .center
          secondLabel.attributedText =
            "柿の木、栗の木"
            .withFont(.systemFont(ofSize: 20))
            .withParagraphStyle(style)
            .withTextColor(.green)
            .withObliqueness(0.5)
            +
            "カキクケコ"
            .withFont(.systemFont(ofSize: 24))
            .withParagraphStyle(style)
            .withTextColor(.purple)
            .withStrokeColor(.green)
            .withStrokeWidth(-3.0)
            .withObliqueness(0.5)
        }
    }
    
    @IBOutlet weak var thirdLabel: UILabel!{
        didSet {
              let style = NSMutableParagraphStyle()
              style.lineSpacing = 6
              style.alignment = .center
              thirdLabel.attributedText =
                "大角豆に酸をかけ"
                .withFont(.systemFont(ofSize: 20))
                .withParagraphStyle(style)
                .withTextColor(.blue)
                .withUnderlineStyle(.single).withUnderlineColor(.blue)
                
                +
                "サシスセソ"
                .withFont(.systemFont(ofSize: 24))
                .withParagraphStyle(style)
                .withTextColor(.purple)
                .withStrokeColor(.blue)
                .withUnderlineStyle(.single).withUnderlineColor(.blue)
            }
        }
    }

