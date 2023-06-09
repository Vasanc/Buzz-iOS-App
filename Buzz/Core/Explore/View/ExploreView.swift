//
//  ExploreView.swift
//  Twitter Clone
//
//  Created by Vasan C on 20/03/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0...20, id: \.self){ _ in
                            NavigationLink{
                                ProfileView()
                            }label: {
                                UserRowView()
                            }
                        }
                    }
                }
            }.navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
