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

/// Error enum for IoT
public struct IoTErrorType: AWSErrorType {
    enum Code: String {
        case certificateConflictException = "CertificateConflictException"
        case certificateStateException = "CertificateStateException"
        case certificateValidationException = "CertificateValidationException"
        case conflictException = "ConflictException"
        case conflictingResourceUpdateException = "ConflictingResourceUpdateException"
        case deleteConflictException = "DeleteConflictException"
        case indexNotReadyException = "IndexNotReadyException"
        case internalException = "InternalException"
        case internalFailureException = "InternalFailureException"
        case internalServerException = "InternalServerException"
        case invalidAggregationException = "InvalidAggregationException"
        case invalidQueryException = "InvalidQueryException"
        case invalidRequestException = "InvalidRequestException"
        case invalidResponseException = "InvalidResponseException"
        case invalidStateTransitionException = "InvalidStateTransitionException"
        case limitExceededException = "LimitExceededException"
        case malformedPolicyException = "MalformedPolicyException"
        case notConfiguredException = "NotConfiguredException"
        case registrationCodeValidationException = "RegistrationCodeValidationException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceRegistrationFailureException = "ResourceRegistrationFailureException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case sqlParseException = "SqlParseException"
        case taskAlreadyExistsException = "TaskAlreadyExistsException"
        case throttlingException = "ThrottlingException"
        case transferAlreadyCompletedException = "TransferAlreadyCompletedException"
        case transferConflictException = "TransferConflictException"
        case unauthorizedException = "UnauthorizedException"
        case versionConflictException = "VersionConflictException"
        case versionsLimitExceededException = "VersionsLimitExceededException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoT
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

    /// Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.
    public static var certificateConflictException: Self { .init(.certificateConflictException) }
    /// The certificate operation is not allowed.
    public static var certificateStateException: Self { .init(.certificateStateException) }
    /// The certificate is invalid.
    public static var certificateValidationException: Self { .init(.certificateValidationException) }
    /// A resource with the same name already exists.
    public static var conflictException: Self { .init(.conflictException) }
    /// A conflicting resource update exception. This exception is thrown when two pending updates cause a conflict.
    public static var conflictingResourceUpdateException: Self { .init(.conflictingResourceUpdateException) }
    /// You can't delete the resource because it is attached to one or more resources.
    public static var deleteConflictException: Self { .init(.deleteConflictException) }
    /// The index is not ready.
    public static var indexNotReadyException: Self { .init(.indexNotReadyException) }
    /// An unexpected error has occurred.
    public static var internalException: Self { .init(.internalException) }
    /// An unexpected error has occurred.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// Internal error from the service that indicates an unexpected error or that the service is unavailable.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The aggregation is invalid.
    public static var invalidAggregationException: Self { .init(.invalidAggregationException) }
    /// The query is invalid.
    public static var invalidQueryException: Self { .init(.invalidQueryException) }
    /// The request is not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The response is invalid.
    public static var invalidResponseException: Self { .init(.invalidResponseException) }
    /// An attempt was made to change to an invalid state, for example by deleting a job or a job execution which is "IN_PROGRESS" without setting the force parameter.
    public static var invalidStateTransitionException: Self { .init(.invalidStateTransitionException) }
    /// A limit has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The policy documentation is not valid.
    public static var malformedPolicyException: Self { .init(.malformedPolicyException) }
    /// The resource is not configured.
    public static var notConfiguredException: Self { .init(.notConfiguredException) }
    /// The registration code is invalid.
    public static var registrationCodeValidationException: Self { .init(.registrationCodeValidationException) }
    /// The resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The resource registration failed.
    public static var resourceRegistrationFailureException: Self { .init(.resourceRegistrationFailureException) }
    /// The service is temporarily unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The Rule-SQL expression can't be parsed correctly.
    public static var sqlParseException: Self { .init(.sqlParseException) }
    ///  This exception occurs if you attempt to start a task with the same task-id as an existing task but with a different clientRequestToken.
    public static var taskAlreadyExistsException: Self { .init(.taskAlreadyExistsException) }
    /// The rate exceeds the limit.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// You can't revert the certificate transfer because the transfer is already complete.
    public static var transferAlreadyCompletedException: Self { .init(.transferAlreadyCompletedException) }
    /// You can't transfer the certificate because authorization policies are still attached.
    public static var transferConflictException: Self { .init(.transferConflictException) }
    /// You are not authorized to perform this operation.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
    /// An exception thrown when the version of an entity specified with the expectedVersion parameter does not match the latest version in the system.
    public static var versionConflictException: Self { .init(.versionConflictException) }
    /// The number of policy versions exceeds the limit.
    public static var versionsLimitExceededException: Self { .init(.versionsLimitExceededException) }
}

extension IoTErrorType: Equatable {
    public static func == (lhs: IoTErrorType, rhs: IoTErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
