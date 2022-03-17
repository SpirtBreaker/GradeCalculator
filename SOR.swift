//
//  SOR.swift
//  EGORSHIP
//
//  Created by Admin on 06.03.2022.
//

import SwiftUI

struct SOR: View {
    var body: some View {
        ZStack{
            Color.indigo.ignoresSafeArea()
        NavigationLink(destination: SOCH(), label: {
            Text("Count SOCH -->")
        }).position(x: 140, y: -140).foregroundColor(.white).frame(width: 100, height: 200)
        NavigationLink(destination: UserView(), label: {
            Text("<-- Count FO")
        }).position(x: -40, y:-140).foregroundColor(.white).frame(width: 100, height: 200)
        ButtonsForSOR()
    }
}
}

struct SOR_Previews: PreviewProvider {
    static var previews: some View {
        SOR()
    }
}
public class ForSOR{
    public static var SORfact = ""
    public static var SORmax = ""
    
    static func CalculateZero(){
        SORfact += "0"
    }
    
    static func CalculateNine(){
        SORfact += "9"
    }
    
    static func CalculateEight(){
        SORfact += "8"
    }
    
    static func CalculateSeven(){
        SORfact += "7"
    }
    
    static func CalculateSix(){
        SORfact += "6"
    }
    
    static func CalculateFive(){
        SORfact += "5"
    }
    
    static func CalculateFour(){
        SORfact += "4"
    }
    
    static func CalculateThree(){
        SORfact += "3"
    }
    
    static func CalculateTwo(){
        SORfact += "2"
    }
    
    static func CalculateOne(){
        SORfact += "1"
    }
    
}
struct ButtonsForSOR: View{
    
    var body: some View{
        ZStack{
            Button(action: {ForSOR.CalculateZero()}, label: {Text("<0>")}).position(x: 160, y: 460).colorInvert()
            Button(action: {ForSOR.CalculateNine()}, label: {Text("<9>")}).position(x: 230, y: 340).colorInvert()
            Button(action: {ForSOR.CalculateEight()}, label: {Text("<8>")}).position(x: 160, y: 340).colorInvert()
            Button(action: {ForSOR.CalculateSeven()}, label: {Text("<7>")}).position(x: 90, y: 340).colorInvert()
            Button(action: {ForSOR.CalculateSix()}, label: {Text("<6>")}).position(x: 230, y: 380).colorInvert()
            Button(action: {ForSOR.CalculateFive()}, label: {Text("<5>")}).position(x: 160, y: 380).colorInvert()
            Button(action: {ForSOR.CalculateFour()}, label: {Text("<4>")}).position(x: 90, y: 380).colorInvert()
            Button(action: {ForSOR.CalculateThree()}, label: {Text("<3>")}).position(x: 230, y: 420).colorInvert()
            Button(action: {ForSOR.CalculateTwo()}, label: {Text("<2>")}).position(x: 160, y: 420).colorInvert()
            Button(action: {ForSOR.CalculateOne()}, label: {Text("<1>")}).position(x: 90, y: 420).colorInvert()
        }
    }
}

