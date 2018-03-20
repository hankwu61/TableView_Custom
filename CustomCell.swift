//
//  CustomCell.swift
//  TableView_Custom
//
//  Created by HSIN-HUNG WU on 2018/3/20.
//  Copyright © 2018年 HSIN-HUNG WU. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var imageName: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelValue: UILabel!
    
    func setCell(labelName:String, labelValue:Int, imageName:String){
        self.labelName.text = labelName
        self.labelValue.text = String(labelValue)
        self.imageName.image = UIImage(named: imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
