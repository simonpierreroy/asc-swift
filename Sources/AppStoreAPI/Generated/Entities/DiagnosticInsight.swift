// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct DiagnosticInsight: Codable, Equatable, Sendable {
    public var insightType: DiagnosticInsightType?
    public var direction: DiagnosticInsightDirection?
    public var referenceVersions: [ReferenceVersion]?

    public struct ReferenceVersion: Codable, Equatable, Sendable {
        public var version: String?
        public var value: Double?

        public init(version: String? = nil, value: Double? = nil) {
            self.version = version
            self.value = value
        }
    }

    public init(insightType: DiagnosticInsightType? = nil, direction: DiagnosticInsightDirection? = nil, referenceVersions: [ReferenceVersion]? = nil) {
        self.insightType = insightType
        self.direction = direction
        self.referenceVersions = referenceVersions
    }
}
