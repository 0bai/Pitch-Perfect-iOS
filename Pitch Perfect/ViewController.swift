//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Obai Alnajjar on 3/13/19.
//  Copyright © 2019 Obai Alnajjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopButton.isEnabled = false
        recordButton.isEnabled = true
        recordLabel.text = "Tap to record"
    }

    @IBAction func startRecordingPressed(_ sender: Any) {
        recordButton.isEnabled = false
        stopButton.isEnabled = true
        recordLabel.text = "Recording in progress..."
    }
    
    @IBAction func stopRecordingPressed(_ sender: Any) {
        stopButton.isEnabled = false
        recordButton.isEnabled = true
        recordLabel.text = "Tap to record"
        performSegue(withIdentifier: "EditRecording", sender: (Any).self)
    }
}

