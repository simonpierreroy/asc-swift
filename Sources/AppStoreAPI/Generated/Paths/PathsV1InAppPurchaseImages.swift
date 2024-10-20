// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var inAppPurchaseImages: InAppPurchaseImages {
        InAppPurchaseImages(path: path + "/inAppPurchaseImages")
    }

    public struct InAppPurchaseImages {
        /// Path: `/v1/inAppPurchaseImages`
        public let path: String

        public func post(_ body: AppStoreAPI.InAppPurchaseImageCreateRequest) -> Request<AppStoreAPI.InAppPurchaseImageResponse> {
            Request(path: path, method: "POST", body: body, id: "inAppPurchaseImages_createInstance")
        }
    }
}
