//
//  SideMenuRowView.swift
//  Twitter Clone
//
//  Created by Vasan C on 21/03/23.
//

import SwiftUI

struct SideMenuRowView: View {
    let viewModel:SideMenuViewModel
    var body: some View {
        HStack{
            Image(systemName: viewModel.image).font(.subheadline)
                .foregroundColor(.gray)
            Text(viewModel.description).font(.subheadline)                .foregroundColor(.black)

            Spacer()
        }.frame(height:40)
            .padding(.horizontal)
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView(viewModel: .profile)
    }
}
