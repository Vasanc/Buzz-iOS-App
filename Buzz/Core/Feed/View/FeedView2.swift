//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Vasan C on 19/03/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showTweet: Bool = false
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id:\.self){ _ in
                        TweetsRowView()
                    }
                }
            }
            Button{
                showTweet.toggle()
            } label: {
                Image(systemName:"network")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showTweet){
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
