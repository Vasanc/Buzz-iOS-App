//
//  ProflileView.swift
//  Twitter Clone
//
//  Created by Vasan C on 20/03/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedOption:TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading){
            Header
            actionButton
            userButtonInfo
            tweetFilter
            tweetsView
            Spacer()
        }
    }
}


struct ProflileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView{
    var Header: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue).ignoresSafeArea()
            VStack{
                Button{
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x:16, y:12)
                }
            Circle()
                .frame(width: 72, height: 72)
                .offset(x:16, y:24)
        }
    }.frame(height:96)
}

    
    var actionButton: some View{
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button{
                
            }label:{
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 0.75))
                    .foregroundColor(.black)
            }
        }.padding(.trailing)
        
    }
    var userButtonInfo: some View{
        VStack(alignment: .leading, spacing: 4){
            HStack{
                Text("Heath ledger")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your mom's favourite villain")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 32){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                }
                HStack{
                    Image(systemName: "link")
                    Text("www.thejoker.com")
                }
            }
            .foregroundColor(.gray)
            .font(.caption)
            UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    var tweetFilter: some View{
        HStack{
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedOption == item ? .semibold : .regular)
                        .foregroundColor(selectedOption == item ? .black : .gray)
                    
                    if selectedOption == item{
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }
                    else{
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                    
                }.onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedOption = item
                    }
                }
                
            }
        }.overlay(Divider().offset(y:15))
    }
    
    var tweetsView: some View{
        ScrollView{
            LazyVStack{
                ForEach(0...9, id : \.self){ _ in
                    TweetsRowView()
                }
            }
        }
    }
}
