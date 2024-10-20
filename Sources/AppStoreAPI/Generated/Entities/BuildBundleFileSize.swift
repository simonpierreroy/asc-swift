// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect

public struct BuildBundleFileSize: Codable, Equatable, Identifiable, Sendable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks?

    public enum `Type`: String, CaseIterable, Codable, Sendable {
        case buildBundleFileSizes
    }

    public struct Attributes: Codable, Equatable, Sendable {
        public var deviceModel: String?
        public var osVersion: String?
        public var downloadBytes: Int?
        public var installBytes: Int?

        public init(deviceModel: String? = nil, osVersion: String? = nil, downloadBytes: Int? = nil, installBytes: Int? = nil) {
            self.deviceModel = deviceModel
            self.osVersion = osVersion
            self.downloadBytes = downloadBytes
            self.installBytes = installBytes
        }
    }

    public init(type: `Type` = .buildBundleFileSizes, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
