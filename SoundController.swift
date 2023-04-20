//
//  SoundController.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 09/04/23.
//

import SwiftUI
import AVFoundation

class soundManager{
    static let instance = soundManager()
    var player: AVAudioPlayer?
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: "backsound", withExtension: ".mp3") else { return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound \(error.localizedDescription)")
        }
        
        player?.numberOfLoops = -1
    }
}
