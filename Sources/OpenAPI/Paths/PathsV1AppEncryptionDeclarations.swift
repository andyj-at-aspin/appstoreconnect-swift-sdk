// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint {
	public static var appEncryptionDeclarations: AppEncryptionDeclarations {
		AppEncryptionDeclarations(path: "/v1/appEncryptionDeclarations")
	}

	public struct AppEncryptionDeclarations {
		/// Path: `/v1/appEncryptionDeclarations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterApp: [String]?
			public var filterBuilds: [String]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum Include: String, Codable, CaseIterable {
				case app
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case reviewSubmissions
				case sku
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
				self.filterPlatform = filterPlatform
				self.filterApp = filterApp
				self.filterBuilds = filterBuilds
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				return encoder.items
			}
		}
	}
}