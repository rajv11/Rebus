//
//  TakeARideDetailsViewController.swift
//  Rebu
//
//  Created by student on 11/28/18.
//  Copyright © 2018 Jennaikode,Vamshi Raj. All rights reserved.
//

import UIKit

class RideDetailsViewController: UIViewController {
    
    var announcementGive:GiveRideAnouncement!
    var announcementTake:TakeRideAnouncement!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameLBL: UILabel!
    
    @IBOutlet weak var phoneNumberLBL: UILabel!
    
    @IBOutlet weak var informLBL: UILabel!
    
    @IBOutlet weak var startLBL: UILabel!
    
    @IBOutlet weak var endLBL: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        if announcementGive == nil {
            nameLBL.text = announcementTake.name
            phoneNumberLBL.text = announcementTake.contact
            informLBL.text = announcementTake.extraInfo
            startLBL.text = announcementTake.startPoint
            endLBL.text = announcementTake.endPoint
        } else {
            nameLBL.text = announcementGive.name
            phoneNumberLBL.text = announcementGive.contact
            informLBL.text = announcementGive.extraInfo
            startLBL.text = announcementGive.startPoint
            endLBL.text = announcementGive.endPoint
        }
    }
    @IBAction func makeCall(_ sender: Any) {
        
        let url: NSURL = URL(string: "tel://\(phoneNumberLBL.text!)")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}