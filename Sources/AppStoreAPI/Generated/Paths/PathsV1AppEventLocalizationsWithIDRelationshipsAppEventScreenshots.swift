// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppEventLocalizations.WithID.Relationships {
    public var appEventScreenshots: AppEventScreenshots {
        AppEventScreenshots(path: path + "/appEventScreenshots")
    }

    public struct AppEventScreenshots {
        /// Path: `/v1/appEventLocalizations/{id}/relationships/appEventScreenshots`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppStoreAPI.AppEventLocalizationAppEventScreenshotsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appEventLocalizations_appEventScreenshots_getToManyRelationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
