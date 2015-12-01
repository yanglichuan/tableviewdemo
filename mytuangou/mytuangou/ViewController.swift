//
//  ViewController.swift
//  mytuangou
//
//  Created by  yanglc on 15/11/30.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController,IFreshDelegate{
    
    
    
    
    var mdata:Array<Dictionary<String, String>>!;
    
    func addfooter(){
        
        
        
        var view = MyFooter.craeateFooterView1() as! MyFooter;
        view.delegate = self;
        
        self.tableView.tableFooterView = view;
        
        
        
        
    }
    

    func doloadMore() {
        
        
        var dic = Dictionary<String,String>();
        
        dic.updateValue("vvnew", forKey: "name");
        dic.updateValue(String(98), forKey: "price")
        dic.updateValue("33", forKey: "sale");
        mdata.append(dic)
        
        
        var indexpath = NSIndexPath(forRow: mdata.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexpath], withRowAnimation: UITableViewRowAnimation.Middle);
        
    
        ( self.tableView.tableFooterView as! MyFooter).endloading();
        
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mdata = Array();
        
        for a in 1...10{
            var dic = Dictionary<String,String>();
            
            dic.updateValue("vvvv"+String(a), forKey: "name");
            dic.updateValue(String(98+a), forKey: "price")
            dic.updateValue("33", forKey: "sale");
            
            mdata.append(dic);
            
        }
        
        self.tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        
        
        addfooter();
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mdata.count;
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(106)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        struct Holder {
            static var id = "xxx"
        }
        
        var cell = tableView.dequeueReusableCellWithIdentifier(Holder.id) as? MyItemView;
        if(cell == nil){
            cell =  NSBundle.mainBundle().loadNibNamed("item", owner: nil, options: nil).last as! MyItemView;
        }
        
        
        cell?.title.text = mdata[indexPath.row]["name"];
        
        
        
        
        
        return cell!;
        
        
    }
   
    
   

}

