// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppStoreVersionAlternativeDistributionPackageLinkageResponse: Codable, Equatable, Sendable {
    public var data: Data
    public var links: DocumentLinks

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case alternativeDistributionPackages
        }

        public init(type: `Type` = .alternativeDistributionPackages, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: Data, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
