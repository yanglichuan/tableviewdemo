//
//  MyFooter.swift
//  mytuangou
//
//  Created by  yanglc on 15/11/30.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class MyFooter: UIView {
    
    
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        tip.hidden =  true;
        
    }
    
    
    public var delegate:IFreshDelegate?;
    
    
    
    public class func craeateFooterView1() ->UIView {
        
        var view =  NSBundle.mainBundle().loadNibNamed("myfoot", owner: nil, options: nil).last as! UIView;
        
        
        return view;
        
        
        
    }
    
    
    
    @IBAction func loadmore(sender: AnyObject) {
        
        
        print("加载更多")
        
        (sender as! UIView).hidden = true;
        
        tip.hidden = false;
        
        if(delegate != nil){
            delegate?.doloadMore();
        }
    }
    
    func endloading(){
        tip.hidden = true;
        button.hidden = false;
     }
    
    @IBOutlet weak var tip: UILabel!
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
