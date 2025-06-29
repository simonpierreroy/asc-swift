// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Builds.WithID.Relationships {
    public var buildBetaDetail: BuildBetaDetail {
        BuildBetaDetail(path: path + "/buildBetaDetail")
    }

    public struct BuildBetaDetail {
        /// Path: `/v1/builds/{id}/relationships/buildBetaDetail`
        public let path: String

        public var get: Request<AppStoreAPI.BuildBuildBetaDetailLinkageResponse> {
            Request(path: path, method: "GET", id: "builds_buildBetaDetail_getToOneRelationship")
        }
    }
}
