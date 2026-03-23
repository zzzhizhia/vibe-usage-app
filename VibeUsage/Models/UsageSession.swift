import Foundation

struct UsageSession: Codable, Identifiable, Equatable {
    var id: String {
        "\(source)-\(firstMessageAt)-\(project)"
    }

    let source: String
    let project: String
    let hostname: String
    let firstMessageAt: String
    let lastMessageAt: String
    let durationSeconds: Int
    let activeSeconds: Int
    let messageCount: Int
    let userMessageCount: Int

    /// Day string (yyyy-MM-dd) from firstMessageAt for grouping
    var dayKey: String {
        String(firstMessageAt.prefix(10))
    }

    /// Hour string (yyyy-MM-ddTHH) from firstMessageAt for hourly grouping
    var hourKey: String {
        String(firstMessageAt.prefix(13))
    }
}
