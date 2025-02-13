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

import SotoCore

/// Error enum for WorkSpacesWeb
public struct WorkSpacesWebErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case tooManyTagsException = "TooManyTagsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WorkSpacesWeb
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

    /// Access is denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// There is a conflict.
    public static var conflictException: Self { .init(.conflictException) }
    /// There is an internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service quota has been exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// There is a throttling error.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// There are too many tags.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// There is a validation error.
    public static var validationException: Self { .init(.validationException) }
}

extension WorkSpacesWebErrorType: Equatable {
    public static func == (lhs: WorkSpacesWebErrorType, rhs: WorkSpacesWebErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WorkSpacesWebErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
