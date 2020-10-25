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

/// Error enum for Honeycode
public struct HoneycodeErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case automationExecutionException = "AutomationExecutionException"
        case automationExecutionTimeoutException = "AutomationExecutionTimeoutException"
        case internalServerException = "InternalServerException"
        case requestTimeoutException = "RequestTimeoutException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Honeycode
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

    ///  You do not have sufficient access to perform this action. Check that the workbook is owned by you and your IAM policy allows access to the screen/automation in the request.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The automation execution did not end successfully.
    public static var automationExecutionException: Self { .init(.automationExecutionException) }
    /// The automation execution timed out.
    public static var automationExecutionTimeoutException: Self { .init(.automationExecutionTimeoutException) }
    /// There were unexpected errors from the server.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The request timed out.
    public static var requestTimeoutException: Self { .init(.requestTimeoutException) }
    /// A Workbook, App, Screen or Screen Automation was not found with the given ID.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Remote service is unreachable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// Tps(transactions per second) rate reached.
    public static var throttlingException: Self { .init(.throttlingException) }
    ///  Request is invalid. The message in the response contains details on why the request is invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension HoneycodeErrorType: Equatable {
    public static func == (lhs: HoneycodeErrorType, rhs: HoneycodeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension HoneycodeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
