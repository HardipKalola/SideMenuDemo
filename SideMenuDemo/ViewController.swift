//
//  ViewController.swift
//  SideMenuDemo
//
//  Created by Hardip Kalola on 28/08/18.
//  Copyright © 2018 Hardip Kalola. All rights reserved.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSideMenu()
        setDefaults()
    }
    
    fileprivate func setupSideMenu() {
        // Define the menus
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        
        // Enable gestures. The left and/or right menus must be set up above for these to work.
        // Note that these continue to work on the Navigation Controller independent of the View Controller it displays!
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        // Set up a cool background image for demo purposes
//        SideMenuManager.default.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }
    fileprivate func setDefaults() {
        SideMenuManager.default.menuFadeStatusBar = false
//        let modes:[SideMenuManager.MenuPresentMode] = [.menuSlideIn, .viewSlideOut, .menuDissolveIn]
////        presentModeSegmentedControl.selectedSegmentIndex = modes.index(of: SideMenuManager.default.menuPresentMode)!
//        
//        let styles:[UIBlurEffectStyle] = [.dark, .light, .extraLight]
//        if let menuBlurEffectStyle = SideMenuManager.default.menuBlurEffectStyle {
////            blurSegmentControl.selectedSegmentIndex = styles.index(of: menuBlurEffectStyle) ?? 0
//        } else {
////            blurSegmentControl.selectedSegmentIndex = 0
//        }
        
//        darknessSlider.value = Float(SideMenuManager.default.menuAnimationFadeStrength)
//        shadowOpacitySlider.value = Float(SideMenuManager.default.menuShadowOpacity)
//        shrinkFactorSlider.value = Float(SideMenuManager.default.menuAnimationTransformScaleFactor)
//        screenWidthSlider.value = Float(SideMenuManager.default.menuWidth / view.frame.width)
//        blackOutStatusBar.isOn = SideMenuManager.default.menuFadeStatusBar
    }
    
    
}
extension ViewController: UISideMenuNavigationControllerDelegate {
    
    func sideMenuWillAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing! (animated: \(animated))")
    }
    
    func sideMenuDidAppear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared! (animated: \(animated))")
    }
    
    func sideMenuWillDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing! (animated: \(animated))")
    }
    
    func sideMenuDidDisappear(menu: UISideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared! (animated: \(animated))")
    }
    
}
