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

/// Error enum for Forecast
public struct ForecastErrorType: AWSErrorType {
    enum Code: String {
        case invalidInputException = "InvalidInputException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Forecast
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

    /// We can't process the request because it includes an invalid value or a value that exceeds the valid range.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The token is not valid. Tokens expire after 24 hours.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The limit on the number of resources per account has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// There is already a resource with this name. Try again with a different name.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource is in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// We can't find a resource with that Amazon Resource Name (ARN). Check the ARN and try again.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension ForecastErrorType: Equatable {
    public static func == (lhs: ForecastErrorType, rhs: ForecastErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ForecastErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
