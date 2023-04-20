//
//  ContentView.swift
//  DiscoverRamadan
//
//  Created by Ario Syahputra on 07/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        HomeView()
            .id(appState.rootViewId)
            .preferredColorScheme(.light)
        
    }
}

@available(iOS 16.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
