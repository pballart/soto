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

/// Error enum for Inspector
public struct InspectorErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case agentsAlreadyRunningAssessmentException = "AgentsAlreadyRunningAssessmentException"
        case assessmentRunInProgressException = "AssessmentRunInProgressException"
        case internalException = "InternalException"
        case invalidCrossAccountRoleException = "InvalidCrossAccountRoleException"
        case invalidInputException = "InvalidInputException"
        case limitExceededException = "LimitExceededException"
        case noSuchEntityException = "NoSuchEntityException"
        case previewGenerationInProgressException = "PreviewGenerationInProgressException"
        case serviceTemporarilyUnavailableException = "ServiceTemporarilyUnavailableException"
        case unsupportedFeatureException = "UnsupportedFeatureException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Inspector
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

    /// You do not have required permissions to access the requested resource.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// You started an assessment run, but one of the instances is already participating in another assessment run.
    public static var agentsAlreadyRunningAssessmentException: Self { .init(.agentsAlreadyRunningAssessmentException) }
    /// You cannot perform a specified action if an assessment run is currently in progress.
    public static var assessmentRunInProgressException: Self { .init(.assessmentRunInProgressException) }
    /// Internal server error.
    public static var internalException: Self { .init(.internalException) }
    /// Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
    public static var invalidCrossAccountRoleException: Self { .init(.invalidCrossAccountRoleException) }
    /// The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
    public static var noSuchEntityException: Self { .init(.noSuchEntityException) }
    /// The request is rejected. The specified assessment template is currently generating an exclusions preview.
    public static var previewGenerationInProgressException: Self { .init(.previewGenerationInProgressException) }
    /// The serice is temporary unavailable.
    public static var serviceTemporarilyUnavailableException: Self { .init(.serviceTemporarilyUnavailableException) }
    /// Used by the GetAssessmentReport API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.
    public static var unsupportedFeatureException: Self { .init(.unsupportedFeatureException) }
}

extension InspectorErrorType: Equatable {
    public static func == (lhs: InspectorErrorType, rhs: InspectorErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension InspectorErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
