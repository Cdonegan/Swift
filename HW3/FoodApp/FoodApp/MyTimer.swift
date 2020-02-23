//
//  MyTimer.swift
//  FoodApp
//
//  Created by Connor Donegan on 2/3/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import Foundation

protocol MyTimerDelegate {
    func timeChanged(time: Int)
    func timesUp()
}


class MyTimer {
    var delegate: MyTimerDelegate?
  
    var currentTime: Int = 0
    var delay: Int = 0
    var current: Int = 0
    
    var timer: Timer?
    
    /*func setInitialTime(_ initTime: Int) {
        initialTime = initTime
    }*/
    
    func setDelayTime(_ delayTime: Int) {
        delay = delayTime
    }
    func getDelay() -> Int
    {
        return delay
    }
    
    func start() { // todo
        // creates a variable "timer" which has a time interval of 1.0 seconds, always repeating, and every second a tick goes by, it calls "handleTick"
        timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(delay), repeats: true, block: handleTick)
    }
    func handleTick2(timer: Timer)
    {
        
        delegate?.timeChanged(time: current) //passing the current image that should be displayed
        
    }
    
    func handleTick(timer: Timer){
            currentTime = currentTime + 1 //reducing current time
            delegate?.timeChanged(time: currentTime) //calling the delegate to let it know the
            
        
    }
    func stop() { // todo
        timer?.invalidate()
    }
}

