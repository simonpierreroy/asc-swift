// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BetaFeedbackScreenshotImage: Codable, Equatable, Sendable {
    public var url: String?
    public var width: Int?
    public var height: Int?
    public var expirationDate: Date?

    public init(url: String? = nil, width: Int? = nil, height: Int? = nil, expirationDate: Date? = nil) {
        self.url = url
        self.width = width
        self.height = height
        self.expirationDate = expirationDate
    }
}
