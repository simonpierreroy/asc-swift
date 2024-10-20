// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct UserInvitation: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case userInvitations
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var email: String?
        public var firstName: String?
        public var lastName: String?
        public var expirationDate: Date?
        public var roles: [UserRole]?
        public var isAllAppsVisible: Bool?
        public var isProvisioningAllowed: Bool?

        public init(email: String? = nil, firstName: String? = nil, lastName: String? = nil, expirationDate: Date? = nil, roles: [UserRole]? = nil, isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
            self.email = email
            self.firstName = firstName
            self.lastName = lastName
            self.expirationDate = expirationDate
            self.roles = roles
            self.isAllAppsVisible = isAllAppsVisible
            self.isProvisioningAllowed = isProvisioningAllowed
        }

        private enum CodingKeys: String, CodingKey {
            case email
            case firstName
            case lastName
            case expirationDate
            case roles
            case isAllAppsVisible = "allAppsVisible"
            case isProvisioningAllowed = "provisioningAllowed"
        }
    }

    public struct Relationships: Codable, Equatable, Sendable {
        public var visibleApps: VisibleApps?

        public struct VisibleApps: Codable, Equatable, Sendable {
            public var links: RelationshipLinks?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Datum: Codable, Equatable, Identifiable, Sendable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, CaseIterable, Codable, Sendable {
                    case apps
                }

                public init(type: `Type` = .apps, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }
        }

        public init(visibleApps: VisibleApps? = nil) {
            self.visibleApps = visibleApps
        }
    }

    public init(type: `Type` = .userInvitations, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
