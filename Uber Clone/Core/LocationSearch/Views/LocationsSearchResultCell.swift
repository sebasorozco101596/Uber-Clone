//
//  LocationsSearchResultCell.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/28/22.
//

import SwiftUI

struct LocationsSearchResultCell: View {
    
    //MARK: - Properties
    let title: String
    let subtitle: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.body)
                
                Text(subtitle)
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
        
    }
}

struct LocationsSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationsSearchResultCell(title: "Statbucks", subtitle: "123 Main street")
    }
}
