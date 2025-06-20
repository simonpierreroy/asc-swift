// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.CiBuildActions.WithID.Relationships {
    public var artifacts: Artifacts {
        Artifacts(path: path + "/artifacts")
    }

    public struct Artifacts {
        /// Path: `/v1/ciBuildActions/{id}/relationships/artifacts`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.CiBuildActionArtifactsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "ciBuildActions_artifacts_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
