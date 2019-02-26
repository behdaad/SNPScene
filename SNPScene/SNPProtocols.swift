//
//  LoginProtocols.swift
//  Driver
//
//  Created by Behdad Keynejad on 7/17/1396 AP.
//  Copyright (c) 1396 AP Snapp. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates, edited by
//  Behdad Keynejad for Snapp, so you can apply clean architecture to your
//  iOS and Mac projects, see http://clean-swift.com
//

import UIKit
import SNPUtilities
public protocol SNPInteractorProtocol: class {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)

}
public protocol SNPPresenterProtocol: class {
    func handle(error: SNPError?)
    func handle(error: SNPError?, dismiss: (() -> Void)?)
}


//sourcery: AutoMockable
public protocol SNPViewControllerProtocol: class {
    var viewController: SNPViewController! { get }
    
}

public extension SNPViewControllerProtocol where Self: SNPViewController {
    public var viewController: SNPViewController! {
        return self
    }
}

public protocol SNPRouterProtocol: class {
}



public extension SNPInteractorProtocol {
    func viewDidLoad() {}
    func viewWillAppear(_ animated: Bool) {}
    func viewDidAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}
    func viewDidDisappear(_ animated: Bool) {}

}
public extension SNPPresenterProtocol {
    func handle(error: SNPError?) {
        handle(error: error, dismiss: nil)
    }
    func handle(error: SNPError?, dismiss: (() -> Void)?) {}
}
