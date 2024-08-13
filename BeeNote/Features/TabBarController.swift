//
//  TabBarController.swift
//  BeeNote
//
//  Created by Elvis Cheng (ESD - Software Trainee, Digital Solutions) on 13/8/2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    lazy var notesTab: UINavigationController = {
        let notes = UINavigationController(rootViewController: NoteListViewController())
        let title = "Notes"
        let defaultImage = UIImage(systemName: "note")
        let selectedImage = UIImage(systemName: "note.text")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        notes.tabBarItem = tabBarItem
        notes.setNavBarTranslucent()
        return notes
    }()
    
    lazy var bookmarkTab: UINavigationController = {
        let bookmark = UINavigationController(rootViewController: BookmarkViewController())
        let title = "Bookmark"
        let defaultImage = UIImage(systemName: "bookmark")
        let selectedImage = UIImage(systemName: "bookmark.fill")
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        bookmark.tabBarItem = tabBarItem
        bookmark.setNavBarTranslucent()
        return bookmark
    }()
    
    override func viewDidLoad() {
        self.viewControllers = [notesTab, bookmarkTab]
        setTabBarTranslucent()
    }
    
    func setTabBarTranslucent() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
