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
    @State var isLogIn = false
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Buttons().zIndex(100)
            NavigationLink(destination: FinalGrade(), isActive: $isLogIn){
                EmptyView()
            }
            Button("Count final grade"){
                self.isLogIn.toggle()
            }.position(x: 155, y: 40)
            NavigationLink(destination: SOR(), isActive: $isLogIn){
                EmptyView()
            }
            Button("-->SOR"){
                self.isLogIn.toggle()
            }.position(x: 250, y: 0)
            NavigationLink(destination: SOCH(), isActive: $isLogIn){
                EmptyView()
            }
            Button("<--SOCH"){
                self.isLogIn.toggle()
            }.position(x: 90, y: 0)
            Button(action: {CountGrade()}, label: {Text("Grade")})
            Recta()
        }.navigationBarBackButtonHidden(true)
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
            Button(action: {ForSumm.CountTen()}, label: {Text("10")}).position(x: 90, y: 300).foregroundColor(.white)
            Button(action: {ForSumm.CountNine()}, label: {Text("9")}).position(x: 160, y: 300).foregroundColor(.white)
            Button(action: {ForSumm.CountEight()}, label: {Text("8")}).position(x: 230, y: 300).foregroundColor(.white)
            Button(action: {ForSumm.CountSeven()}, label: {Text("7")}).position(x: 90, y: 340).foregroundColor(.white)
            Button(action: {ForSumm.CountSix()}, label: {Text("6")}).position(x: 160, y: 340).foregroundColor(.white)
            Button(action: {ForSumm.CountFive()}, label: {Text("5")}).position(x: 230, y: 340).foregroundColor(.white)
            Button(action: {ForSumm.CountFour()}, label: {Text("4")}).position(x: 90, y: 380).foregroundColor(.white)
            Button(action: {ForSumm.CountThree()}, label: {Text("3")}).position(x: 160, y: 380).foregroundColor(.white)
            Button(action: {ForSumm.CountTwo()}, label: {Text("2")}).position(x: 230, y: 380).foregroundColor(.white)
            Button(action: {ForSumm.CountOne()}, label: {Text("1")}).position(x: 160, y: 420).foregroundColor(.white)
        }
    }
}

struct Recta: View{
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
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

