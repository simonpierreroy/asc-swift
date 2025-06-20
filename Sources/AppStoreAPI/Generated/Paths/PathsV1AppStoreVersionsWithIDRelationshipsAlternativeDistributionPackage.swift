// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppStoreVersions.WithID.Relationships {
    public var alternativeDistributionPackage: AlternativeDistributionPackage {
        AlternativeDistributionPackage(path: path + "/alternativeDistributionPackage")
    }

    public struct AlternativeDistributionPackage {
        /// Path: `/v1/appStoreVersions/{id}/relationships/alternativeDistributionPackage`
        public let path: String

        public var get: Request<AppStoreAPI.AppStoreVersionAlternativeDistributionPackageLinkageResponse> {
            Request(path: path, method: "GET", id: "appStoreVersions_alternativeDistributionPackage_getToOneRelationship")
        }
    }
}
