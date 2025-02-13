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

/// Error enum for RedshiftData
public struct RedshiftDataErrorType: AWSErrorType {
    enum Code: String {
        case activeStatementsExceededException = "ActiveStatementsExceededException"
        case batchExecuteStatementException = "BatchExecuteStatementException"
        case databaseConnectionException = "DatabaseConnectionException"
        case executeStatementException = "ExecuteStatementException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RedshiftData
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

    /// The number of active statements exceeds the limit.
    public static var activeStatementsExceededException: Self { .init(.activeStatementsExceededException) }
    /// An SQL statement encountered an environmental error while running.
    public static var batchExecuteStatementException: Self { .init(.batchExecuteStatementException) }
    /// Connection to a database failed.
    public static var databaseConnectionException: Self { .init(.databaseConnectionException) }
    /// The SQL statement encountered an environmental error while running.
    public static var executeStatementException: Self { .init(.executeStatementException) }
    /// The Amazon Redshift Data API operation failed due to invalid input.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The Amazon Redshift Data API operation failed due to a missing resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The Amazon Redshift Data API operation failed due to invalid input.
    public static var validationException: Self { .init(.validationException) }
}

extension RedshiftDataErrorType: Equatable {
    public static func == (lhs: RedshiftDataErrorType, rhs: RedshiftDataErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RedshiftDataErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
