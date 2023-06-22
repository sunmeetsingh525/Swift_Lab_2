import Foundation

// Parent class: Computer
class Computer {
    var cpu: String
    var gpu: String
    var ram: Int
    var state: String = "Off"
    var temperature: Double
    
    // Initialize a Computer object with specified CPU, GPU, RAM, and temperature
    init(cpu: String, gpu: String, ram: Int, temperature: Double) {
        self.cpu = cpu
        self.gpu = gpu
        self.ram = ram
        self.temperature = temperature
    }
    
    // Upgrade the RAM to a new amount
    func upgradeRam(newAmount: Int) {
        ram = newAmount
    }
    
    // Turn on the computer, setting the state to 'On'
    func turnOn() {
        state = "On"
    }
    
    // Turn off the computer, setting the state to 'Off'
    func turnOff() {
        state = "Off"
    }
    
    // Get the current temperature of the computer
    func getTemperature() -> Double {
        return temperature
    }
}

// Subclass: Laptop (inherits from Computer)
class Laptop: Computer {
    var isRamUpgradable: Bool
    var screenSize: Double
    var isTouchScreen: Bool
    
    // Initialize a Laptop object with specified CPU, GPU, RAM, state, temperature, and additional laptop-specific attributes
    init(cpu: String, gpu: String, ram: Int, state: String, temperature: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool) {
        self.isRamUpgradable = isRamUpgradable
        self.screenSize = screenSize
        self.isTouchScreen = isTouchScreen
        
        // Call the superclass initializer to set the inherited attributes
        super.init(cpu: cpu, gpu: gpu, ram: ram, temperature: temperature)
        
        // Set the laptop-specific state
        self.state = state
    }
    
    // Override the upgradeRam method to only perform the upgrade if RAM is upgradable
    override func upgradeRam(newAmount: Int) {
        if isRamUpgradable {
            super.upgradeRam(newAmount: newAmount)
        }
    }
    
    // Close the laptop screen, setting the state to 'Sleep'
    func closeScreen() {
        state = "Sleep"
    }
}
