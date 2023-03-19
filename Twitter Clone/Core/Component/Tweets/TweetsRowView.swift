//
//  TweetsRowView.swift
//  Twitter Clone
//
//  Created by Vasan C on 19/03/23.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top, spacing: 12) {
                //profile picture
                Circle()
                    .foregroundColor(Color(.systemBlue))
                    .frame(width: 56, height: 56)
                 
                VStack(alignment: .leading, spacing: 4){
                    //userdetails
                    HStack{
                        Text("Vasan")
                            .font(.subheadline).bold()
                        Text("@vasan")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        Text("2w")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                    }
                    //tweet
                    Text("I believe in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        
                }
            }
            //action buttons
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "bubble.left")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "bookmark")
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        .padding()
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
