//
//  ExploreView.swift
//  Threads
//
//  Created by Bhishak Sanyal on 27/08/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...20, id: \.self) { user in
                        VStack {
                            HStack {
                                Image("threads_app_logo")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text("bhishaksanyal")
                                        .fontWeight(.semibold)
                                    
                                    Text("Bhishak Sanyal")
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                                Text("Follow")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                            }
                            .padding(.horizontal)
                            
                            Divider()
                                .padding(.horizontal)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.automatic)
        .searchable(text: $searchText, prompt: "Search")
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
