
import SwiftUI



@main
struct moMainApp: App {
    @ObservedObject var logInModels = LogInModels()
    init() {
        if UserDefaults.standard.bool(forKey: "isLogin") {
            logInModels.isLogin = true
        }
    }
    
    var body: some Scene {
        WindowGroup {
            if logInModels.isLogin {
                HomeContentView()
                    .environmentObject(logInModels)
            } else {
                LogInOrSignUpView()
                    .environmentObject(logInModels)
            }
        }
    }
}
