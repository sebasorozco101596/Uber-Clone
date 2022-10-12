//
//  HomeView.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/27/22.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: - Properties
    
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack(alignment: .top) {
            
            UberMapViewRepresentable(mapState: $mapState)
                .ignoresSafeArea()
            
            if mapState == .searchingForLocation {
                LocationSearchView(mapState: $mapState)
            } else if mapState == .noInput {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            mapState = .searchingForLocation
                        }
                    }
            }
            
            MapViewActionButton(mapState: $mapState)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
