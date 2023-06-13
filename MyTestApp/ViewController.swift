//
//  ViewController.swift
//  MyTestApp
//
//  Created by Reid, Dylan D on 2023/06/13.
//

import UIKit

class ViewController: UIViewController {
    let colorWell: UIColorWell = {
        let colorWell = UIColorWell()
        colorWell.supportsAlpha = true
        colorWell.selectedColor = .systemBlue
        colorWell.title = "Color Well"
        return colorWell
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        colorWell.backgroundColor = .systemMint
        view.addSubview(colorWell)
        
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        colorWell.frame = CGRect(x: 20, y: view.safeAreaInsets.top, width: view.frame.size.width-40, height: 50)
    }

    @objc private func colorChanged(){
        view.backgroundColor = colorWell.selectedColor
    }
    

}

