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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for Snowball
public struct SnowballErrorType: AWSErrorType {
    enum Code: String {
        case clusterLimitExceededException = "ClusterLimitExceededException"
        case conflictException = "ConflictException"
        case ec2RequestFailedException = "Ec2RequestFailedException"
        case invalidAddressException = "InvalidAddressException"
        case invalidInputCombinationException = "InvalidInputCombinationException"
        case invalidJobStateException = "InvalidJobStateException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidResourceException = "InvalidResourceException"
        case kMSRequestFailedException = "KMSRequestFailedException"
        case returnShippingLabelAlreadyExistsException = "ReturnShippingLabelAlreadyExistsException"
        case unsupportedAddressException = "UnsupportedAddressException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Snowball
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

    /// Job creation failed. Currently, clusters support five nodes. If you have fewer than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five nodes.
    public static var clusterLimitExceededException: Self { .init(.clusterLimitExceededException) }
    /// You get this exception when you call CreateReturnShippingLabel more than once when other requests are not completed.
    public static var conflictException: Self { .init(.conflictException) }
    /// Your IAM user lacks the necessary Amazon EC2 permissions to perform the attempted action.
    public static var ec2RequestFailedException: Self { .init(.ec2RequestFailedException) }
    /// The address provided was invalid. Check the address with your region's carrier, and try again.
    public static var invalidAddressException: Self { .init(.invalidAddressException) }
    /// Job or cluster creation failed. One or more inputs were invalid. Confirm that the CreateClusterRequest$SnowballType value supports your CreateJobRequest$JobType, and try again.
    public static var invalidInputCombinationException: Self { .init(.invalidInputCombinationException) }
    /// The action can't be performed because the job's current state doesn't allow that action to be performed.
    public static var invalidJobStateException: Self { .init(.invalidJobStateException) }
    /// The NextToken string was altered unexpectedly, and the operation has stopped. Run the operation without changing the NextToken string, and try again.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The specified resource can't be found. Check the information you provided in your last request, and try again.
    public static var invalidResourceException: Self { .init(.invalidResourceException) }
    /// The provided Key Management Service key lacks the permissions to perform the specified CreateJob or UpdateJob action.
    public static var kMSRequestFailedException: Self { .init(.kMSRequestFailedException) }
    /// You get this exception if you call CreateReturnShippingLabel and a valid return shipping label already exists. In this case, use DescribeReturnShippingLabel to get the URL.
    public static var returnShippingLabelAlreadyExistsException: Self { .init(.returnShippingLabelAlreadyExistsException) }
    /// The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact Amazon Web Services Support.
    public static var unsupportedAddressException: Self { .init(.unsupportedAddressException) }
}

extension SnowballErrorType: Equatable {
    public static func == (lhs: SnowballErrorType, rhs: SnowballErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SnowballErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
