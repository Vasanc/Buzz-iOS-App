//
//  ContentView.swift
//  Twitter Clone
//
//  Created by Vasan C on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        ZStack(alignment: .topLeading){
            MainTabView()
                .toolbar(showMenu ? .hidden: .visible)
            
            if showMenu{
                ZStack{
                    Color(.black).opacity(showMenu ? 0.25 : 0)
                }.onTapGesture {
                    withAnimation(.easeInOut){
                        showMenu = false
                    }
                }.ignoresSafeArea()
            }
            SideMenuView().frame(width: 300)
                .background(showMenu ? Color.white : Color.clear)
                .offset(x: showMenu ? 0 : -300)
    
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                    }
                }label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
        .onAppear{
            showMenu = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(){
            ContentView()
        }
    }
}
