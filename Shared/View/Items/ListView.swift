//
//  ListItemCell.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 05/06/21.
//

import SwiftUI

struct ListView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height:50)
            
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .padding(.horizontal, 15)
        }
    }
}

struct ListViewListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(image: "cover", text: "Web Search")
    }
}
