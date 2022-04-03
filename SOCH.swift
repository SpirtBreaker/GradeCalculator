//
//  SOCH.swift
//  EGORSHIP
//
//  Created by Admin on 06.03.2022.
//

import SwiftUI



struct SOCH: View {

    
    var body: some View {
        ZStack{
            Color.indigo.ignoresSafeArea()
            ButtonsForSOCH()
        }
    }
}

struct SOCH_Previews: PreviewProvider {
    static var previews: some View {
        SOCH()
    }
}
public class ForSOCH{
    public static var SOCHfact = ""
    public static var SOCHmax = ""
    static var Tool = false
    
    static func ChangeBool(){
        Tool.toggle()
    }
    
    static func CalculateZero(){
        if Tool == false{
            SOCHfact += "0"
        }
    }
    
    static func CalculateNine(){
        if Tool == false{
            SOCHfact += "9"
        }
    }
    
    static func CalculateEight(){
        if Tool == false{
            SOCHfact += "8"
        }
    }
    
    static func CalculateSeven(){
        if Tool == false{
            SOCHfact += "7"
        }
    }
    
    static func CalculateSix(){
        if Tool == false{
            SOCHfact += "6"
        }
    }
    
    static func CalculateFive(){
        if Tool == false{
            SOCHfact += "5"
        }
    }
    
    static func CalculateFour(){
        if Tool == false{
            SOCHfact += "4"
        }
    }
    
    static func CalculateThree(){
        if Tool == false{
            SOCHfact += "3"
        }
    }
    
    static func CalculateTwo(){
        if Tool == false{
            SOCHfact += "2"
        }
    }
    
    static func CalculateOne(){
        if Tool == false{
            SOCHfact += "1"
        }
    }
    

}
struct ButtonsForSOCH: View{
    
    var body: some View{
        ZStack{
            Button(action: {ForSOCH.CalculateZero()}, label: {Text("<0>")}).position(x: 160, y: 460).colorInvert()
            Button(action: {ForSOCH.CalculateNine()}, label: {Text("<9>")}).position(x: 230, y: 340).colorInvert()
            Button(action: {ForSOCH.CalculateEight()}, label: {Text("<8>")}).position(x: 160, y: 340).colorInvert()
            Button(action: {ForSOCH.CalculateSeven()}, label: {Text("<7>")}).position(x: 90, y: 340).colorInvert()
            Button(action: {ForSOCH.CalculateSix()}, label: {Text("<6>")}).position(x: 230, y: 380).colorInvert()
            Button(action: {ForSOCH.CalculateFive()}, label: {Text("<5>")}).position(x: 160, y: 380).colorInvert()
            Button(action: {ForSOCH.CalculateFour()}, label: {Text("<4>")}).position(x: 90, y: 380).colorInvert()
            Button(action: {ForSOCH.CalculateThree()}, label: {Text("<3>")}).position(x: 230, y: 420).colorInvert()
            Button(action: {ForSOCH.CalculateTwo()}, label: {Text("<2>")}).position(x: 160, y: 420).colorInvert()
            Button(action: {ForSOCH.CalculateOne()}, label: {Text("<1>")}).position(x: 90, y: 420).colorInvert()
        }
    }
}

