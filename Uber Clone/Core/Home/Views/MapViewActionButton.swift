//
//  MapVIewActionButton.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/28/22.
//

import SwiftUI

struct MapViewActionButton: View {
    
    //MARK: - Properties
    @Binding var mapState: MapViewState
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                actionForState(mapState)
            }
        } label: {
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    //MARK: - Functions for to deal with the enum of the mapview
    
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            print("DEBUG: No input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected:
            mapState = .noInput
        }
    }
    
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected:
            return "arrow.left"
        }
    }
}

struct MapVIewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(mapState: .constant(.noInput))
    }
}
