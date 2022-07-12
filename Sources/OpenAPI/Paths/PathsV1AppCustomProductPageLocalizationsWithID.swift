// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.AppCustomProductPageLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appCustomProductPageLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageLocalizationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
			public var include: [Include]?
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var limitAppPreviewSets: Int?
			public var limitAppScreenshotSets: Int?

			public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appPreviewSets
				case appScreenshotSets
				case locale
				case promotionalText
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appPreviewSets
				case appScreenshotSets
			}

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appScreenshots
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case screenshotDisplayType
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case appCustomProductPageLocalization
				case appPreviews
				case appStoreVersionExperimentTreatmentLocalization
				case appStoreVersionLocalization
				case previewType
			}

			public init(fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, include: [Include]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limitAppPreviewSets: Int? = nil, limitAppScreenshotSets: Int? = nil) {
				self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
				self.include = include
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.limitAppPreviewSets = limitAppPreviewSets
				self.limitAppScreenshotSets = limitAppScreenshotSets
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(limitAppPreviewSets, forKey: "limit[appPreviewSets]")
				encoder.encode(limitAppScreenshotSets, forKey: "limit[appScreenshotSets]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppCustomProductPageLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}