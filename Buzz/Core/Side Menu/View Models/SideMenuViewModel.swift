//
//  SideMenuViewModel.swift
//  Twitter Clone
//
//  Created by Vasan C on 21/03/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case profile
    case lists
    case bookmarks
    case logout
    
    var description: String{
        switch self{
        case .bookmarks: return "Bookmarks"
        case .profile: return "profile"
        case .lists: return "lists"
        case .logout: return "logout"
        }
    }
    var image: String{
        switch self{
        case .bookmarks: return "bookmark"
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .logout: return "arrow.left.square"
        }
    }

    
    
}
