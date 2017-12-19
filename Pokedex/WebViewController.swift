//
//  WebViewController.swift
//  Pokedex
//
//  Created by Oscar Sanchez Rueda on 03/11/2017.
//  Copyright © 2017 Oscar Sanchez Rueda. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    
    @IBOutlet weak var webview: UIWebView!
    
    var nombrePokemon : String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "\(nombrePokemon!)"
        
        
        
        var srt = "http://es.pokemon.wikia.com"
        
        if let path = "wiki/\(nombrePokemon!)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed){
            srt = "\(srt)/\(path)"
            
            let url = URLRequest(url: URL(string: srt)!)
            webview.loadRequest(url)
        }
        
        
        
     
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
