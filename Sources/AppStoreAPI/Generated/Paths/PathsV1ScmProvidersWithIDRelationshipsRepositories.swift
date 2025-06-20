// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.ScmProviders.WithID.Relationships {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }

    public struct Repositories {
        /// Path: `/v1/scmProviders/{id}/relationships/repositories`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.ScmProviderRepositoriesLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "scmProviders_repositories_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
