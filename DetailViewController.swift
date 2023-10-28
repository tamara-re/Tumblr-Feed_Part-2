//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Tamara Regalado Quiroz on 10/27/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
        
    // Property to store the passed in post
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view.
        
        // MARK: - Configure the labels
        textView.text = post.caption.trimHTMLTags()
            
        
        // MARK: - Configure the image views
                // Configure the image views
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: backdropImageView)
        }
                            
    }

//
}
