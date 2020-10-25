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

/// Error enum for WorkLink
public struct WorkLinkErrorType: AWSErrorType {
    enum Code: String {
        case internalServerErrorException = "InternalServerErrorException"
        case invalidRequestException = "InvalidRequestException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WorkLink
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

    /// The service is temporarily unavailable.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// The request is not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The requested resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The number of requests exceeds the limit.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// You are not authorized to perform this action.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension WorkLinkErrorType: Equatable {
    public static func == (lhs: WorkLinkErrorType, rhs: WorkLinkErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WorkLinkErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
