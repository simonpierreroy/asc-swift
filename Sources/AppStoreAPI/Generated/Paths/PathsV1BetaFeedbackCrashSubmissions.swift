// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1 {
    public var betaFeedbackCrashSubmissions: BetaFeedbackCrashSubmissions {
        BetaFeedbackCrashSubmissions(path: path + "/betaFeedbackCrashSubmissions")
    }

    public struct BetaFeedbackCrashSubmissions {
        /// Path: `/v1/betaFeedbackCrashSubmissions`
        public let path: String
    }
}
