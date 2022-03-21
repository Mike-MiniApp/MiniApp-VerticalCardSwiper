//
//  CardViewCell.swift
//  MiniApp-VerticalCardSwiper
//
//  Created by 近藤米功 on 2022/03/21.
//

import UIKit
// import VerticalCardSwiperを追記
import VerticalCardSwiper
// UITableViewCell→CardCell
class CardViewCell: CardCell {

    @IBOutlet weak var prefectureLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // ライブラリのコードからそのまま拝借
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = 12
        super.layoutSubviews()
    }
    
    // カードの背景色をランダムで変えている
    public func setRandomBackgroundColor() {
        let randomRed: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomGreen: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomBlue: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        self.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}
