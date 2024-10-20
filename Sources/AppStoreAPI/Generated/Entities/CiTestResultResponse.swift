// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct CiTestResultResponse: Codable, Equatable, Sendable {
    /// CiTestResult
    public var data: CiTestResult
    public var links: DocumentLinks

    public init(data: CiTestResult, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
