import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

    @IBAction func cButton(_ sender: UIButton) {
        print("Start")
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        UIView.animate(withDuration: 0.5, delay: 2.0, options: .curveEaseInOut, animations: {
            sender.alpha = 1.0; print("End")
           }, completion: nil)
        
    }
    
    
}
