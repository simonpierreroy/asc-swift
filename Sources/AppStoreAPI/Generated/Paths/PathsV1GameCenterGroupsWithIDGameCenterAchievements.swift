// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import AppStoreConnect
import URLQueryEncoder

extension Resources.V1.GameCenterGroups.WithID {
    public var gameCenterAchievements: GameCenterAchievements {
        GameCenterAchievements(path: path + "/gameCenterAchievements")
    }

    public struct GameCenterAchievements {
        /// Path: `/v1/gameCenterGroups/{id}/gameCenterAchievements`
        public let path: String

        public func get(filterReferenceName: [String]? = nil, filterArchived: [String]? = nil, filterID: [String]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterActivities: [FieldsGameCenterActivities]? = nil, limit: Int? = nil, include: [Include]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil) -> Request<AppStoreAPI.GameCenterAchievementsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterReferenceName, filterArchived, filterID, fieldsGameCenterAchievements, fieldsGameCenterDetails, fieldsGameCenterGroups, fieldsGameCenterAchievementLocalizations, fieldsGameCenterAchievementReleases, fieldsGameCenterActivities, limit, include, limitLocalizations, limitReleases), id: "gameCenterGroups_gameCenterAchievements_getToManyRelated")
        }

        private func makeGetQuery(_ filterReferenceName: [String]?, _ filterArchived: [String]?, _ filterID: [String]?, _ fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?, _ fieldsGameCenterDetails: [FieldsGameCenterDetails]?, _ fieldsGameCenterGroups: [FieldsGameCenterGroups]?, _ fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]?, _ fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?, _ fieldsGameCenterActivities: [FieldsGameCenterActivities]?, _ limit: Int?, _ include: [Include]?, _ limitLocalizations: Int?, _ limitReleases: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
            encoder.encode(filterArchived, forKey: "filter[archived]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
            encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
            encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
            encoder.encode(fieldsGameCenterAchievementLocalizations, forKey: "fields[gameCenterAchievementLocalizations]")
            encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
            encoder.encode(fieldsGameCenterActivities, forKey: "fields[gameCenterActivities]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(limitLocalizations, forKey: "limit[localizations]")
            encoder.encode(limitReleases, forKey: "limit[releases]")
            return encoder.items
        }

        public enum FieldsGameCenterAchievements: String, CaseIterable, Codable, Sendable {
            case referenceName
            case vendorIdentifier
            case points
            case showBeforeEarned
            case repeatable
            case archived
            case activityProperties
            case gameCenterDetail
            case gameCenterGroup
            case groupAchievement
            case localizations
            case releases
            case activity
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

        public enum FieldsGameCenterAchievementLocalizations: String, CaseIterable, Codable, Sendable {
            case locale
            case name
            case beforeEarnedDescription
            case afterEarnedDescription
            case gameCenterAchievement
            case gameCenterAchievementImage
        }

        public enum FieldsGameCenterAchievementReleases: String, CaseIterable, Codable, Sendable {
            case live
            case gameCenterDetail
            case gameCenterAchievement
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

        public enum Include: String, CaseIterable, Codable, Sendable {
            case gameCenterDetail
            case gameCenterGroup
            case groupAchievement
            case localizations
            case releases
            case activity
        }
    }
}
