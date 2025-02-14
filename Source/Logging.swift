import Foundation

enum TurboLogger {
    static var debugLoggingEnabled = false
}

/// Simple function to help in debugging, a noop in Release builds
func debugLog(_ message: String, _ arguments: [String: Any] = [:]) {
    let timestamp = Date()

    log("\(timestamp) \(message) \(arguments)")
}

func debugPrint(_ message: String) {
    log(message)
}

private func log(_ message: String) {
    if TurboLogger.debugLoggingEnabled {
        print(message)
    }
}
