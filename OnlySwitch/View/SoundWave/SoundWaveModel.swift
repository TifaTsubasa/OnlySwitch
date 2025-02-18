//
//  SoundWaveModel.swift
//  SpringRadio
//
//  Created by jack on 2020/4/19.
//  Copyright © 2020 jack. All rights reserved.
//

import AppKit
import Combine

class SoundWaveModel: ObservableObject {
    @Published var spectra: [[Float]] = [[Float]]()
    
    @Published var barWidth:CGFloat = 3.0
    @Published var space:CGFloat = 0.0
    
    init() {
        self.setBarWidth()
    }
        
    func setBarWidth() {
        let barSpace = Layout.soundWaveWidth / CGFloat(PlayerManager.shared.player.analyzer.frequencyBands * 3 - 1)
        self.barWidth = barSpace * 3
    }
}
