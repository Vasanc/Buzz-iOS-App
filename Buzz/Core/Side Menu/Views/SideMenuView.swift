//
//  SideMenuView.swift
//  Twitter Clone
//
//  Created by Vasan C on 21/03/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 32){
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height:48)
                VStack(alignment: .leading, spacing: 4){
                    Text("Joker")
                        .font(.headline)
                    
                    Text("@joker")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                UserStatsView().padding(.vertical)
            }.padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){viewModel in
                if (viewModel == .profile){
                    NavigationLink{
                        ProfileView()
                    } label:{
                        SideMenuRowView(viewModel: viewModel)
                    }
                }
                else{
                    SideMenuRowView(viewModel: viewModel)
                }
                
            }
            Spacer()

        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


