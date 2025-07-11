// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var preReleaseVersions: PreReleaseVersions {
        PreReleaseVersions(path: path + "/preReleaseVersions")
    }

    public struct PreReleaseVersions {
        /// Path: `/v1/preReleaseVersions`
        public let path: String

        public func get(filterBuildsBuildAudienceType: [FilterBuildsBuildAudienceType]? = nil, filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, limitBuilds: Int? = nil) -> Request<AppStoreAPI.PreReleaseVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterBuildsBuildAudienceType, filterBuildsExpired, filterBuildsProcessingState, filterBuildsVersion, filterPlatform, filterVersion, filterApp, filterBuilds, sort, fieldsPreReleaseVersions, fieldsBuilds, fieldsApps, limit, include, limitBuilds), id: "preReleaseVersions_getCollection")
        }

        private func makeGetQuery(_ filterBuildsBuildAudienceType: [FilterBuildsBuildAudienceType]?, _ filterBuildsExpired: [String]?, _ filterBuildsProcessingState: [FilterBuildsProcessingState]?, _ filterBuildsVersion: [String]?, _ filterPlatform: [FilterPlatform]?, _ filterVersion: [String]?, _ filterApp: [String]?, _ filterBuilds: [String]?, _ sort: [Sort]?, _ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ include: [Include]?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterBuildsBuildAudienceType, forKey: "filter[builds.buildAudienceType]")
            encoder.encode(filterBuildsExpired, forKey: "filter[builds.expired]")
            encoder.encode(filterBuildsProcessingState, forKey: "filter[builds.processingState]")
            encoder.encode(filterBuildsVersion, forKey: "filter[builds.version]")
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterVersion, forKey: "filter[version]")
            encoder.encode(filterApp, forKey: "filter[app]")
            encoder.encode(filterBuilds, forKey: "filter[builds]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
        }

        public enum FilterBuildsBuildAudienceType: String, CaseIterable, Codable, Sendable {
            case internalOnly = "INTERNAL_ONLY"
            case appStoreEligible = "APP_STORE_ELIGIBLE"
        }

        public enum FilterBuildsProcessingState: String, CaseIterable, Codable, Sendable {
            case processing = "PROCESSING"
            case failed = "FAILED"
            case invalid = "INVALID"
            case valid = "VALID"
        }

        public enum FilterPlatform: String, CaseIterable, Codable, Sendable {
            case iOS = "IOS"
            case macOS = "MAC_OS"
            case tvOS = "TV_OS"
            case visionOS = "VISION_OS"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case version
            case minusVersion = "-version"
        }

        public enum FieldsPreReleaseVersions: String, CaseIterable, Codable, Sendable {
            case version
            case platform
            case builds
            case app
        }

        public enum FieldsBuilds: String, CaseIterable, Codable, Sendable {
            case version
            case uploadedDate
            case expirationDate
            case expired
            case minOsVersion
            case lsMinimumSystemVersion
            case computedMinMacOsVersion
            case computedMinVisionOsVersion
            case iconAssetToken
            case processingState
            case buildAudienceType
            case usesNonExemptEncryption
            case preReleaseVersion
            case individualTesters
            case betaGroups
            case betaBuildLocalizations
            case appEncryptionDeclaration
            case betaAppReviewSubmission
            case app
            case buildBetaDetail
            case appStoreVersion
            case icons
            case buildBundles
            case perfPowerMetrics
            case diagnosticSignatures
        }

        public enum FieldsApps: String, CaseIterable, Codable, Sendable {
            case accessibilityURL = "accessibilityUrl"
            case name
            case bundleID = "bundleId"
            case sku
            case primaryLocale
            case isOrEverWasMadeForKids
            case subscriptionStatusURL = "subscriptionStatusUrl"
            case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
            case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
            case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
            case contentRightsDeclaration
            case streamlinedPurchasingEnabled
            case accessibilityDeclarations
            case appEncryptionDeclarations
            case ciProduct
            case betaTesters
            case betaGroups
            case appStoreVersions
            case preReleaseVersions
            case betaAppLocalizations
            case builds
            case betaLicenseAgreement
            case betaAppReviewDetail
            case appInfos
            case appClips
            case appPricePoints
            case endUserLicenseAgreement
            case appPriceSchedule
            case appAvailabilityV2
            case inAppPurchases
            case subscriptionGroups
            case gameCenterEnabledVersions
            case perfPowerMetrics
            case appCustomProductPages
            case inAppPurchasesV2
            case promotedPurchases
            case appEvents
            case reviewSubmissions
            case subscriptionGracePeriod
            case customerReviews
            case customerReviewSummarizations
            case gameCenterDetail
            case appStoreVersionExperimentsV2
            case alternativeDistributionKey
            case analyticsReportRequests
            case marketplaceSearchDetail
            case backgroundAssets
            case betaFeedbackScreenshotSubmissions
            case betaFeedbackCrashSubmissions
            case webhooks
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case builds
            case app
        }
    }
}
