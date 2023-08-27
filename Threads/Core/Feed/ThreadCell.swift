//
//  ThreadCell.swift
//  Threads
//
//  Created by Bhishak Sanyal on 27/08/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("threads_app_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("bisuman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }

                    }
                    
                    Text("Ferrari driver trying to win a championship. Ferrari driver trying. Ferrari driver trying to win a championship. Ferrari driver trying. Ferrari driver trying to win a championship. Ferrari driver trying. Ferrari driver trying to win a championship. Ferrari driver trying.")
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 10)
                }
                
            }
            
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
