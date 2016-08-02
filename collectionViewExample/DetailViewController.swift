//
//  DetailViewController.swift
//  collectionViewExample
//
//  Created by Koushik, Madhuri on 7/31/16.
//  Copyright © 2016 Koushik, Madhuri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageGallery: UIImageView!
    
    var sentData: NSDictionary!
    
    @IBOutlet weak var heading: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var imageCounter: UILabel!
    
    @IBOutlet weak var animalDescription: UILabel!
    
    var counter = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageGallery.image = UIImage(named:sentData["image1"] as! String)
        heading.text = sentData["heading"] as? String
        animalDescription.text = sentData["details"] as? String
        counter = 1;
        imageCounter.text = String(counter) + "/4"
        prevBtn.enabled = false
        prevBtn.alpha = 0.3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

     @IBAction func goToNextImage(sender: AnyObject) {
        counter += 1
        imageGallery.image = UIImage(named:sentData["image"+String(counter)] as! String)
        imageCounter.text = String(counter) + "/4"
        
        
        if counter == 4 {
            nextBtn.enabled = false
            nextBtn.alpha = 0.3
        }
        if !prevBtn.enabled {
            prevBtn.enabled = true;
            prevBtn.alpha = 1.0;
        }
     }
    
    
    @IBAction func goToPrevImage(sender: AnyObject) {
        counter -= 1
        imageGallery.image = UIImage(named:sentData["image"+String(counter)] as! String)
        imageCounter.text = String(counter) + "/4"
        
        
        if counter == 1 {
            prevBtn.enabled = false
            prevBtn.alpha = 0.3
        }
        if !nextBtn.enabled {
            nextBtn.enabled = true;
            nextBtn.alpha = 1.0;
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
