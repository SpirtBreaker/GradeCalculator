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
                RoundedRectangle(cornerRadius: 10).fill(Color.red).frame(width: 250, height: 110).position(x: Sig.pos1, y: Sig.pos2)
                Registation().position(x: 130, y: 100)
                
                List(users) { user in
                    HStack{
                        Text("Name: \(user.login ?? "UU"), Role: \(user.role ?? "UU")")
                        
                    }
                }.padding().frame(width: 300, height: 100)
                
            }
            
        }
    }
}
//}
//struct SignIn: View{
//    @Environment(\.managedObjectContext) var moc
//    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
//    @State var isAdmin = false
//    @State var login: String = ""
//    @State var password: String = ""
//    var body: some View{
//        NavigationView{
//            VStack{
//                TextField("Login: ", text: $login)
//                TextField("Password: ", text: $password)
//                Button("Sign In"){
//                    for user in users{
//                        if user.login == login && user.password == password && user.role == "Admin"{
//                            self.isAdmin = true
//                        }
//                        else{
//                            print("NOT")
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Sign In")
//        }
//    }
//}

struct LogIn: View{
    @State var isLogIn = false
    
    var body: some View{
        NavigationLink(destination: UserView(), isActive: $isLogIn){
            EmptyView()
        }
        Button("GO"){
            self.isLogIn.toggle()
        }
    }
}

struct Registation: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var login = ""
    @State var password = ""
    
    
    var body: some View{
        var sig = Sig()
        VStack{
            TextField("Login", text: $login)
            TextField("Password", text: $password)
            
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
            }
            Button("Log in"){
                let user = User(context: moc)
                    if login == user.login && password == user.password{
                        sig.Change()
                    }
                }
            Button("Delete all"){
                DeleteAll()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPod touch (7th generation)")
    }
}
