// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID {
    public var promotionalOffers: PromotionalOffers {
        PromotionalOffers(path: path + "/promotionalOffers")
    }

    public struct PromotionalOffers {
        /// Path: `/v1/subscriptions/{id}/promotionalOffers`
        public let path: String

        public func get(filterTerritory: [String]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]? = nil, limit: Int? = nil, include: [Include]? = nil, limitPrices: Int? = nil) -> Request<AppStoreAPI.SubscriptionPromotionalOffersResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, fieldsSubscriptionPromotionalOffers, fieldsSubscriptions, fieldsSubscriptionPromotionalOfferPrices, limit, include, limitPrices), id: "subscriptions_promotionalOffers_getToManyRelated")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionPromotionalOfferPrices: [FieldsSubscriptionPromotionalOfferPrices]?, _ limit: Int?, _ include: [Include]?, _ limitPrices: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionPromotionalOfferPrices, forKey: "fields[subscriptionPromotionalOfferPrices]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            return encoder.items
        }

        public enum FieldsSubscriptionPromotionalOffers: String, CaseIterable, Codable, Sendable {
            case duration
            case name
            case numberOfPeriods
            case offerCode
            case offerMode
            case subscription
            case prices
        }

        public enum FieldsSubscriptions: String, CaseIterable, Codable, Sendable {
            case name
            case productID = "productId"
            case familySharable
            case state
            case subscriptionPeriod
            case reviewNote
            case groupLevel
            case subscriptionLocalizations
            case appStoreReviewScreenshot
            case group
            case introductoryOffers
            case promotionalOffers
            case offerCodes
            case prices
            case pricePoints
            case promotedPurchase
            case subscriptionAvailability
            case winBackOffers
            case images
        }

        public enum FieldsSubscriptionPromotionalOfferPrices: String, CaseIterable, Codable, Sendable {
            case territory
            case subscriptionPricePoint
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case subscription
            case prices
        }
    }
}
