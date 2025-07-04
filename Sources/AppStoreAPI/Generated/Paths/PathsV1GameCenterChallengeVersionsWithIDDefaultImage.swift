// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterChallengeVersions.WithID {
    public var defaultImage: DefaultImage {
        DefaultImage(path: path + "/defaultImage")
    }

    public struct DefaultImage {
        /// Path: `/v1/gameCenterChallengeVersions/{id}/defaultImage`
        public let path: String

        public func get(fieldsGameCenterChallengeImages: [FieldsGameCenterChallengeImages]? = nil) -> Request<AppStoreAPI.GameCenterChallengeImageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterChallengeImages), id: "gameCenterChallengeVersions_defaultImage_getToOneRelated")
        }

        private func makeGetQuery(_ fieldsGameCenterChallengeImages: [FieldsGameCenterChallengeImages]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsGameCenterChallengeImages, forKey: "fields[gameCenterChallengeImages]", explode: false)
            return encoder.items
        }

        public enum FieldsGameCenterChallengeImages: String, CaseIterable, Codable, Sendable {
            case fileSize
            case fileName
            case imageAsset
            case uploadOperations
            case assetDeliveryState
        }
    }
}
