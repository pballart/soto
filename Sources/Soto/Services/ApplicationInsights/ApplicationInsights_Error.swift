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

/// Error enum for ApplicationInsights
public struct ApplicationInsightsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badRequestException = "BadRequestException"
        case internalServerException = "InternalServerException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tagsAlreadyExistException = "TagsAlreadyExistException"
        case tooManyTagsException = "TooManyTagsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ApplicationInsights
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

    ///  User does not have permissions to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request is not understood by the server.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The server encountered an internal error and is unable to complete the request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource is already created or in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The resource does not exist in the customer account.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Tags are already registered for the specified application ARN.
    public static var tagsAlreadyExistException: Self { .init(.tagsAlreadyExistException) }
    /// The number of the provided tags is beyond the limit, or the number of total tags you are trying to attach to the specified resource exceeds the limit.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// The parameter is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension ApplicationInsightsErrorType: Equatable {
    public static func == (lhs: ApplicationInsightsErrorType, rhs: ApplicationInsightsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ApplicationInsightsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
