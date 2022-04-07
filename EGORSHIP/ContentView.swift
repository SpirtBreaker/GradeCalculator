//
//  ContentView.swift
//  EGORSHIP
//
//  Created by Admin on 06.02.2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    
    var body: some View{
        
        NavigationView{
            VStack{
                
                
                SignIn().position(x: 130, y: 100)
                
                //                List(users) { user in
                //                    HStack{
                //                        Text("Name: \(user.login ?? " "), Role: \(user.role ?? " ")")
                //
                //                    }
            }.padding().frame(width: 300, height: 100)
            
        }
        
    }
}
struct SignIn: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var isAdmin = false
    @State var login: String = ""
    @State var password: String = ""
    @State var pos1: CGFloat = 1000
    @State var pos2: CGFloat = 1000
    @State var isLogIn = false
    
    func Change(){
        if pos1 == 1000 && pos2 == 1000{
            pos1 = 130
            pos2 = -100
        }
    }
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10).fill(Color.black).frame(width: 250, height: 110).position(x: pos1, y: pos2)
            NavigationLink(destination: UserView(), isActive: $isLogIn){
                EmptyView()
            }.position(x: pos1, y: pos2)
            Button("GO"){
                self.isLogIn.toggle()
            }.position(x: pos1, y: pos2).foregroundColor(.orange)
        }
        VStack{
            TextField("Login: ", text: $login)
            TextField("Password: ", text: $password)
            Button("Log in"){
                for user in users{
                    if user.login == login && user.password == password && user.role == "Admin"{
                        self.isAdmin = true
                        Change()
                    }
                    else if user.login == login && user.password == password{
                        Change()
                    }
                    else{
                        print("NOT")
                    }
                }
            }.foregroundColor(.orange)
            Button("Register"){
                do{
                    let user = User(context: moc)
                    user.id = UUID()
                    user.password = password
                    user.login = login
                    if (user.login == "Admin") && (user.password == "Admin"){
                        user.role = "Admin"
                    }
                    else{
                        user.role = "Common user"
                    }
                    try moc.save()
                }catch{
                    print(error)
                }
            }.foregroundColor(.orange)
            Button("Delete all"){
                let user = User(context: moc)
                if isAdmin == true{
                    for item in users{
                        moc.delete(item)
                    }
                }
                try? moc.save()
            }.foregroundColor(.orange)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPod touch (7th generation)")
    }
}
