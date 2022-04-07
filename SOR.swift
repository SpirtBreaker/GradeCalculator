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
