// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var backgroundAssets: BackgroundAssets {
        BackgroundAssets(path: path + "/backgroundAssets")
    }

    public struct BackgroundAssets {
        /// Path: `/v1/backgroundAssets`
        public let path: String

        public func post(_ body: AppStoreAPI.BackgroundAssetCreateRequest) -> Request<AppStoreAPI.BackgroundAssetResponse> {
            Request(path: path, method: "POST", body: body, id: "backgroundAssets_createInstance")
        }
    }
}
