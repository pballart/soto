//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for StorageGateway
public struct StorageGatewayErrorType: AWSErrorType {
    enum Code: String {
        case internalServerError = "InternalServerError"
        case invalidGatewayRequestException = "InvalidGatewayRequestException"
        case serviceUnavailableError = "ServiceUnavailableError"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize StorageGateway
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// An internal server error has occurred during the request. For more information, see the error and message fields.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.
    public static var invalidGatewayRequestException: Self { .init(.invalidGatewayRequestException) }
    /// An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.
    public static var serviceUnavailableError: Self { .init(.serviceUnavailableError) }
}

extension StorageGatewayErrorType: Equatable {
    public static func == (lhs: StorageGatewayErrorType, rhs: StorageGatewayErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension StorageGatewayErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
