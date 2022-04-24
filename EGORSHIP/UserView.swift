//
//  UserView.swift
//  EGORSHIP
//
//  Created by Admin on 13.02.2022.
//
import CoreData
import SwiftUI
import Foundation
import UIKit


struct UserView: View {
    @State var isFinal = false
    @State var isSor = false
    @State var isSoch = false
    
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Buttons().zIndex(100)
            NavigationLink(destination: FinalGrade(), isActive: $isFinal){
                EmptyView()
            }.position(x: 190, y: 100)
            Button("Count final grade"){
                self.isFinal.toggle()
            }.position(x: 190, y: 100).foregroundColor(.orange)
            NavigationLink(destination: SOR(), isActive: $isSor){
                EmptyView()
            }.position(x: 290, y: 40)
            Button("-->SOR"){
                self.isSor.toggle()
            }.position(x: 290, y: 40).foregroundColor(.orange)
            NavigationLink(destination: SOCH(), isActive: $isSoch){
                EmptyView()
            }.position(x: 90, y: 40)
            Button("<--SOCH"){
                self.isSoch.toggle()
            }.position(x: 90, y: 40).foregroundColor(.orange)
            Recta()
            //TextField("FO",text: Binding<String>(ForSumm.txt)).position(x: 190, y: 170).foregroundColor(.white)
            //TextField("FO", text: ForSumm.$txt)
                //.onChange(of: ForSumm.txt, perform: { value in
                //}).position(x: 190, y: 170).foregroundColor(.white)
        }.navigationBarBackButtonHidden(true)
    }
}
//доработка, вывод введённых оценок через текстфилды
public class ForSumm{
    public static var summfact = 0
    public static var summmax = 0
    public static var txt: String = ""

    static func CountTen(){
        summfact += 10
        summmax += 1
        txt += "10 "
    }
    
    static func CountNine(){
        summfact += 9
        summmax += 1
        txt += "9 "
    }
    
    static func CountEight(){
        summfact += 8
        summmax += 1
        txt += "8 "
    }
    
    static func CountSeven(){
        summfact += 7
        summmax += 1
        txt += "7 "
    }
    
    static func CountSix(){
        summfact += 6
        summmax += 1
        txt += "6 "
    }
    
    static func CountFive(){
        summfact += 5
        summmax += 1
        txt += "5 "
    }
    
    static func CountFour(){
        summfact += 4
        summmax += 1
        txt += "4 "
    }
    
    static func CountThree(){
        summfact += 3
        summmax += 1
        txt += "3 "
    }
    
    static func CountTwo(){
        summfact += 2
        summmax += 1
        txt += "2 "
    }
    
    static func CountOne(){
        summfact += 1
        summmax += 1
        txt += "1 "
    }
}



struct Buttons: View{
    
    var body: some View{
        let sizeText: CGFloat = 50
        ZStack{
            Button(action: {ForSumm.CountTen()}, label: {Text("10").font(.system(size: sizeText))}).position(x: 100, y: 400).foregroundColor(.white)
            Button(action: {ForSumm.CountNine()}, label: {Text("9").font(.system(size: sizeText))}).position(x: 190, y: 400).foregroundColor(.white)
            Button(action: {ForSumm.CountEight()}, label: {Text("8").font(.system(size: sizeText))}).position(x: 280, y: 400).foregroundColor(.white)
            Button(action: {ForSumm.CountSeven()}, label: {Text("7").font(.system(size: sizeText))}).position(x: 100, y: 460).foregroundColor(.white)
            Button(action: {ForSumm.CountSix()}, label: {Text("6").font(.system(size: sizeText))}).position(x: 190, y: 460).foregroundColor(.white)
            Button(action: {ForSumm.CountFive()}, label: {Text("5").font(.system(size: sizeText))}).position(x: 280, y: 460).foregroundColor(.white)
            Button(action: {ForSumm.CountFour()}, label: {Text("4").font(.system(size: sizeText))}).position(x: 100, y: 520).foregroundColor(.white)
            Button(action: {ForSumm.CountThree()}, label: {Text("3").font(.system(size: sizeText))}).position(x: 190, y: 520).foregroundColor(.white)
            Button(action: {ForSumm.CountTwo()}, label: {Text("2").font(.system(size: sizeText))}).position(x: 280, y: 520).foregroundColor(.white)
            Button(action: {ForSumm.CountOne()}, label: {Text("1").font(.system(size: sizeText))}).position(x: 190, y: 580).foregroundColor(.white)
        }
    }
}

struct Recta: View{
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

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

