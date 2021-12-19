//
//  ContentView.swift
//  QuickSellAssignement
//
//  Created by sabaz shereef on 15/12/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vM = ViewModel()
        
    var body: some View {
        
        ZStack {
            
            cardView()
            plusButton()
            
        }
        .background(Color(UIColor.darkGray))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cardView: View{
    @StateObject var vM = ViewModel()
    var body : some View {
        
        List() {
            
            ForEach(vM.data, id: \.self) { data in
                
                VStack(){
                    
                    HStack(){
                       
                        VStack(alignment: .leading){
                            Text(data.name ?? "No Name")
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .padding(.leading, 4)
                            
                            let subname = Text(data.subname ?? "No Message ")
                                .font(.system(size: 12))
                                .padding(.leading, 4)
                            data.viewed ?? false ? AnyView(subname.foregroundColor(Color.green)) : AnyView(subname.foregroundColor(Color.gray))
                            
                        }
                        
                        Spacer()
                        
                        Image("pro1")
                            .resizable()
                            .scaledToFit()
                            .frame( height: 50)
                            .cornerRadius(5)
                        
                    }
                    
                    HStack(alignment: .center, spacing: 10){
                        
                        Image("eye")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.vertical,4)
                            .padding(.leading,4)
                        
                        Text(String(data.numberOfView ?? 0))
                            .foregroundColor(Color.white)
                        
                        if data.viewed ?? false
                        {
                            Text(" + " + String(data.numberOfView ?? 0) )
                                .foregroundColor(Color.white)
                                .background(Color.red)
                                .cornerRadius(6)
                        }
                        
                        Image("whiteDot")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 5, height: 5)
                        
                        Image("message")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text(String(data.messageCount ?? 0))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        Image("share")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Image("whatsapp")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    
                }
                .listRowInsets(EdgeInsets())
                .background(Color.black)
                .listRowBackground(Color(UIColor.darkGray))
                .listRowSeparator(.hidden)
                .frame( height: 100)
                
            }
        }
        .listStyle(.plain)
        
    }
    
}

struct plusButton: View {
    
    var body : some View {
    
        Button(action: {
            print("button pressed")
        }) {
            Image("plusButton")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
        }
        .frame(width: 10, height: 15, alignment: .bottomTrailing)
        .padding(.leading, UIScreen.main.bounds.size.width - 20)
        .padding(.top, UIScreen.main.bounds.size.height - 40)
        
    }
}
