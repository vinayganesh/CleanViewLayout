//
//  AppDelegateExtension.swift
//  CleanViewLayout
//
//  Created by Vinay Ganesh on 9/6/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    func loadRootViewWithData() -> UIWindow? {
        var window: UIWindow?
        // fetch data from the json file
        guard let json = loadFixture("data") else { return nil }
        guard let guitar = Guitar(dictionary: json) else { return nil }
        // create a model with the fetched data
        let rootViewController = GuitarViewController(displayable: guitar)
        
        // embed the view controller into a navigation controller
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.navigationBar.topItem?.title = "Guitar"
        
        // set the navigation controller as rootviewcontroller
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return window
    }
    
    func loadFixture(_ filename: String ) -> JSONDictionary? {
        guard let path = Bundle.main.url(forResource: filename, withExtension: ".json") else { return nil }
        do {
            let data = try Data(contentsOf: path)
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            return json as? JSONDictionary
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
        return nil
    }
}
