//
//  SOR.swift
//  EGORSHIP
//
//  Created by Admin on 06.03.2022.
//

import SwiftUI

struct SOR: View {
//    if #available(iOS 11, *){
//
//    } 
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            ButtonsForSOR().zIndex(100)
            Rectang()
            NavigationLink(destination: SOCH()){
                EmptyView()
            }
            Button("-->SOCH"){
            }.position(x: 220, y: 15)
            NavigationLink(destination: UserView()){
                EmptyView()
            }
            Button("<--FO"){
            }.position(x: 80, y: 15)
            Button("Change FACT/MAX"){
                ForSOR.ChangeBool()
            }.position(x: 160, y: 150)
        }
    }
}

struct SOR_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SOR()
            SOR()
        }
    }
}
public class ForSOR{
    public static var SORfact = ""
    public static var SORmax = ""
    public static var Tool = false
    
    public static func ChangeBool(){
        if Tool == false{
            Tool = true
        }
        else if Tool == true{
            Tool = false
        }
    }
    
    public static func CalculateZero(){
        if Tool == false{
            SORfact += "0"
        }
        else if Tool == true{
            SORmax += "0"
        }
    }
    
    public static func CalculateNine(){
        if Tool == false{
        SORfact += "9"
    }
        else if Tool == true{
            SORmax += "9"
        }
    }
    
    public static func CalculateEight(){
        if Tool == true{
        SORfact += "8"
    }
        else if Tool == false{
            SORmax += "8"
        }
    }
    
    public static func CalculateSeven(){
        if Tool == false{
        SORfact += "7"
    }
        else if Tool == true{
            SORmax += "7"
        }
    }
    
    public static func CalculateSix(){
        if Tool == false{
        SORfact += "6"
    }
        else if Tool == true{
            SORmax += "6"
        }
    }
    
    public static func CalculateFive(){
        if Tool == false{
        SORfact += "5"
    }
        else if Tool == true{
            SORmax += "5"
        }
    }
    
    public static func CalculateFour(){
        if Tool == false{
        SORfact += "4"
    }
        else if Tool == true{
            SORmax += "4"
        }
    }
    
    public static func CalculateThree(){
        if Tool == false{
        SORfact += "3"
    }
        else if Tool == true{
            SORmax += "3"
        }
    }
    
    public static func CalculateTwo(){
        if Tool == false{
        SORfact += "2"
    }
        else if Tool == true{
            SORmax += "2"
        }
    }
    
    public static func CalculateOne(){
        if Tool == false{
        SORfact += "1"
    }
        else if Tool == true{
            SORmax += "1"
        }
    }
    
}
struct ButtonsForSOR: View{
    
    var body: some View{
        ZStack{
            
            Button(action: {ForSOR.CalculateZero()}, label: {Text("0")}).position(x: 160, y: 420).foregroundColor(.white)
            Button(action: {ForSOR.CalculateNine()}, label: {Text("9")}).position(x: 230, y: 300).foregroundColor(.white)
            Button(action: {ForSOR.CalculateEight()}, label: {Text("8")}).position(x: 160, y: 300).foregroundColor(.white)
            Button(action: {ForSOR.CalculateSeven()}, label: {Text("7")}).position(x: 90, y: 300).foregroundColor(.white)
            Button(action: {ForSOR.CalculateSix()}, label: {Text("6")}).position(x: 230, y: 340).foregroundColor(.white)
            Button(action: {ForSOR.CalculateFive()}, label: {Text("5")}).position(x: 160, y: 340).foregroundColor(.white)
            Button(action: {ForSOR.CalculateFour()}, label: {Text("4")}).position(x: 90, y: 340).foregroundColor(.white)
            Button(action: {ForSOR.CalculateThree()}, label: {Text("3")}).position(x: 230, y: 380).foregroundColor(.white)
            Button(action: {ForSOR.CalculateTwo()}, label: {Text("2")}).position(x: 160, y: 380).foregroundColor(.white)
            Button(action: {ForSOR.CalculateOne()}, label: {Text("1")}).position(x: 90, y: 380).foregroundColor(.white)
            
        }
    }
}

struct Rectang: View{
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
