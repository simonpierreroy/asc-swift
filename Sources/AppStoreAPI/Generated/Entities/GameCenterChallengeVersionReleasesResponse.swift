// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct GameCenterChallengeVersionReleasesResponse: Codable, Equatable, Sendable {
    public var data: [GameCenterChallengeVersionRelease]
    public var included: [GameCenterChallengeVersion]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterChallengeVersionRelease], included: [GameCenterChallengeVersion]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
