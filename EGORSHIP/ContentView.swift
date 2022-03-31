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
    @State var login = ""
    @State var password = ""
    @State var i = 0
    @State var mail = ""
    
    @State var isLogIn = false
    
    var body: some View{
        
        NavigationView{
            
            VStack{
                
                List(users) { user in
                    HStack{
                        Text("Name: \(user.login ?? "UU"), Role: \(user.role ?? "UU")")
                        
                    }
                }
                TextField("Login", text: $login)
                TextField("Password", text: $password)
                //Picker(selection: $mails, content: , label: Text("Mail"))
                Button("Register"){
//                    let names = ["Tom", "Jony", "Victoris"]
//                    let lastnames = ["Kruiz", "Goran", "Stephary"]
//                    let thisName = login
//                    let thisLastName = lastnames.randomElement()
                    do{
                        let user = User(context: moc)
                        user.id = UUID()
                        for i in 0...6{
                            if password.count >= 5{
                                user.password = password
                            }
                            else{
                                Text("Error").position(x: 160, y: -50)
                            }
                            if login.count >= 3{
                                user.login = login
                            }
                            else{
                                Text("Error").position(x: 160, y: -50)
                            }
                        }
                        user.password = password
                        user.login = login
                        user.role = "Common User"
                        if user.login == "Admin"{
                            if user.password == "Admin"{
                                user.role = "Admin"
                            }
                        }
                        try moc.save()
                    }catch{
                        print(error)
                    }
                }

                NavigationLink(destination: UserView(), isActive: $isLogIn){
                    EmptyView()
                }
                Button("Log in"){
                    self.isLogIn.toggle()
                    let user = User(context: moc)
                    if login == user.login{
                        if password == user.password{
                        }
                    }
                }
                
                Button("Delete all"){
                    let user = User(context: moc)
                    if user.role == "Admin"{
                    for user in users{
                        try? moc.delete(user)
                    }
                    }
                    else{
                        print("Error")
                    }
                }.padding().frame(width: 300, height: 100).foregroundColor(.red)
                
            }
        }
        .navigationTitle("Users")
    }
}
struct SignIn: View{
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<User>
    @State var isAdmin = false
    @State var login: String = ""
    @State var password: String = ""
    var body: some View{
        NavigationView{
            VStack{
                TextField("Login: ", text: $login)
                TextField("Password: ", text: $password)
                Button("Sign In"){
                    for user in users{
                        if user.login == login && user.password == password && user.role == "Admin"{
                            self.isAdmin = true
                        }
                        else{
                            print("NOT")
                        }
                    }
                }
            }
            .navigationTitle("Sign In")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPod touch (7th generation)")
    }
}
