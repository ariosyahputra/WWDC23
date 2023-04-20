import SwiftUI

@main
@available(iOS 16.0, *)
struct DiscoverRamadanApp: App {
    @ObservedObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appState)
        }
    }
}
