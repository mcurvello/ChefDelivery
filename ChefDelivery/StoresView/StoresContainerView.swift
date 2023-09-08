//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 08/09/23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock){store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(order: store)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
    }
}
