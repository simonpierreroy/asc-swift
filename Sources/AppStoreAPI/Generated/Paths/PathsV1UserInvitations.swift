// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var userInvitations: UserInvitations {
        UserInvitations(path: path + "/userInvitations")
    }

    public struct UserInvitations {
        /// Path: `/v1/userInvitations`
        public let path: String

        public func get(filterEmail: [String]? = nil, filterRoles: [FilterRoles]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsUserInvitations: [FieldsUserInvitations]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, limitVisibleApps: Int? = nil) -> Request<AppStoreAPI.UserInvitationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterEmail, filterRoles, filterVisibleApps, sort, fieldsUserInvitations, fieldsApps, limit, include, limitVisibleApps), id: "userInvitations_getCollection")
        }

        private func makeGetQuery(_ filterEmail: [String]?, _ filterRoles: [FilterRoles]?, _ filterVisibleApps: [String]?, _ sort: [Sort]?, _ fieldsUserInvitations: [FieldsUserInvitations]?, _ fieldsApps: [FieldsApps]?, _ limit: Int?, _ include: [Include]?, _ limitVisibleApps: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterEmail, forKey: "filter[email]")
            encoder.encode(filterRoles, forKey: "filter[roles]")
            encoder.encode(filterVisibleApps, forKey: "filter[visibleApps]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
            return encoder.items
        }

        public enum FilterRoles: String, CaseIterable, Codable, Sendable {
            case admin = "ADMIN"
            case finance = "FINANCE"
            case accountHolder = "ACCOUNT_HOLDER"
            case sales = "SALES"
            case marketing = "MARKETING"
            case appManager = "APP_MANAGER"
            case developer = "DEVELOPER"
            case accessToReports = "ACCESS_TO_REPORTS"
            case customerSupport = "CUSTOMER_SUPPORT"
            case createApps = "CREATE_APPS"
            case cloudManagedDeveloperID = "CLOUD_MANAGED_DEVELOPER_ID"
            case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
            case generateIndividualKeys = "GENERATE_INDIVIDUAL_KEYS"
        }

        public enum Sort: String, CaseIterable, Codable, Sendable {
            case email
            case minusEmail = "-email"
            case lastName
            case minusLastName = "-lastName"
        }

        public enum FieldsUserInvitations: String, CaseIterable, Codable, Sendable {
            case email
            case firstName
            case lastName
            case expirationDate
            case roles
            case allAppsVisible
            case provisioningAllowed
            case visibleApps
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
            case visibleApps
        }

        public func post(_ body: AppStoreAPI.UserInvitationCreateRequest) -> Request<AppStoreAPI.UserInvitationResponse> {
            Request(path: path, method: "POST", body: body, id: "userInvitations_createInstance")
        }
    }
}
