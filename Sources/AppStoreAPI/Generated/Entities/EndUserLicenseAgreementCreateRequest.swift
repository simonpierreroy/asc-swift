// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct EndUserLicenseAgreementCreateRequest: Codable, Equatable, Sendable {
    public var data: Data

    public struct Data: Codable, Equatable, Sendable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, CaseIterable, Codable, Sendable {
            case endUserLicenseAgreements
        }

        public struct Attributes: Codable, Equatable, Sendable {
            public var agreementText: String

            public init(agreementText: String) {
                self.agreementText = agreementText
            }
        }

        public struct Relationships: Codable, Equatable, Sendable {
            public var app: App
            public var territories: Territories

            public struct App: Codable, Equatable, Sendable {
                public var data: Data

                public struct Data: Codable, Equatable, Identifiable, Sendable {
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

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct Territories: Codable, Equatable, Sendable {
                public var data: [Datum]

                public struct Datum: Codable, Equatable, Identifiable, Sendable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, CaseIterable, Codable, Sendable {
                        case territories
                    }

                    public init(type: `Type` = .territories, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(app: App, territories: Territories) {
                self.app = app
                self.territories = territories
            }
        }

        public init(type: `Type` = .endUserLicenseAgreements, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
