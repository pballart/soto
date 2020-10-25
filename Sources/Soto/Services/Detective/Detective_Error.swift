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

/// Error enum for Detective
public struct DetectiveErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Detective
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

    /// The request attempted an invalid action.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request was valid but failed because of a problem with the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The request refers to a nonexistent resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// This request cannot be completed for one of the following reasons.   The request would cause the number of member accounts in the behavior graph to exceed the maximum allowed. A behavior graph cannot have more than 1000 member accounts.   The request would cause the data rate for the behavior graph to exceed the maximum allowed.   Detective is unable to verify the data rate for the member account. This is usually because the member account is not enrolled in Amazon GuardDuty.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request parameters are invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension DetectiveErrorType: Equatable {
    public static func == (lhs: DetectiveErrorType, rhs: DetectiveErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DetectiveErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
