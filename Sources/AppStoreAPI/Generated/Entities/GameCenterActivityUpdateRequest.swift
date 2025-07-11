// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterActivityUpdateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Identifiable, Sendable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case gameCenterActivities
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var referenceName: String?
            public var playStyle: PlayStyle?
            public var minimumPlayersCount: Int?
            public var maximumPlayersCount: Int?
            public var isSupportsPartyCode: Bool?
            public var isArchived: Bool?
            public var properties: [String: String]?

            public enum PlayStyle: String, CaseIterable, Codable, Sendable {
                case asynchronous = "ASYNCHRONOUS"
                case synchronous = "SYNCHRONOUS"
            }

            public init(referenceName: String? = nil, playStyle: PlayStyle? = nil, minimumPlayersCount: Int? = nil, maximumPlayersCount: Int? = nil, isSupportsPartyCode: Bool? = nil, isArchived: Bool? = nil, properties: [String: String]? = nil) {
                self.referenceName = referenceName
                self.playStyle = playStyle
                self.minimumPlayersCount = minimumPlayersCount
                self.maximumPlayersCount = maximumPlayersCount
                self.isSupportsPartyCode = isSupportsPartyCode
                self.isArchived = isArchived
                self.properties = properties
            }

            private enum CodingKeys: String, CodingKey {
                case referenceName
                case playStyle
                case minimumPlayersCount
                case maximumPlayersCount
                case isSupportsPartyCode = "supportsPartyCode"
                case isArchived = "archived"
                case properties
            }
        }

        public init(type: `Type` = .gameCenterActivities, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
