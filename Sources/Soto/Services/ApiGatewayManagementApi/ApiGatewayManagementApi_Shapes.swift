//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import Foundation
import SotoCore

extension ApiGatewayManagementApi {
    // MARK: Enums

    // MARK: Shapes

    public struct DeleteConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri("ConnectionId"))
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri("ConnectionId"))
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectionResponse: AWSDecodableShape {
        /// The time in ISO 8601 format for when the connection was established.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var connectedAt: Date?
        public let identity: Identity?
        /// The time in ISO 8601 format for when the connection was last active.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var lastActiveAt: Date?

        public init(connectedAt: Date? = nil, identity: Identity? = nil, lastActiveAt: Date? = nil) {
            self.connectedAt = connectedAt
            self.identity = identity
            self.lastActiveAt = lastActiveAt
        }

        private enum CodingKeys: String, CodingKey {
            case connectedAt
            case identity
            case lastActiveAt
        }
    }

    public struct Identity: AWSDecodableShape {
        /// The source IP address of the TCP connection making the request to API Gateway.
        public let sourceIp: String
        /// The User Agent of the API caller.
        public let userAgent: String

        public init(sourceIp: String, userAgent: String) {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }

        private enum CodingKeys: String, CodingKey {
            case sourceIp
            case userAgent
        }
    }

    public struct PostToConnectionRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "data"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri("ConnectionId"))
        ]

        /// The identifier of the connection that a specific client is using.
        public let connectionId: String
        /// The data to be sent to the client specified by its connection id.
        public let data: AWSPayload

        public init(connectionId: String, data: AWSPayload) {
            self.connectionId = connectionId
            self.data = data
        }

        public func validate(name: String) throws {
            try self.validate(self.data, name: "data", parent: name, max: 131_072)
        }

        private enum CodingKeys: CodingKey {}
    }
}
