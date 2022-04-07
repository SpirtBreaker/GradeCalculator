//
//  FinalGrade.swift
//  EGORSHIP
//
//  Created by Admin on 06.03.2022.
//

import SwiftUI

struct FinalGrade: View {
    var body: some View {
        CountFinalGrade()
        
    }
}

struct FinalGrade_Previews: PreviewProvider {
    static var previews: some View {
        FinalGrade()
    }
}

struct CountFinalGrade: View{
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
            Button{
                CountGrade()
            }label:{
                Text("Count final grade")
            }.position(x: 160, y: 150).foregroundColor(.white)
            Text("\(Grade)").position(x: 160, y: 100).foregroundColor(.white)
        }
    }
}

