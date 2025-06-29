// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterLeaderboardSetMemberLocalizations.WithID {
    public var gameCenterLeaderboard: GameCenterLeaderboard {
        GameCenterLeaderboard(path: path + "/gameCenterLeaderboard")
    }

    public struct GameCenterLeaderboard {
        /// Path: `/v1/gameCenterLeaderboardSetMemberLocalizations/{id}/gameCenterLeaderboard`
        public let path: String

        public func get(fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, fieldsGameCenterActivities: [FieldsGameCenterActivities]? = nil, fieldsGameCenterChallenges: [FieldsGameCenterChallenges]? = nil, include: [Include]? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil) -> Request<AppStoreAPI.GameCenterLeaderboardResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterLeaderboards, fieldsGameCenterDetails, fieldsGameCenterGroups, fieldsGameCenterLeaderboardSets, fieldsGameCenterLeaderboardLocalizations, fieldsGameCenterLeaderboardReleases, fieldsGameCenterActivities, fieldsGameCenterChallenges, include, limitGameCenterLeaderboardSets, limitLocalizations, limitReleases), id: "gameCenterLeaderboardSetMemberLocalizations_gameCenterLeaderboard_getToOneRelated")
        }

        private func makeGetQuery(_ fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?, _ fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?, _ fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?, _ fieldsGameCenterActivities: [FieldsGameCenterActivities]?, _ fieldsGameCenterChallenges: [FieldsGameCenterChallenges]?, _ include: [Include]?, _ limitGameCenterLeaderboardSets: Int?, _ limitLocalizations: Int?, _ limitReleases: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
            encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
            encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
            encoder.encode(fieldsGameCenterActivities, forKey: "fields[gameCenterActivities]")
            encoder.encode(fieldsGameCenterChallenges, forKey: "fields[gameCenterChallenges]")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            encoder.encode(limitReleases, forKey: "limit[releases]")
            return encoder.items
        }

        public enum FieldsGameCenterLeaderboards: String, CaseIterable, Codable, Sendable {
            case defaultFormatter
            case referenceName
            case vendorIdentifier
            case submissionType
            case scoreSortType
            case scoreRangeStart
            case scoreRangeEnd
            case recurrenceStartDate
            case recurrenceDuration
            case recurrenceRule
            case archived
            case activityProperties
            case visibility
            case gameCenterDetail
            case gameCenterGroup
            case groupLeaderboard
            case gameCenterLeaderboardSets
            case localizations
            case releases
            case activity
            case challenge
        }

        public enum FieldsGameCenterDetails: String, CaseIterable, Codable, Sendable {
            case arcadeEnabled
            case challengeEnabled
            case app
            case gameCenterAppVersions
            case gameCenterGroup
            case gameCenterLeaderboards
            case gameCenterLeaderboardSets
            case gameCenterAchievements
            case gameCenterActivities
            case gameCenterChallenges
            case defaultLeaderboard
            case defaultGroupLeaderboard
            case achievementReleases
            case activityReleases
            case challengeReleases
            case leaderboardReleases
            case leaderboardSetReleases
            case challengesMinimumPlatformVersions
        }

        public enum FieldsGameCenterGroups: String, CaseIterable, Codable, Sendable {
            case referenceName
            case gameCenterDetails
            case gameCenterLeaderboards
            case gameCenterLeaderboardSets
            case gameCenterAchievements
            case gameCenterActivities
            case gameCenterChallenges
        }

        public enum FieldsGameCenterLeaderboardSets: String, CaseIterable, Codable, Sendable {
            case referenceName
            case vendorIdentifier
            case gameCenterDetail
            case gameCenterGroup
            case groupLeaderboardSet
            case localizations
            case gameCenterLeaderboards
            case releases
        }

        public enum FieldsGameCenterLeaderboardLocalizations: String, CaseIterable, Codable, Sendable {
            case locale
            case name
            case formatterOverride
            case formatterSuffix
            case formatterSuffixSingular
            case gameCenterLeaderboard
            case gameCenterLeaderboardImage
        }

        public enum FieldsGameCenterLeaderboardReleases: String, CaseIterable, Codable, Sendable {
            case live
            case gameCenterDetail
            case gameCenterLeaderboard
        }

        public enum FieldsGameCenterActivities: String, CaseIterable, Codable, Sendable {
            case referenceName
            case vendorIdentifier
            case playStyle
            case minimumPlayersCount
            case maximumPlayersCount
            case supportsPartyCode
            case archived
            case properties
            case gameCenterDetail
            case gameCenterGroup
            case achievements
            case leaderboards
            case versions
        }

        public enum FieldsGameCenterChallenges: String, CaseIterable, Codable, Sendable {
            case referenceName
            case vendorIdentifier
            case allowedDurations
            case archived
            case challengeType
            case repeatable
            case gameCenterDetail
            case gameCenterGroup
            case versions
            case leaderboard
        }

        public enum Include: String, CaseIterable, Codable, Sendable {
            case gameCenterDetail
            case gameCenterGroup
            case groupLeaderboard
            case gameCenterLeaderboardSets
            case localizations
            case releases
            case activity
            case challenge
        }
    }
}
