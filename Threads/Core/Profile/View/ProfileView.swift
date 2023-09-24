//
//  ProfileView.swift
//  Threads
//
//  Created by Bhishak Sanyal on 27/08/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 16) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Bhishak Sanyal")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("prometheus_kilua")
                                .font(.subheadline)
                        }
                        
                        Text("Technical Lead")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 35)
                        .background(.black)
                        .cornerRadius(8)
                })
                
                // User content list view
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .bold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0...10, id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                
            }
        }
        .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
