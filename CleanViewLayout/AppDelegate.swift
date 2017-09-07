//
//  AppDelegate.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/30/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = self.loadRootViewWithData()
        return true
    }
}

