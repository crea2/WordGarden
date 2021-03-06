//
//  ViewController.swift
//  WordGarden
//
//  Created by Christopher Rea on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    func updateUIAfterGuess(){
       guessedLetterTextField.resignFirstResponder()
       guessedLetterTextField.text! = ""
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        var text = sender.text!
        text = String(text.last ?? " ").trimmingCharacters(in: .whitespaces)
        sender.text = text
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        // this dismisses teh keyboard
    updateUIAfterGuess()
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
            // this dismisses the keyboard
        updateUIAfterGuess()
       
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
      }
    
    }
   



