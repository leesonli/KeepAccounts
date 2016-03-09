//
//  SingleAccountVC.swift
//  KeepAccounts
//
//  Created by admin on 16/2/25.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit


protocol SubViewProtocol{
    func clickManageBtn(sender:AnyObject!)
    func clickMidAddBtn(sender:AnyObject!)
}

class SingleAccountVC: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        setupMainView()
        
    }
    
    private func setupMainView(){
        let singleAccountView = SingleAccountView(frame: self.view.frame)
        singleAccountView.delegate = self
        self.view.addSubview(singleAccountView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

}

extension SingleAccountVC: SubViewProtocol{
    func clickManageBtn(sender:AnyObject!){
        self.presentLeftMenuViewController(sender)
    }
    func clickMidAddBtn(sender:AnyObject!){
        self.presentViewController(ChooseItemVC(), animated: true, completion: nil)
    }
}

extension SingleAccountVC:UITableViewDelegate{
    
}

extension SingleAccountVC:UITableViewDataSource{
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identify = "AccountCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(identify, forIndexPath: indexPath) 
        cell.textLabel!.text = "什么玩意"
        return cell
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    
}