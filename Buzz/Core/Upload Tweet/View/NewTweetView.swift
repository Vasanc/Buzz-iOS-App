//
//  NewTweetView.swift
//  Twitter Clone
//
//  Created by Vasan C on 02/04/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack{
            HStack{
                Button{
                    mode.wrappedValue.dismiss()
                }label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
//                        .cornerRadius(25)
                        .clipShape(Capsule())
                }
                
            }
            .padding()
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                TextAreaView("What's happening", text: $caption)
            }.padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
