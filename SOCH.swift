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
            Button("Change FACT/MAX"){
                ForSOCH.ChangeBool()
            }.position(x: 190, y: 250).foregroundColor(.orange)
            Text(ForSOCH.txt2).position(x: 190, y: 180).foregroundColor(.white).font(.system(size: 50))
            Text(ForSOCH.txt).position(x: 190, y: 120).foregroundColor(.white).font(.system(size: 50))
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
    
    static func CalculateZero(){
        if Tool == false{
            SOCHfact += "0"
            txt += "0"
        }
        else{
            SOCHmax += "0"
            txt2 += "0"
        }
    }
    
    static func CalculateNine(){
        if Tool == false{
            SOCHfact += "9"
            txt += "9"
        }
        else{
            SOCHmax += "9"
            txt2 += "9"
        }
    }
    
    static func CalculateEight(){
        if Tool == false{
            SOCHfact += "8"
            txt += "8"
        }
        else{
            SOCHmax += "8"
            txt2 += "8"
        }
    }
    
    static func CalculateSeven(){
        if Tool == false{
            SOCHfact += "7"
            txt += "7"
        }
        else{
            SOCHmax += "7"
            txt2 += "7"
        }
    }
    
    static func CalculateSix(){
        if Tool == false{
            SOCHfact += "6"
            txt += "6"
        }
        else{
            SOCHmax += "6"
            txt2 += "6"
        }
    }
    
    static func CalculateFive(){
        if Tool == false{
            SOCHfact += "5"
            txt += "5"
        }
        else{
            SOCHmax += "5"
            txt2 += "5"
        }
    }
    
    static func CalculateFour(){
        if Tool == false{
            SOCHfact += "4"
            txt += "4"
        }
        else{
            SOCHmax += "4"
            txt2 += "4"
        }
    }
    
    static func CalculateThree(){
        if Tool == false{
            SOCHfact += "3"
            txt += "3"
        }
        else{
            SOCHmax += "3"
            txt2 += "3"
        }
    }
    
    static func CalculateTwo(){
        if Tool == false{
            SOCHfact += "2"
            txt += "2"
        }
        else{
            SOCHmax += "2"
            txt2 += "2"
        }
    }
    
    static func CalculateOne(){
        if Tool == false{
            SOCHfact += "1"
            txt += "1"
        }
        else{
            SOCHmax += "1"
            txt2 += "1"
        }
    }
    

}
struct ButtonsForSOCH: View{
    
    var body: some View{
        let sizeText: CGFloat = 50
        ZStack{
            Button(action: {ForSOCH.CalculateZero()}, label: {Text("0").font(.system(size: sizeText))}).position(x: 190, y: 580).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateNine()}, label: {Text("9").font(.system(size: sizeText))}).position(x: 280, y: 520).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateEight()}, label: {Text("8").font(.system(size: sizeText))}).position(x: 190, y: 520).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateSeven()}, label: {Text("7").font(.system(size: sizeText))}).position(x: 100, y: 520).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateSix()}, label: {Text("6").font(.system(size: sizeText))}).position(x: 280, y: 460).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateFive()}, label: {Text("5").font(.system(size: sizeText))}).position(x: 190, y: 460).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateFour()}, label: {Text("4").font(.system(size: sizeText))}).position(x: 100, y: 460).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateThree()}, label: {Text("3").font(.system(size: sizeText))}).position(x: 280, y: 400).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateTwo()}, label: {Text("2").font(.system(size: sizeText))}).position(x: 190, y: 400).foregroundColor(.white)
            Button(action: {ForSOCH.CalculateOne()}, label: {Text("1").font(.system(size: sizeText))}).position(x: 100, y: 400).foregroundColor(.white)
        }
    }
}

struct Rectan: View{
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
