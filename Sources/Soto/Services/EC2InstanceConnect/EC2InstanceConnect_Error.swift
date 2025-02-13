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

/// Error enum for EC2InstanceConnect
public struct EC2InstanceConnectErrorType: AWSErrorType {
    enum Code: String {
        case authException = "AuthException"
        case ec2InstanceNotFoundException = "EC2InstanceNotFoundException"
        case ec2InstanceStateInvalidException = "EC2InstanceStateInvalidException"
        case ec2InstanceTypeInvalidException = "EC2InstanceTypeInvalidException"
        case invalidArgsException = "InvalidArgsException"
        case serialConsoleAccessDisabledException = "SerialConsoleAccessDisabledException"
        case serialConsoleSessionLimitExceededException = "SerialConsoleSessionLimitExceededException"
        case serialConsoleSessionUnavailableException = "SerialConsoleSessionUnavailableException"
        case serviceException = "ServiceException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EC2InstanceConnect
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

    /// Either your AWS credentials are not valid or you do not have access to the EC2 instance.
    public static var authException: Self { .init(.authException) }
    /// The specified instance was not found.
    public static var ec2InstanceNotFoundException: Self { .init(.ec2InstanceNotFoundException) }
    /// Unable to connect because the instance is not in a valid state.  Connecting to a stopped or terminated instance is not supported. If the instance is stopped,  start your instance, and try to connect again.
    public static var ec2InstanceStateInvalidException: Self { .init(.ec2InstanceStateInvalidException) }
    /// The instance type is not supported for connecting via the serial console. Only Nitro instance types are currently supported.
    public static var ec2InstanceTypeInvalidException: Self { .init(.ec2InstanceTypeInvalidException) }
    /// One of the parameters is not valid.
    public static var invalidArgsException: Self { .init(.invalidArgsException) }
    /// Your account is not authorized to use the EC2 Serial Console. To authorize your account, run the EnableSerialConsoleAccess API. For more information, see EnableSerialConsoleAccess in the Amazon EC2 API Reference.
    public static var serialConsoleAccessDisabledException: Self { .init(.serialConsoleAccessDisabledException) }
    /// The instance currently has 1 active serial console session. Only 1 session is supported at a time.
    public static var serialConsoleSessionLimitExceededException: Self { .init(.serialConsoleSessionLimitExceededException) }
    /// Unable to start a serial console session. Please try again.
    public static var serialConsoleSessionUnavailableException: Self { .init(.serialConsoleSessionUnavailableException) }
    /// The service encountered an error. Follow the instructions in the error message and try again.
    public static var serviceException: Self { .init(.serviceException) }
    /// The requests were made too frequently and have been throttled. Wait a while and try again.  To increase the limit on your request frequency, contact AWS Support.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension EC2InstanceConnectErrorType: Equatable {
    public static func == (lhs: EC2InstanceConnectErrorType, rhs: EC2InstanceConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EC2InstanceConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
