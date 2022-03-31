//
//  funcs.swift
//  EGORSHIP
//
//  Created by Admin on 31.03.2022.
//

import Foundation
var temp = 0
var temp2 = 0
var temp3: Double = 0
var temp4: Double = 0
var temp5: Double = 0
var Grade: Int = 0



func CountGrade(){
    temp = ((Int(ForSOR.SORfact) ?? 0) + ForSumm.summfact)
    temp2 = ((Int(ForSOR.SORmax) ?? 0) + ForSumm.summmax)
    temp3 = Double(temp) / Double(temp2)
    temp3 = temp3 / 2
    temp4 = ((Double(ForSOCH.SOCHfact) ?? 0) / (Double(ForSOCH.SOCHmax) ?? 0))
    temp4 = temp4 / 2
    temp5 = Double(temp3) + Double(temp4)
    if (temp5 <= 0.39){
        Grade = 2
    }
    else if (temp5 <= 0.64) && (temp5 >= 40){
        Grade = 3
    }
    else if (temp5 <= 0.84) && (temp5 >= 0.65){
        Grade = 4
    }
    else if (temp5 >= 0.85){
        Grade = 5
    }
}
