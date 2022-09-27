//
//  HomeView.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/27/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
