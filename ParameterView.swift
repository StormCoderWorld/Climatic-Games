//
//  ParameterView.swift
//  Zaper 
//
//  Created by Lamont Johnson on 5/30/23.
//

import UIKit

class ParameterView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ParameterQuestion: UILabel!
    @IBOutlet weak var OceanTempStack: UIStackView!
    
    @IBAction func DepartureChanger(_ sender: UISlider) {
    }
    @IBOutlet weak var PlayerProgress: UIProgressView!
    
    @IBOutlet weak var OccurenceStack: UIStackView!
    
    @IBOutlet weak var AtmosphericPatternStack: UIStackView!
    
    @IBOutlet weak var StepperAnswer: UIStepper!
    @IBOutlet weak var APname: UILabel
    // I lacked time to put in the labels for the occurence check questions
    func updateUI() {
        OceanTempStack.isHidden = true
        OccurenceStack.isHidden = true
        AtmosphericPatternStack.isHidden = true
        
        let currentParametershown = ParameterValueQuestions[ParametersChosenIndex]
        let AvailableParameters = currentParametershown.givenResponses
        let ScenarioQuiz = Float(ParametersChosenIndex) / Float(ParameterValueQuestions.count)
        navigationItem.title = "Parameter \(ParametersChosenIndex + 1)"
        ParameterQuestion.text = currentParametershown.visibletext
        PlayerProgress.setProgress(, <#Float#>, animated: true)
    }
    var ParameterValueQuestions: [parameter] = [ parameter(
        visibletext: "What is the temperature departure of ENSO?",
        valuedResponses: .oceanDeparture,
        givenResponses: [
        PlayerSelections(text: "Alarm Bell Cold", ScenarioClimate: .GloballyCool),
        PlayerSelections(text: "Extreme Cold", ScenarioClimate: .ColdEPAC),
        PlayerSelections(text: "Frigid", ScenarioClimate: .ColdEPAC),
        PlayerSelections(text: "Cold", ScenarioClimate: .CoolEPAC),
        PlayerSelections(text: "Cool", ScenarioClimate: .CoolEPAC),
        PlayerSelections(text: "Normal", ScenarioClimate: .NeutralState),
        PlayerSelections(text: "LukeWarm", ScenarioClimate: .WarmEPAC),
        PlayerSelections(text: "Warm", ScenarioClimate: .WarmEPAC),
        PlayerSelections(text: "Hot", ScenarioClimate: .HotEPAC),
        PlayerSelections(text: "Scorching", ScenarioClimate: .HotEPAC),
        PlayerSelections(text: "Almost Fire", ScenarioClimate: .GloballyWarm)]),
        parameter(visibletext: "What semi permanent pressure systems are stronger?",
        valuedResponses: .OccurenceChecks,
        givenResponses: [
            PlayerSelections(text: "Hadley Cells", ScenarioClimate: .LowContrastClimate),
            PlayerSelections(text: "ITCZ and monsoon troughs/gyres", ScenarioClimate: .HotTropics),
            PlayerSelections(text: "Semi Permanent Lows", ScenarioClimate: .HighContrastClimate),
            PlayerSelections(text: "Polar Jetstream", ScenarioClimate: .CoolEPAC),
            PlayerSelections(text: "Subtropical Jetstream", ScenarioClimate: .WarmEPAC),
        ]),
    parameter(visibletext: "What is the strength of the NAO?",
              valuedResponses: .atmosphericPatternBaseState,
              givenResponses: [
                PlayerSelections(text: "Maximum Negativity", ScenarioClimate: .LowContrastClimate),
                PlayerSelections(text: "Strongly Negative", ScenarioClimate: .LowContrastClimate),
                PlayerSelections(text: "Moderately Negative", ScenarioClimate: .WarmEPAC),
                PlayerSelections(text: "Mild Negative", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Somewhat Negative", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Neutral", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Somewhat Positive", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Mild Positive", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Moderately Positive", ScenarioClimate: .CoolEPAC),
                PlayerSelections(text: "Strongly Positive", ScenarioClimate: .ColdEPAC),
                PlayerSelections(text: "Maximum Positivity", ScenarioClimate: .HighContrastClimate),]),
                parameter(visibletext: "What is the strength of the PNA",
                valuedResponses: .atmosphericPatternBaseState,
                givenResponses: [
                PlayerSelections(text: "Maximum Negativity", ScenarioClimate: .LowContrastClimate),
                PlayerSelections(text: "Strongly Negative", ScenarioClimate: .ColdEPAC),
                PlayerSelections(text: "Moderately Negative", ScenarioClimate: .CoolEPAC),
                PlayerSelections(text: "Mild Negative", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Somewhat Negative", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Neutral", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Somewhat Positive", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Mild Positive", ScenarioClimate: .NeutralState),
                PlayerSelections(text: "Moderately Positive", ScenarioClimate: .CoolEPAC),
                PlayerSelections(text: "Strongly Positive", ScenarioClimate: .WarmEPAC),
                PlayerSelections(text: "Maximum Positivity", ScenarioClimate: .LowContrastClimate),]),
            parameter(
        visibletext: "What is the temperature departure of AMO?",
            valuedResponses: .oceanDeparture,
            givenResponses: [
            PlayerSelections(text: "Alarm Bell Cold", ScenarioClimate: .GloballyCool),
            PlayerSelections(text: "Extreme Cold", ScenarioClimate: .GloballyCool),
            PlayerSelections(text: "Frigid", ScenarioClimate: .HighContrastClimate),
            PlayerSelections(text: "Cold", ScenarioClimate: .HighContrastClimate),
            PlayerSelections(text: "Cool", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "Normal", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "LukeWarm", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "Warm", ScenarioClimate: .LowContrastClimate),
            PlayerSelections(text: "Hot", ScenarioClimate: .HotTropics),
            PlayerSelections(text: "Scorching", ScenarioClimate: .GloballyWarm),
            PlayerSelections(text: "Almost Fire", ScenarioClimate: .GloballyWarm)]),
            parameter(
            visibletext: "What is the temperature departure of Tropical West Pacific and Eastern Indian Ocean?",
            valuedResponses: .oceanDeparture,
            givenResponses: [
            PlayerSelections(text: "Alarm Bell Cold", ScenarioClimate: .GloballyCool),
            PlayerSelections(text: "Extreme Cold", ScenarioClimate: .GloballyCool),
            PlayerSelections(text: "Frigid", ScenarioClimate: .HotEPAC),
            PlayerSelections(text: "Cold", ScenarioClimate: .WarmEPAC),
            PlayerSelections(text: "Cool", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "Normal", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "LukeWarm", ScenarioClimate: .NeutralState),
            PlayerSelections(text: "Warm", ScenarioClimate: .CoolEPAC),
            PlayerSelections(text: "Hot", ScenarioClimate: .ColdEPAC),
            PlayerSelections(text: "Scorching", ScenarioClimate: .GloballyWarm),
            PlayerSelections(text: "Almost Fire", ScenarioClimate: .GloballyWarm)]),]

    var ParametersChosenIndex = 0
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
