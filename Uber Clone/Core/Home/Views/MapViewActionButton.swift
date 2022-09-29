//
//  MapVIewActionButton.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/28/22.
//

import SwiftUI

struct MapViewActionButton: View {
    
    //MARK: - Properties
    
    @Binding var showLocationSearchView: Bool
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                showLocationSearchView.toggle()
            }
        } label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }
}

struct MapVIewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(showLocationSearchView: .constant(false))
    }
}
