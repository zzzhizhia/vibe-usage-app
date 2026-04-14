import SwiftUI
import AppKit

@main
struct VibeUsageApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate

    var body: some Scene {
        // No visible scene — AppDelegate owns the menu bar status item and popover panel.
        // Settings scene placeholder satisfies the App protocol; LSUIElement hides any window chrome.
        Settings { EmptyView() }
    }
}

@MainActor
final class AppDelegate: NSObject, NSApplicationDelegate {
    private let appState = AppState()
    private let updaterViewModel = UpdaterViewModel()
    private var menuBarController: MenuBarController?

    func applicationDidFinishLaunching(_ notification: Notification) {
        appState.initialize()
        menuBarController = MenuBarController(appState: appState, updaterViewModel: updaterViewModel)
    }
}
