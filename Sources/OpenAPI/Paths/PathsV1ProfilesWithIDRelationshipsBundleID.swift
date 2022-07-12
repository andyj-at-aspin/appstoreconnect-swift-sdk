// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Profiles.WithID.Relationships {
	public var bundleID: BundleID {
		BundleID(path: path + "/bundleId")
	}

	public struct BundleID {
		/// Path: `/v1/profiles/{id}/relationships/bundleId`
		public let path: String
	}
}