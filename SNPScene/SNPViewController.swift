//
//  SNPViewController.swift
//  Driver
//
//  Created by Behdad Keynejad on 7/18/1396 AP.
//  Copyright © 1396 AP Snapp. All rights reserved.
//

import LifetimeTracker
import UIKit

class SNPViewController: UIViewController, LifetimeTrackable {
    // MARK: - Properties
    public var interactor: SNPInteractorProtocol!

    // MARK: LifetimeTracker
    open class var lifetimeConfiguration: LifetimeConfiguration {
        return LifetimeConfiguration(maxCount: 1)
    }

    // MARK: - Methods
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        trackLifetime()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        trackLifetime()
    }

    open override func loadView() {
        super.loadView()
    }

    // MARK: UIViewController
    open override func viewDidLoad() {
        guard interactor != nil else {
             fatalError("Interactor must not be nil.")
        }
        super.viewDidLoad()
        interactor.viewDidLoad()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError("Interactor must not be nil.")
        }
        super.viewWillAppear(animated)
        interactor.viewWillAppear(animated)
    }

    open override func viewDidAppear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError("Interactor must not be nil.")
        }
        super.viewDidAppear(animated)
        interactor.viewDidAppear(animated)
    }

    open override func viewWillDisappear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError("Interactor must not be nil.")
        }
        super.viewWillDisappear(animated)
        interactor.viewWillDisappear(animated)
    }

    open override func viewDidDisappear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError("Interactor must not be nil.")
        }
        super.viewDidDisappear(animated)
        interactor.viewDidDisappear(animated)
    }
}
