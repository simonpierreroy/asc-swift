// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.BuildBundles.WithID {
    public var appClipDomainDebugStatus: AppClipDomainDebugStatus {
        AppClipDomainDebugStatus(path: path + "/appClipDomainDebugStatus")
    }

    public struct AppClipDomainDebugStatus {
        /// Path: `/v1/buildBundles/{id}/appClipDomainDebugStatus`
        public let path: String

        public func get(fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]? = nil) -> Request<AppStoreAPI.AppClipDomainStatusResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppClipDomainStatuses), id: "buildBundles_appClipDomainDebugStatus_getToOneRelated")
        }

        private func makeGetQuery(_ fieldsAppClipDomainStatuses: [FieldsAppClipDomainStatuses]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppClipDomainStatuses, forKey: "fields[appClipDomainStatuses]", explode: false)
            return encoder.items
        }

        public enum FieldsAppClipDomainStatuses: String, CaseIterable, Codable, Sendable {
            case domains
            case lastUpdatedDate
        }
    }
}
