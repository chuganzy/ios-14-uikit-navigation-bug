//
//  ViewController.swift
//  App
//
//  Created by Takeru Chuganji on 1/26/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        printIndex()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        printIndex()
    }

    private func printIndex() {
        let index = navigationController!.viewControllers.firstIndex(of: self)!
        print(index)
    }

    @IBAction func push(_ sender: Any) {
        let vc = storyboard!.instantiateViewController(identifier: "ViewController")
        navigationController!.pushViewController(vc, animated: true)
    }

    @IBAction func pop(_ sender: Any) {
        navigationController!.popToRootViewController(animated: true)
    }
}

