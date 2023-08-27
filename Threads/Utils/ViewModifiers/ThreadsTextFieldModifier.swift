//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Bhishak Sanyal on 27/08/23.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(15)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal, 20)
    }
}
