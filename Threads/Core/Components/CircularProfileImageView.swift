//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Bhishak Sanyal on 28/08/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("profile_image")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
