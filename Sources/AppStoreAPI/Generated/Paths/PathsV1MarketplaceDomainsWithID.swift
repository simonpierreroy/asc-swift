// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.MarketplaceDomains {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/marketplaceDomains/{id}`
        public let path: String

        public func get(fieldsMarketplaceDomains: [FieldsMarketplaceDomains]? = nil) -> Request<AppStoreAPI.MarketplaceDomainResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsMarketplaceDomains), id: "marketplaceDomains_getInstance")
        }

        private func makeGetQuery(_ fieldsMarketplaceDomains: [FieldsMarketplaceDomains]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsMarketplaceDomains, forKey: "fields[marketplaceDomains]", explode: false)
            return encoder.items
        }

        public enum FieldsMarketplaceDomains: String, CaseIterable, Codable, Sendable {
            case domain
            case referenceName
            case createdDate
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "marketplaceDomains_deleteInstance")
        }
    }
}
