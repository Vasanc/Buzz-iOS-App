//
//  TweetFilterViewModel.swift
//  Twitter Clone
//
//  Created by Vasan C on 20/03/23.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
case tweets
case replies
case likes
    
    var title: String{
        switch self{
        case .likes:
            return "likes"
        case .replies:
            return "replies"
        case .tweets:
            return "tweets"
        }
    }
}
