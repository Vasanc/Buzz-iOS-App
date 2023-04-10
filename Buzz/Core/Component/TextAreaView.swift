//
//  TextAreaView.swift
//  Twitter Clone
//
//  Created by Vasan C on 02/04/23.
//

import SwiftUI

struct TextAreaView: View {
    @Binding var text: String
    let placeholder: String
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading){
            TextEditor(text: $text)
                .padding(4)
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical, 12)
                
            }
            
        }
        .font(.body)
    }
}


