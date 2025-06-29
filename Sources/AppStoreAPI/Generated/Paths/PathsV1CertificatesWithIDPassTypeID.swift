// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.Certificates.WithID {
    public var passTypeID: PassTypeID {
        PassTypeID(path: path + "/passTypeId")
    }

    public struct PassTypeID {
        /// Path: `/v1/certificates/{id}/passTypeId`
        public let path: String

        public func get(fieldsPassTypeIDs: [FieldsPassTypeIDs]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, include: [Include]? = nil, limitCertificates: Int? = nil) -> Request<AppStoreAPI.PassTypeIDResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPassTypeIDs, fieldsCertificates, include, limitCertificates), id: "certificates_passTypeId_getToOneRelated")
        }

        private func makeGetQuery(_ fieldsPassTypeIDs: [FieldsPassTypeIDs]?, _ fieldsCertificates: [FieldsCertificates]?, _ include: [Include]?, _ limitCertificates: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsPassTypeIDs, forKey: "fields[passTypeIds]")
            encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitCertificates, forKey: "limit[certificates]")
            return encoder.items
        }

        public enum FieldsPassTypeIDs: String, CaseIterable, Codable, Sendable {
            case name
            case identifier
            case certificates
        }

        public enum FieldsCertificates: String, CaseIterable, Codable, Sendable {
            case name
            case certificateType
            case displayName
            case serialNumber
            case platform
            case expirationDate
            case certificateContent
            case activated
            case passTypeID = "passTypeId"
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case certificates
        }
    }
}
