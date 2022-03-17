//
//  UserView.swift
//  EGORSHIP
//
//  Created by Admin on 13.02.2022.
//
import CoreData
import SwiftUI
import Foundation

struct UserView: View {
    @State var Grade = "Ваша оценка"
    
    func CountGrade(){
        
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color.indigo.ignoresSafeArea()
                Buttons()
                NavigationLink(destination: SOR(), label: {
                    Text("Count SOR -->")
                }).position(x: 140, y: -180).foregroundColor(.white).frame(width: 100, height: 200)
                NavigationLink(destination: SOCH(), label: {
                    Text("<-- Count SOCH")
                }).position(x: -40, y: -180).foregroundColor(.white).frame(width: 100, height: 200)
                Text("Count FO").position(x: 155, y: 100)
                Button(action: {CountGrade()}, label: {Text("Grade")})
            }
        }.navigationTitle(Text("asd"))
    }
}

public class ForSumm{
    public static var summfact = 0
    public static var summmax = 0
    
    static func CountTen(){
        summfact += 10
        summmax += 1
    }
    
    static func CountNine(){
        summfact += 9
        summmax += 1
    }
    
    static func CountEight(){
        summfact += 8
        summmax += 1
    }
    
    static func CountSeven(){
        summfact += 7
        summmax += 1
    }
    
    static func CountSix(){
        summfact += 6
        summmax += 1
    }
    
    static func CountFive(){
        summfact += 5
        summmax += 1
    }
    
    static func CountFour(){
        summfact += 4
        summmax += 1
    }
    
    static func CountThree(){
        summfact += 3
        summmax += 1
    }
    
    static func CountTwo(){
        summfact += 2
        summmax += 1
    }
    
    static func CountOne(){
        summfact += 1
        summmax += 1
    }
}
struct Buttons: View{
    
    
    var body: some View{
        ZStack{
            Button(action: {ForSumm.CountTen()}, label: {Text("<10>")}).position(x: 90, y: 300).colorInvert()
            Button(action: {ForSumm.CountNine()}, label: {Text("<9>")}).position(x: 160, y: 300).colorInvert()
            Button(action: {ForSumm.CountEight()}, label: {Text("<8>")}).position(x: 230, y: 300).colorInvert()
            Button(action: {ForSumm.CountSeven()}, label: {Text("<7>")}).position(x: 90, y: 340).colorInvert()
            Button(action: {ForSumm.CountSix()}, label: {Text("<6>")}).position(x: 160, y: 340).colorInvert()
            Button(action: {ForSumm.CountFive()}, label: {Text("<5>")}).position(x: 230, y: 340).colorInvert()
            Button(action: {ForSumm.CountFour()}, label: {Text("<4>")}).position(x: 90, y: 380).colorInvert()
            Button(action: {ForSumm.CountThree()}, label: {Text("<3>")}).position(x: 160, y: 380).colorInvert()
            Button(action: {ForSumm.CountTwo()}, label: {Text("<2>")}).position(x: 230, y: 380).colorInvert()
            Button(action: {ForSumm.CountOne()}, label: {Text("<1>")}).position(x: 160, y: 420).colorInvert()
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

