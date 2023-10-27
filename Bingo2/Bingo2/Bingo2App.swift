import Firebase
import SwiftUI

@main
struct Bingo2App: App {
    init(){FirebaseApp.configure()
        
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
