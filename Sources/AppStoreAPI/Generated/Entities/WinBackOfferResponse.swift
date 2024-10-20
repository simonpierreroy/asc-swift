// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct WinBackOfferResponse: Codable, Equatable, Sendable {
    /// WinBackOffer
    public var data: WinBackOffer
    public var included: [WinBackOfferPrice]?
    public var links: DocumentLinks

    public init(data: WinBackOffer, included: [WinBackOfferPrice]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
