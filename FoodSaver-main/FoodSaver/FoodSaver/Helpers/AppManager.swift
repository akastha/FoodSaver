//
//  AppManager.swift
//  FoodSaver
//
//  Created by Prashamsa on 18/09/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import Foundation
import NVActivityIndicatorView

class AppManager {
    
    static let manager = AppManager()
    fileprivate var activityIndicatorView: NVActivityIndicatorView?
    
    var loginAccount: Account?
    
    private init() {
        
    }
    
    func showActivityIndicator(on view: UIView) {
        guard activityIndicatorView == nil, activityIndicatorView?.isAnimating == false else {
            return
        }
        
        activityIndicatorView = NVActivityIndicatorView(frame: view.bounds, type: .ballPulse, color: NVActivityIndicatorView.DEFAULT_COLOR, padding: NVActivityIndicatorView.DEFAULT_PADDING)
        activityIndicatorView?.startAnimating()
    }
    
    func stopActivityIndicator() {
        activityIndicatorView?.startAnimating()
        activityIndicatorView = nil
    }
}
