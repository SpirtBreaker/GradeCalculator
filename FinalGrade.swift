//
//  FinalGrade.swift
//  EGORSHIP
//
//  Created by Admin on 06.03.2022.
//

import SwiftUI

struct FinalGrade: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FinalGrade_Previews: PreviewProvider {
    static var previews: some View {
        FinalGrade()
    }
}

struct CountFinalGrade: View{
    var temp = 0
    var temp2 = 0
    var temp3: Double
    var temp4: Double
    var temp5: Double
    var Grade: Int
    
    mutating func CountGrade(){
        self.temp = ((Int(ForSOR.SORfact) ?? 0) + ForSumm.summfact)
        self.temp2 = ((Int(ForSOR.SORmax) ?? 0) + ForSumm.summmax)
        temp3 = Double(temp) / Double(temp2)
        temp3 = temp3 / 2
        self.temp4 = ((Double(ForSOCH.SOCHfact) ?? 0) / (Double(ForSOCH.SOCHmax) ?? 0))
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
    var body: some View{
        Button{
            CountGrade()
        }label:{
            Text("Count final grade")
        }
    }
}
