

// Created on: Sept-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program will display  hello world in three languages 
// this will be commented out when code moved to Xcode
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel = UILabel()
    let englishButton = UIButton()
    let germanButton = UIButton()
    let russianButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        englishButton.setTitle("English", for: .normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        germanButton.setTitle("German", for: .normal)
        germanButton.titleLabel?.textAlignment = .center
        germanButton.setTitleColor(.blue, for: .normal)
        germanButton.addTarget(self, action: #selector(germanText), for: .touchUpInside)
        view.addSubview(germanButton)
        germanButton.translatesAutoresizingMaskIntoConstraints = false
        germanButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        germanButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        russianButton.setTitle("Russian", for: .normal)
        russianButton.setTitleColor(.blue, for: .normal)
        russianButton.addTarget(self, action: #selector(russianText), for: .touchUpInside)
        view.addSubview(russianButton)
        russianButton.translatesAutoresizingMaskIntoConstraints = false
        russianButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        russianButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //helloWorldLabel.text = "Hello, World!"
        helloWorldLabel.textAlignment = .center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: germanButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func englishText() {
        // show Hello, World! in English
        helloWorldLabel.text = "Hello, World!"
    }
    
    @objc func germanText() {
        // show Hello, World!, in german
        helloWorldLabel.text = "Hallo, Welt!"
    }
    
    @objc func russianText() {
        // show Hello, World!, in Russian
        helloWorldLabel.text = "Привет мир"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
