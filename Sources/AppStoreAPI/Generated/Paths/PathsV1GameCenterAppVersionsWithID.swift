// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterAppVersions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/gameCenterAppVersions/{id}`
        public let path: String

        public func get(fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, include: [Include]? = nil, limitCompatibilityVersions: Int? = nil) -> Request<AppStoreAPI.GameCenterAppVersionResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterAppVersions, fieldsAppStoreVersions, include, limitCompatibilityVersions), id: "gameCenterAppVersions_getInstance")
        }

        private func makeGetQuery(_ fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ include: [Include]?, _ limitCompatibilityVersions: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitCompatibilityVersions, forKey: "limit[compatibilityVersions]")
            return encoder.items
        }

        public enum FieldsGameCenterAppVersions: String, CaseIterable, Codable, Sendable {
            case enabled
            case compatibilityVersions
            case appStoreVersion
        }

        public enum FieldsAppStoreVersions: String, CaseIterable, Codable, Sendable {
            case platform
            case versionString
            case appStoreState
            case appVersionState
            case copyright
            case reviewType
            case releaseType
            case earliestReleaseDate
            case usesIdfa
            case downloadable
            case createdDate
            case app
            case ageRatingDeclaration
            case appStoreVersionLocalizations
            case build
            case appStoreVersionPhasedRelease
            case gameCenterAppVersion
            case routingAppCoverage
            case appStoreReviewDetail
            case appStoreVersionSubmission
            case appClipDefaultExperience
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case customerReviews
            case alternativeDistributionPackage
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case compatibilityVersions
            case appStoreVersion
        }

        public func patch(_ body: AppStoreAPI.GameCenterAppVersionUpdateRequest) -> Request<AppStoreAPI.GameCenterAppVersionResponse> {
            Request(path: path, method: "PATCH", body: body, id: "gameCenterAppVersions_updateInstance")
        }
    }
}
