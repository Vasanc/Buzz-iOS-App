//
//  UserStatsView.swift
//  Twitter Clone
//
//  Created by Vasan C on 22/03/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 32){
            HStack(spacing: 4){
                Text("200").bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4){
                Text("400").bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
