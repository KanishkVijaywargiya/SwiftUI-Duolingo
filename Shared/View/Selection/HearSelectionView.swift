//
//  SelectionView.swift
//  duolingo (iOS)
//
//  Created by KANISHK VIJAYWARGIYA on 02/06/21.
//

import SwiftUI

struct HearSelectionView: View {
    let language: String
    
    var body: some View {
        Text(language)
    }
}

struct HearSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        HearSelectionView(language: "Hindi")
    }
}
