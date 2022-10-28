//
//  ViewControllerExtension.swift
//  FoodSaver
//
//  Created by Prashamsa on 01/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showInfoAlert(title: String?, message: String?, completion: (() -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: NSLocalizedString("Ok", comment: "Ok"), style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
            completion?()
        }
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func showConfirmationAlert(title: String?, message: String?, acceptTitle: String = NSLocalizedString("Yes", comment: "Yes"), declineTitle: String = NSLocalizedString("No", comment: "No"), accpetBlock: @escaping(()-> ()), declineBlock: @escaping(()-> ())) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let accpetAction = UIAlertAction(title: acceptTitle, style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
            accpetBlock()
        }
        let declineAction = UIAlertAction(title: declineTitle, style: .cancel) { (action) in
            alert.dismiss(animated: true, completion: nil)
            declineBlock()
        }
        alert.addAction(accpetAction)
        alert.addAction(declineAction)
        
        present(alert, animated: true, completion: nil)
    }
}
