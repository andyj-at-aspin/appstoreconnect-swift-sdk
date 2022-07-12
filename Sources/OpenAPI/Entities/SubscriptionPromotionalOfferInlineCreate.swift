// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionPromotionalOfferInlineCreate: Codable {
	public var type: `Type`
	public var id: String?
	public var attributes: Attributes
	public var relationships: Relationships?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionPromotionalOffers
	}

	public struct Attributes: Codable {
		public var name: String
		public var offerCode: String
		public var duration: SubscriptionOfferDuration
		public var offerMode: SubscriptionOfferMode
		public var numberOfPeriods: Int

		public init(name: String, offerCode: String, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
			self.name = name
			self.offerCode = offerCode
			self.duration = duration
			self.offerMode = offerMode
			self.numberOfPeriods = numberOfPeriods
		}
	}

	public struct Relationships: Codable {
		public var subscription: Subscription?
		public var prices: Prices?

		public struct Subscription: Codable {
			public var data: Data?

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptions
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(data: Data? = nil) {
				self.data = data
			}
		}

		public struct Prices: Codable {
			public var data: [Datum]?

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPromotionalOfferPrices
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(data: [Datum]? = nil) {
				self.data = data
			}
		}

		public init(subscription: Subscription? = nil, prices: Prices? = nil) {
			self.subscription = subscription
			self.prices = prices
		}
	}

	public init(type: `Type`, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
	}
}