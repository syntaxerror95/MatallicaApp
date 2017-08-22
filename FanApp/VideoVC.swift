//
//  VideoVC.swift
//  FanApp
//
//  Created by Sahadev Tandur on 22/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var WebView: UIWebView!
    
    @IBOutlet weak var VideoTitleLb: UILabel!
    
    private var _cell : Cell!
    
    var cell : Cell{
        get{
            return _cell
        }
        set {
            _cell = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VideoTitleLb.text = cell.TitleURL
        WebView.loadHTMLString(cell.VideoURL, baseURL: nil)
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func OnBackBtnClick(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
