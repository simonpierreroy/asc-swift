// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Apps.WithID.Relationships {
    public var inAppPurchases: InAppPurchases {
        InAppPurchases(path: path + "/inAppPurchases")
    }

    public struct InAppPurchases {
        /// Path: `/v1/apps/{id}/relationships/inAppPurchases`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.AppInAppPurchasesLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "apps_inAppPurchases_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
