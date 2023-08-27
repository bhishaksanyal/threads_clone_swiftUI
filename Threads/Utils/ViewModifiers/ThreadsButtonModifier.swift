//
//  ThreadsButtonModifier.swift
//  Threads
//
//  Created by Bhishak Sanyal on 27/08/23.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 40, height: 50)
            .background(.black)
            .cornerRadius(8)
    }
}
