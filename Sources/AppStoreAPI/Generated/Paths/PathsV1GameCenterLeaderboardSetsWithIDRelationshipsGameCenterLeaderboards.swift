// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterLeaderboardSets.WithID.Relationships {
    public var gameCenterLeaderboards: GameCenterLeaderboards {
        GameCenterLeaderboards(path: path + "/gameCenterLeaderboards")
    }

    public struct GameCenterLeaderboards {
        /// Path: `/v1/gameCenterLeaderboardSets/{id}/relationships/gameCenterLeaderboards`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterLeaderboardSets_gameCenterLeaderboards_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func post(_ body: AppStoreAPI.GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "gameCenterLeaderboardSets_gameCenterLeaderboards_createToManyRelationship")
        }

        public func patch(_ body: AppStoreAPI.GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "PATCH", body: body, id: "gameCenterLeaderboardSets_gameCenterLeaderboards_replaceToManyRelationship")
        }

        public func delete(_ body: AppStoreAPI.GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "gameCenterLeaderboardSets_gameCenterLeaderboards_deleteToManyRelationship")
        }
    }
}
