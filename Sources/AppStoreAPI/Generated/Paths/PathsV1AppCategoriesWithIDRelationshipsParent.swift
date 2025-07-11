// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.AppCategories.WithID.Relationships {
    public var parent: Parent {
        Parent(path: path + "/parent")
    }

    public struct Parent {
        /// Path: `/v1/appCategories/{id}/relationships/parent`
        public let path: String

        public var get: Request<AppStoreAPI.AppCategoryParentLinkageResponse> {
            Request(path: path, method: "GET", id: "appCategories_parent_getToOneRelationship")
        }
    }
}
