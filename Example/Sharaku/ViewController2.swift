//
//  ViewController2.swift
//  Sharaku_Example
//
//  Created by Vincenzo Stira on 07/02/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import Sharaku

class ViewController2: UIViewController {
    
    var vc: SHViewController!
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var galleryView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "sample")
        vc = SHViewController(image: image!)
        self.addChildViewController(vc)
        
        vc.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        vc.view.frame = self.galleryView.frame
        self.view.insertSubview(vc.view, aboveSubview: galleryView)
        vc.didMove(toParentViewController: self)
    }
    
    @IBAction func doneTapped(_ sender: Any) {
        vc.done()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController2: SHViewControllerDelegate {
    func shViewControllerImageDidFilter(image: UIImage) {
        print("done")
        //imageView.image = image
        //showSharokuButton.isHidden = true
    }
    
    func shViewControllerDidCancel() {
    }
}
