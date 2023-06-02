//
//  GlobeParamaters.swift
//  Zaper 
//
//  Created by Lamont Johnson on 6/1/23.
//

import Foundation
struct parameter {
    var visibletext : String
    var valuedResponses : ResponseType
    var givenResponses : [PlayerSelections]
}
enum ResponseType {
    case oceanDeparture, OccurenceChecks, atmosphericPatternBaseState
}
struct PlayerSelections {
    var text: String
    var ScenarioClimate : BaseState
}
enum BaseState: Character {
case CoolEPAC = "🌬️", GloballyCool = "❄️", WarmEPAC = "🌵", GloballyWarm = "🏝️", HighContrastClimate = "⛈️", LowContrastClimate = "☀️", HotTropics = "🌀", NeutralState = "🌦️", ColdEPAC = "💨", HotEPAC = "🔥"
    var StartingClimateScenario : String {
        switch self {
        case .CoolEPAC:
            return "Consistently strong trade winds will blow from the Eastern Pacific westward and cause a buildup of warm water in the Indian Ocean and Western Pacific. This will lead to more storms in this region less droughts, it will also shift cyclones westward. For Drier regions of the planet this base state will lead to less rainfall particularly in the Western Americas. The cooler ocean temperatures will also cool down the planet's average temperature until conditions cease. Polar JetStream also grows stronger."
        case .WarmEPAC:
            return "A relaxing of the trades and western bursts of wind in the tropical Pacific will prevent upwelling off South America and prevent cooler waters from reaching the surface. This will lead to a more frequent pileup of warm water in the Eastern Pacific and increase storm prevalence and increase temperatures worldwide until conditions cease. "
        case .HotTropics:
            return "Warmer temperatures in the tropics intensify global circulation patterns as more warm air lifted and descends in the mid latitudes, the contrast between the tropics and the poles would also generally increase leading to stronger jetstreams and storms around the planet. The amount"
        case .GloballyCool:
            return "On average the globe is cooler which increases snow and ice present reducing overall sea level, the actual effects on regional areas is dependent on the other parameters you have adjusted as some areas may be wetter, drier, warmer, or colder depending on the exact orientation of temperature gradients and pressure systems."
        case .GloballyWarm:
            return "On average the globe is warmer decreasing the amount of snow and ice globally and raising overall sea level, more specific regional effects can differ drastically depending on the temperature gradients on land and at sea. These gradients will also influnece where pressure systems are more likely to form which can alter precipitation and temperatures on a local basis. "
        case .HighContrastClimate:
            return "In a high contrast climate the difference between the poles and the tropics in terms of temperature will increase strengthening the jetstream globally and increasing the strength of Mid Latitude Cyclones due to increased contrast while amplifying tropical cyclones due to increased ocean heat content in addition to greater outflow. Temperature and precipitation extremes however would overall decrease however as pressure systems would move quicker across the planet."
        case .LowContrastClimate:
            return "In a low contrast climate the difference between temperatures in the poles and the tropics is decreased and relatively low compared to normal and much lower than a high contrast climate. Due to this storm systems across the planet are likely to move slower as the jetstream weakens due to a lack of contrast, weather extremes are also more likely as weather patterns stay stationary and a lack of strong jetstream allows extreme heat from the tropics or cold from the poles to sweep down frequently into the mid latitudes. This set up can also lead to a weakening of trade winds in some areas as low pressure systems that get cut off from the jetstream can slow down the trades or reverse them all together leading to more rapid warming. This rapid warming would not always lead to more tropical cyclones however as increased heat buildup away from the tropics can lead to stability issues for tropical cyclone development. "
        case .NeutralState:
            return "The average temperature and pressure systems of the planet are around normal values or balance each other out to produce a near normal base state globally. Outcomes can vary depending on exact parameters."
        case .ColdEPAC:
        return "Trade winds and upwelling strength in the Eastern Pacific is at record levels and the warm pool in the Western Pacific grows extremely large. Extreme droughts will be prevalent in the Western Americas, while increased lift over the Asia and the Indian Ocean will intensify monsoons and flooding in these regions. The subtropical jet stream over the North Atlantic may also collapse."
        case .HotEPAC:
            return "Trade winds must halt almost entirely over the eastern pacific for this to occur, extreme droughts will take place in the Western Pacific and lead to prolonged heatwaves that could last for weeks on end. Catastrophic flooding can occur in the Western Americas while drought plagues the Amazon."
        }
    }
}
