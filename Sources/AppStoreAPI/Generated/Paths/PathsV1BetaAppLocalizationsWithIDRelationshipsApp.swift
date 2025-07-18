// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.BetaAppLocalizations.WithID.Relationships {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/betaAppLocalizations/{id}/relationships/app`
        public let path: String

        public var get: Request<AppStoreAPI.BetaAppLocalizationAppLinkageResponse> {
            Request(path: path, method: "GET", id: "betaAppLocalizations_app_getToOneRelationship")
        }
    }
}
