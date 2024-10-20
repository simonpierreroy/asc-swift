// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterMatchmakingRuleResponse: Codable, Equatable, Sendable {
    /// GameCenterMatchmakingRule
    public var data: GameCenterMatchmakingRule
    public var links: DocumentLinks

    public init(data: GameCenterMatchmakingRule, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
