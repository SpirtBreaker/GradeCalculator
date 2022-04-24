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
            }.position(x: 190, y: 190).foregroundColor(.orange)
            Text("\(Grade)").position(x: 190, y: 100).foregroundColor(.white).font(.system(size: 50))
            Button(action: RemoveAllInfo, label: {Text("Count another subject")}).position(x: 190, y: 450).foregroundColor(.orange)
            Text("\(temp5)").position(x: 190, y: 290).foregroundColor(.white).font(.system(size: 50))
        }
    }
}

