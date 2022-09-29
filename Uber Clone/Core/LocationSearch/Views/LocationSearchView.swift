//
//  LocationSearchView.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/28/22.
//

import SwiftUI

struct LocationSearchView: View {
    
    //MARK: - Properties
    @State private var startLocationText = ""
    @State private var destinationlocationText = ""
    
    var body: some View {
        VStack {
            
            //MARK: - Header View
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Current location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("Where to?", text: $destinationlocationText)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider()
                .padding(.vertical)
            
            //MARK: - List View
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<20, id: \.self) { _ in
                        LocationsSearchResultCell()
                    }
                }
            }
        }
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
