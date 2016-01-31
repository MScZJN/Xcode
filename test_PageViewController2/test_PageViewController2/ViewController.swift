//
//  ViewController.swift
//  test_PageViewController2
//
//  Created by MScZJN on 1/26/16.
//  Copyright © 2016 MScZJN. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var guideScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let width = UIScreen.mainScreen().bounds.width
    let height = UIScreen.mainScreen().bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGuidePages()
        
        guideScrollView.delegate = self
    }
    
    func setGuidePages() {
        guideScrollView.contentSize = CGSizeMake(width * 3.0, height)

        for i in 1...3 {
            let imageView = UIImageView(frame: CGRectMake(width * CGFloat(i - 1), 0, width, height))
            imageView.image = UIImage(named: "guide\(i)")
            guideScrollView.addSubview(imageView)
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        //a. Achieve current page
        let currentPage = Int(scrollView.contentOffset.x / width)
        
        //b. Settings characters of current page
        pageControl.currentPage = currentPage
    }
}