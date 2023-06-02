//
//  SimulatorController.swift
//  Zaper 
//
//  Created by Lamont Johnson on 6/1/23.
//

import UIKit

class SimulatorController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    class latitude {
        let equator = 0
        let tropics = 0.1...23
        let midlatitudes = 23.1...59.9
        let highlatitudes = 60...90
    }
    class Pressure {
        var Millibars : Double
    }
    class PressureSystem: Pressure {
        var risingAir : Bool
        var sinkingAir : Bool
        var SemiPermanent : Bool
        var movementSpeed : Double = 0.0
        var movementDirection : String = ""
        var maximumWindspeed : Double = 0.0
        var rotationDirection : String = ""
        var systemRadius : Int = 0
        var dissipated : Bool
        var systemState : String = ""
    }
    
    class Trough : PressureSystem {
        var isMonsoonal : Bool
        var liftStrength : Int
        var windshear : Double
        var orientation : String    }
    
    class LowPressureSystem : Trough {
        var thermalLow : Bool
        var coldCore : Bool
        var warmCore : Bool
        var G500MillibarPatternInfluence : Int
        func promoteRising() {
            sinkingAir = false
            risingAir = true
        }
    }
    class MidlatitudeCyclone : LowPressureSystem {
        var cutoffLow : Bool
        
    }
    class TropicalCyclone : LowPressureSystem {
        var outflowChannels : Int
        var outflowStrength : Int
        var eyeTemperature : Double
        var eyewallReplacementcycle : Bool
        var lowlevelandMidLevelCentersAligned : Bool
    }
    class HighPressureSystem : PressureSystem {
        var blockingStrength : Double
        func promoteSinking() {
            sinkingAir = true
            risingAir = false
        }
    }
    // These classes above are meant to define the global pressure patterns around the globe which will effect temperatures at a later date. */
    class Temperature {
        var temperature : Double
        var apparentTemperature : Double
        var wetBulbTemperature : Double
    }
    class seaSurfaceTemparature : Temperature {
        var waterTemperature : Double
        var oceanHeatContent : Double
        var seaIcepresent : Bool
    }
    class OceanCurrent : seaSurfaceTemparature {
        var currentStrength = Int
        var currentTemperature : Double
        var newWaterTemperature : Double
        func currentType() {
            if currentTemperature > waterTemperature {
                print ("Warm Ocean Current")
            } else if currentTemperature < waterTemperature {
                print("Cold Ocean Current")
            }
            func influenceSeaTemperatures() {
                switch newWaterTemperature {
                case: currentStrength = 1
                 return newWaterTemperature = (currentTemperature+waterTemperature)/2.06
                case: currentStrength = 2
                   return newWaterTemperature = (currentTemperature+waterTemperature)/2.02
                case: currentStrength = 4
                  return  newWaterTemperature = (currentTemperature+waterTemperature)/1.98
                case: currentStrength = 5
                  return  newWaterTemperature = (currentTemperature + waterTemperature)/1.94
                default: currentStrength = 3
                    newWaterTemperature = (currentTemperature+waterTemperature)/2
                    
                }
            }
        }
        // This function is meant to calculate sea surface temperatures which will influence air temperatures and vice versa in a later function.
        class landTemperature : Temperature {
            var groundTemperature : Double
            var albedoAmplification : Double
            var shadestrength : Double
        }
        struct wind {
            func windSpeed() {
                
            }
        }
        class DefaultPressures : Pressure {
            let altitude = [1000, 900, ]
        }
        
    }
}
