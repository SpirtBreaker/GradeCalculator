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
            Color.black.ignoresSafeArea()
            ButtonsForSOCH().zIndex(100)
            Rectan()
            NavigationLink(destination: FinalGrade()){
                EmptyView()
            }
            Button("-->Count Final Grade"){
            }.position(x: 220, y: 15)
            NavigationLink(destination: SOR()){
                EmptyView()
            }
            Button("<--SOR"){
            }.position(x: 60, y: 15)
            Button("Change FACT/MAX"){
                ForSOCH.ChangeBool()
            }.position(x: 160, y: 150)
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
    public static var Tool = false
    
    public static func ChangeBool(){
        if Tool == false{
            Tool = true
        }
        else if Tool == true{
            Tool = false
        }
    }
    
    static func CalculateZero(){
        if Tool == false{
            SOCHfact += "0"
        }
        else{
            SOCHmax += "0"
        }
    }
    
    static func CalculateNine(){
        if Tool == false{
            SOCHfact += "9"
        }
        else{
            SOCHmax += "9"
        }
    }
    
    static func CalculateEight(){
        if Tool == false{
            SOCHfact += "8"
        }
        else{
            SOCHmax += "8"
        }
    }
    
    static func CalculateSeven(){
        if Tool == false{
            SOCHfact += "7"
        }
        else{
            SOCHmax += "7"
        }
    }
    
    static func CalculateSix(){
        if Tool == false{
            SOCHfact += "6"
        }
        else{
            SOCHmax += "6"
        }
    }
    
    static func CalculateFive(){
        if Tool == false{
            SOCHfact += "5"
        }
        else{
            SOCHmax += "5"
        }
    }
    
    static func CalculateFour(){
        if Tool == false{
            SOCHfact += "4"
        }
        else{
            SOCHmax += "4"
        }
    }
    
    static func CalculateThree(){
        if Tool == false{
            SOCHfact += "3"
        }
        else{
            SOCHmax += "3"
        }
    }
    
    static func CalculateTwo(){
        if Tool == false{
            SOCHfact += "2"
        }
        else{
            SOCHmax += "2"
        }
    }
    
    static func CalculateOne(){
        if Tool == false{
            SOCHfact += "1"
        }
        else{
            SOCHmax += "1"
        }
    }
    

}
struct ButtonsForSOCH: View{
    
    var body: some View{
        ZStack{
            Button(action: {ForSOCH.CalculateZero()}, label: {Text("0")}).position(x: 160, y: 420).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateNine()}, label: {Text("9")}).position(x: 230, y: 300).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateEight()}, label: {Text("8")}).position(x: 160, y: 300).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateSeven()}, label: {Text("7")}).position(x: 90, y: 300).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateSix()}, label: {Text("6")}).position(x: 230, y: 340).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateFive()}, label: {Text("5")}).position(x: 160, y: 340).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateFour()}, label: {Text("4")}).position(x: 90, y: 340).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateThree()}, label: {Text("3")}).position(x: 230, y: 380).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateTwo()}, label: {Text("2")}).position(x: 160, y: 380).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateOne()}, label: {Text("1")}).position(x: 90, y: 380).foregroundColor(.white)
        }
    }
}

struct Rectan: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 90, y: 300)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 160, y: 300)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 230, y: 300)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 90, y: 340)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 160, y: 340)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 230, y: 340)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 90, y: 380)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 160, y: 380)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 230, y: 380)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: 30, height: 30).position(x: 160, y: 420)
    }
}
