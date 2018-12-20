//
//  SideMenuViewController.swift
//  SideMenuDemo
//
//  Created by Hardip Kalola on 28/08/18.
//  Copyright © 2018 Hardip Kalola. All rights reserved.
//

import UIKit
import SideMenu

class SideMenuViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
 
    @IBOutlet var tblView : UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewVibrantCell", for: indexPath) as! UITableViewVibrantCell

        
        cell.blurEffectStyle = SideMenuManager.default.menuBlurEffectStyle
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var objNavigation : UIViewController? = nil
        objNavigation = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController")
        self.navigationController?.pushViewController(objNavigation!, animated:true)
//        self.dismiss(animated: true, completion: nil)
//        self.navigationController?.popViewController(animated: true)

        
    }
}
