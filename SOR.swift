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
            Button("Change FACT/MAX"){
                ForSOR.ChangeBool()
            }.position(x: 190, y: 250).foregroundColor(.orange)
            Text(ForSOR.txt2).position(x: 190, y: 180).foregroundColor(.white).font(.system(size: 50))
            Text(ForSOR.txt).position(x: 190, y: 120).foregroundColor(.white).font(.system(size: 50))
        }
    }
}

struct SOR_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SOR()
        }
    }
}
public class ForSOR{
    public static var SORfact = ""
    public static var SORmax = ""
    public static var Tool = false
    public static var txt = ""
    public static var txt2 = ""
    
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
            txt += "0"
        }
        else if Tool == true{
            SORmax += "0"
            txt2 += "0"
        }
    }
    
    public static func CalculateNine(){
        if Tool == false{
            SORfact += "9"
            txt += "9"
    }
        else if Tool == true{
            SORmax += "9"
            txt2 += "9"
        }
    }
    
    public static func CalculateEight(){
        if Tool == true{
            SORfact += "8"
            txt += "8"
    }
        else if Tool == false{
            SORmax += "8"
            txt2 += "8"
        }
    }
    
    public static func CalculateSeven(){
        if Tool == false{
            SORfact += "7"
            txt += "7"
    }
        else if Tool == true{
            SORmax += "7"
            txt2 += "7"
        }
    }
    
    public static func CalculateSix(){
        if Tool == false{
            SORfact += "6"
            txt += "6"
    }
        else if Tool == true{
            SORmax += "6"
            txt2 += "6"
        }
    }
    
    public static func CalculateFive(){
        if Tool == false{
            SORfact += "5"
            txt += "5"
    }
        else if Tool == true{
            SORmax += "5"
            txt2 += "5"
        }
    }
    
    public static func CalculateFour(){
        if Tool == false{
            SORfact += "4"
            txt += "4"
    }
        else if Tool == true{
            SORmax += "4"
            txt2 += "4"
        }
    }
    
    public static func CalculateThree(){
        if Tool == false{
            SORfact += "3"
            txt += "3"
    }
        else if Tool == true{
            SORmax += "3"
            txt2 += "3"
        }
    }
    
    public static func CalculateTwo(){
        if Tool == false{
            SORfact += "2"
            txt += "2"
    }
        else if Tool == true{
            SORmax += "2"
            txt2 += "2"
        }
    }
    
    public static func CalculateOne(){
        if Tool == false{
            SORfact += "1"
            txt += "1"
    }
        else if Tool == true{
            SORmax += "1"
            txt2 += "1"
        }
    }
    
}
struct ButtonsForSOR: View{
    
    var body: some View{
        let sizeText: CGFloat = 50
        ZStack{
            Button(action: {ForSOR.CalculateZero()}, label: {Text("0").font(.system(size: sizeText))}).position(x: 190, y: 580).foregroundColor(.white)
            Button(action: {ForSOR.CalculateNine()}, label: {Text("9").font(.system(size: sizeText))}).position(x: 280, y: 520).foregroundColor(.white)
            Button(action: {ForSOR.CalculateEight()}, label: {Text("8").font(.system(size: sizeText))}).position(x: 190, y: 520).foregroundColor(.white)
            Button(action: {ForSOR.CalculateSeven()}, label: {Text("7").font(.system(size: sizeText))}).position(x: 100, y: 520).foregroundColor(.white)
            Button(action: {ForSOR.CalculateSix()}, label: {Text("6").font(.system(size: sizeText))}).position(x: 280, y: 460).foregroundColor(.white)
            Button(action: {ForSOR.CalculateFive()}, label: {Text("5").font(.system(size: sizeText))}).position(x: 190, y: 460).foregroundColor(.white)
            Button(action: {ForSOR.CalculateFour()}, label: {Text("4").font(.system(size: sizeText))}).position(x: 100, y: 460).foregroundColor(.white)
            Button(action: {ForSOR.CalculateThree()}, label: {Text("3").font(.system(size: sizeText))}).position(x: 280, y: 400).foregroundColor(.white)
            Button(action: {ForSOR.CalculateTwo()}, label: {Text("2").font(.system(size: sizeText))}).position(x: 190, y: 400).foregroundColor(.white)
            Button(action: {ForSOR.CalculateOne()}, label: {Text("1").font(.system(size: sizeText))}).position(x: 100, y: 400).foregroundColor(.white)
        }
    }
}

struct Rectang: View{
    var body: some View{
        let Radius: CGFloat = 55
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 100, y: 520)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 100, y: 460)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 100, y: 400)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 190, y: 520)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 190, y: 460)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 190, y: 400)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 190, y: 580)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 280, y: 520)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 280, y: 460)
        RoundedRectangle(cornerRadius: 100).fill(.gray).frame(width: Radius, height: Radius).position(x: 280, y: 400)
    }
}
