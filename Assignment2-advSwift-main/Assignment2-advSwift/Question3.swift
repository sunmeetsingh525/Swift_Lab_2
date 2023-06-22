//
//  Question3.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation

// Parent class computer
class Computer {
    var cpu: String
    var gpu: String
    var ram: Int
    var state: String
    var temp: Double
    
    init(cpu: String, gpu: String, ram: Int, temp: Double) { 
        self.cpu = cpu
        self.gpu = gpu
        self.ram = ram
        self.temp = temp
        self.state = "Off"
    }
    
    func upgradeRam(newAmount: Int) { // method to upgrade ram with new amount
        ram = newAmount
    }
    
    func turnOn() {
        state = "On"
    }
    
    func turnOff() {
        state = "Off"
    }
    
    func getTemp() -> Double {
        return temp
    }
}

// Subclass Laptop
class Laptop: Computer {
    var isRamUpgradable: Bool
    var screenSize: Double
    var isTouchScreen: Bool
    
    //  Initializing the Laptop object with provided values and calling the superclass's (computer) init method
    init(cpu: String, gpu: String, ram: Int, temp: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool) {
        self.isRamUpgradable = isRamUpgradable
        self.screenSize = screenSize
        self.isTouchScreen = isTouchScreen
        super.init(cpu: cpu, gpu: gpu, ram: ram, temp: temp)
    }
    
    // Override the upgradeRam method to check if the RAM is upgradable before performing the upgrade
    override func upgradeRam(newAmount: Int) {
        if isRamUpgradable {
            super.upgradeRam(newAmount: newAmount)
        }
    }
    
    func closeScreen() {
        state = "Sleep"
    }
}

// Create a Computer object
let computer = Computer(cpu: "Intel Core i5", gpu: "NVIDIA GeForce GTX 1080", ram: 6, temp: 35.0)
print("Computer state: \(computer.state)")

computer.turnOn()
print("Computer state: \(computer.state)")

let currentTemp = computer.getTemp()
print("Computer temperature: \(currentTemp)°C")

computer.upgradeRam(newAmount: 12)
print("Computer RAM: \(computer.ram)GB")

computer.turnOff()
print("Computer state: \(computer.state)")


// Create a Laptop object
let laptop = Laptop(cpu: "Intel Core i3", gpu: "NVIDIA GeForce MX150", ram: 6, temp: 30.0, isRamUpgradable: true, screenSize: 16.1, isTouchScreen: false)
print("Laptop state: \(laptop.state)") 

laptop.turnOn()
print("Laptop state: \(laptop.state)") 

let laptopTemp = laptop.getTemp()
print("Laptop temperature: \(laptopTemp)°C")

laptop.upgradeRam(newAmount: 12)
print("Laptop RAM: \(laptop.ram)GB")

laptop.closeScreen()
print("Laptop state: \(laptop.state)")