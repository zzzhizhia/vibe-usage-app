import AppKit

/// Borderless panel for the menu-bar popover.
/// Becomes key when needed (so the API-key TextField on the unconfigured
/// screen receives keyboard input) but never becomes main.
final class PopoverPanel: NSPanel {
    override var canBecomeKey: Bool { true }
    override var canBecomeMain: Bool { false }
}
