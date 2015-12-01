//
//  MyItemView.swift
//  mytuangou
//
//  Created by  yanglc on 15/11/30.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MyItemView: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
               // Initialization code
    }
    @IBOutlet public weak var ii: UIImageView!

  
    @IBOutlet public weak var salecou: UILabel!
            
    @IBOutlet public weak var price: UILabel!
    
    @IBOutlet public weak var title: UILabel!
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        if(selected){
            self.contentView.backgroundColor = UIColor.redColor();
        }else{
            self.contentView.backgroundColor = UIColor.grayColor();
        }

        
        
        

        // Configure the view for the selected state
    }

}
