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

/// Error enum for MediaConvert
public struct MediaConvertErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MediaConvert
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

    /// The service can't process your request because of a problem in the request. Please check your request form and syntax.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The service couldn't complete your request because there is a conflict with the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// You don't have permissions for this action with the credentials you sent.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// The service encountered an unexpected condition and can't fulfill your request.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// The resource you requested doesn't exist.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension MediaConvertErrorType: Equatable {
    public static func == (lhs: MediaConvertErrorType, rhs: MediaConvertErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaConvertErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
