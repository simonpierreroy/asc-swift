// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterLeaderboardLocalizationsResponse: Codable, Equatable, Sendable {
    public var data: [GameCenterLeaderboardLocalization]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable, Equatable, Sendable {
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardImage(GameCenterLeaderboardImage)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(GameCenterLeaderboard.self) {
                self = .gameCenterLeaderboard(value)
            } else if let value = try? container.decode(GameCenterLeaderboardImage.self) {
                self = .gameCenterLeaderboardImage(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (GameCenterLeaderboard, GameCenterLeaderboardImage)."
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .gameCenterLeaderboard(let value): try container.encode(value)
            case .gameCenterLeaderboardImage(let value): try container.encode(value)
            }
        }
    }

    public init(data: [GameCenterLeaderboardLocalization], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
