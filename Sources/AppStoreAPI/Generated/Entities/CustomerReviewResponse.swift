// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct CustomerReviewResponse: Codable, Equatable, Sendable {
    /// CustomerReview
    public var data: CustomerReview
    public var included: [CustomerReviewResponseV1]?
    public var links: DocumentLinks

    public init(data: CustomerReview, included: [CustomerReviewResponseV1]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
