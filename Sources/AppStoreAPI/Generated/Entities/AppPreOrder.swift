// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct AppPreOrder: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case appPreOrders
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var preOrderAvailableDate: String?
        public var appReleaseDate: String?

        public init(preOrderAvailableDate: String? = nil, appReleaseDate: String? = nil) {
            self.preOrderAvailableDate = preOrderAvailableDate
            self.appReleaseDate = appReleaseDate
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var app: App?

        public struct App: Codable, Equatable, Sendable {
            public var data: Data?

            public struct Data: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case apps
                }

                public init(type: `Type` = .apps, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(data: Data? = nil) {
                self.data = data
            }
        }

        public init(app: App? = nil) {
            self.app = app
        }
    }

    public init(type: `Type` = .appPreOrders, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
