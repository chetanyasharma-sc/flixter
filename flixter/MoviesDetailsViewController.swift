//
//  MoviesDetailsViewController.swift
//  flixter
//
//  Created by chetanya sharma on 9/18/21.
//  Copyright © 2021 chrischri97@gmail.com. All rights reserved.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {
    
    
    
    
    
    @IBOutlet weak var backdropView: UIImageView!
    
  
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var synopsislabel: UILabel!
    
    var movie: [String:Any]!
    

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
        
        
        titlelabel.text = movie["title"] as? String
        
        synopsislabel.text = movie["overview"] as? String
        synopsislabel.sizeToFit()
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"]as! String
        let posterUrl = URL(string: baseUrl+posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        
        
        let backdropPath = movie["backdrop_path"]as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


