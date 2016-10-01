//
//  NotificationViewController.swift
//  Extension
//
//  Created by Davis Allie on 28/09/16.
//  Copyright © 2016 Tuts+. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    func didReceive(_ notification: UNNotification) {
        if let number = notification.request.content.userInfo["customNumber"] as? Int {
            label?.text = "\(number)"
        }
    }
}
