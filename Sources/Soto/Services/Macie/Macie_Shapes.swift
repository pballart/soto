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

import Foundation
import SotoCore

extension Macie {
    // MARK: Enums

    public enum S3ContinuousClassificationType: String, CustomStringConvertible, Codable, _SotoSendable {
        case full = "FULL"
        public var description: String { return self.rawValue }
    }

    public enum S3OneTimeClassificationType: String, CustomStringConvertible, Codable, _SotoSendable {
        case full = "FULL"
        case none = "NONE"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AssociateMemberAccountRequest: AWSEncodableShape {
        /// (Discontinued) The ID of the Amazon Web Services account that you want to associate with Amazon Macie Classic as a member account.
        public let memberAccountId: String

        public init(memberAccountId: String) {
            self.memberAccountId = memberAccountId
        }

        public func validate(name: String) throws {
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId
        }
    }

    public struct AssociateS3ResourcesRequest: AWSEncodableShape {
        /// (Discontinued) The ID of the Amazon Macie Classic member account whose resources you want to associate with Macie Classic.
        public let memberAccountId: String?
        /// (Discontinued) The S3 resources that you want to associate with Amazon Macie Classic for monitoring and data classification.
        public let s3Resources: [S3ResourceClassification]

        public init(memberAccountId: String? = nil, s3Resources: [S3ResourceClassification]) {
            self.memberAccountId = memberAccountId
            self.s3Resources = s3Resources
        }

        public func validate(name: String) throws {
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
            try self.s3Resources.forEach {
                try $0.validate(name: "\(name).s3Resources[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId
            case s3Resources
        }
    }

    public struct AssociateS3ResourcesResult: AWSDecodableShape {
        /// (Discontinued) S3 resources that couldn't be associated with Amazon Macie Classic. An error code and an error message are provided for each failed item.
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources
        }
    }

    public struct ClassificationType: AWSEncodableShape & AWSDecodableShape {
        /// (Discontinued) A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is successfully associated with Macie Classic.
        public let continuous: S3ContinuousClassificationType
        /// (Discontinued) A one-time classification of all of the existing objects in a specified S3 bucket.
        public let oneTime: S3OneTimeClassificationType

        public init(continuous: S3ContinuousClassificationType, oneTime: S3OneTimeClassificationType) {
            self.continuous = continuous
            self.oneTime = oneTime
        }

        private enum CodingKeys: String, CodingKey {
            case continuous
            case oneTime
        }
    }

    public struct ClassificationTypeUpdate: AWSEncodableShape {
        /// (Discontinued) A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is successfully associated with Macie Classic.
        public let continuous: S3ContinuousClassificationType?
        /// (Discontinued) A one-time classification of all of the existing objects in a specified S3 bucket.
        public let oneTime: S3OneTimeClassificationType?

        public init(continuous: S3ContinuousClassificationType? = nil, oneTime: S3OneTimeClassificationType? = nil) {
            self.continuous = continuous
            self.oneTime = oneTime
        }

        private enum CodingKeys: String, CodingKey {
            case continuous
            case oneTime
        }
    }

    public struct DisassociateMemberAccountRequest: AWSEncodableShape {
        /// (Discontinued) The ID of the member account that you want to remove from Amazon Macie Classic.
        public let memberAccountId: String

        public init(memberAccountId: String) {
            self.memberAccountId = memberAccountId
        }

        public func validate(name: String) throws {
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId
        }
    }

    public struct DisassociateS3ResourcesRequest: AWSEncodableShape {
        /// (Discontinued) The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie Classic.
        public let associatedS3Resources: [S3Resource]
        /// (Discontinued) The ID of the Amazon Macie Classic member account whose resources you want to remove from being monitored by Macie Classic.
        public let memberAccountId: String?

        public init(associatedS3Resources: [S3Resource], memberAccountId: String? = nil) {
            self.associatedS3Resources = associatedS3Resources
            self.memberAccountId = memberAccountId
        }

        public func validate(name: String) throws {
            try self.associatedS3Resources.forEach {
                try $0.validate(name: "\(name).associatedS3Resources[]")
            }
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case associatedS3Resources
            case memberAccountId
        }
    }

    public struct DisassociateS3ResourcesResult: AWSDecodableShape {
        /// (Discontinued) S3 resources that couldn't be removed from being monitored and classified by Amazon Macie Classic. An error code and an error message are provided for each failed item.
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources
        }
    }

    public struct FailedS3Resource: AWSDecodableShape {
        /// (Discontinued) The status code of a failed item.
        public let errorCode: String?
        /// (Discontinued) The error message of a failed item.
        public let errorMessage: String?
        /// (Discontinued) The failed S3 resources.
        public let failedItem: S3Resource?

        public init(errorCode: String? = nil, errorMessage: String? = nil, failedItem: S3Resource? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.failedItem = failedItem
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode
            case errorMessage
            case failedItem
        }
    }

    public struct ListMemberAccountsRequest: AWSEncodableShape {
        /// (Discontinued) Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.
        public let maxResults: Int?
        /// (Discontinued) Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 250)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 500)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults
            case nextToken
        }
    }

    public struct ListMemberAccountsResult: AWSDecodableShape {
        /// (Discontinued) A list of the Amazon Macie Classic member accounts returned by the action. The current Macie Classic administrator account is also included in this list.
        public let memberAccounts: [MemberAccount]?
        /// (Discontinued) When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
        public let nextToken: String?

        public init(memberAccounts: [MemberAccount]? = nil, nextToken: String? = nil) {
            self.memberAccounts = memberAccounts
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccounts
            case nextToken
        }
    }

    public struct ListS3ResourcesRequest: AWSEncodableShape {
        /// (Discontinued) Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250.
        public let maxResults: Int?
        /// (Discontinued) The Amazon Macie Classic member account ID whose associated S3 resources you want to list.
        public let memberAccountId: String?
        /// (Discontinued) Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
        public let nextToken: String?

        public init(maxResults: Int? = nil, memberAccountId: String? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.memberAccountId = memberAccountId
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 250)
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 500)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults
            case memberAccountId
            case nextToken
        }
    }

    public struct ListS3ResourcesResult: AWSDecodableShape {
        /// (Discontinued) When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
        public let nextToken: String?
        /// (Discontinued) A list of the associated S3 resources returned by the action.
        public let s3Resources: [S3ResourceClassification]?

        public init(nextToken: String? = nil, s3Resources: [S3ResourceClassification]? = nil) {
            self.nextToken = nextToken
            self.s3Resources = s3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case s3Resources
        }
    }

    public struct MemberAccount: AWSDecodableShape {
        /// (Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account.
        public let accountId: String?

        public init(accountId: String? = nil) {
            self.accountId = accountId
        }

        private enum CodingKeys: String, CodingKey {
            case accountId
        }
    }

    public struct S3Resource: AWSEncodableShape & AWSDecodableShape {
        /// (Discontinued) The name of the S3 bucket.
        public let bucketName: String
        /// (Discontinued) The prefix of the S3 bucket.
        public let prefix: String?

        public init(bucketName: String, prefix: String? = nil) {
            self.bucketName = bucketName
            self.prefix = prefix
        }

        public func validate(name: String) throws {
            try self.validate(self.bucketName, name: "bucketName", parent: name, max: 500)
            try self.validate(self.prefix, name: "prefix", parent: name, max: 10000)
        }

        private enum CodingKeys: String, CodingKey {
            case bucketName
            case prefix
        }
    }

    public struct S3ResourceClassification: AWSEncodableShape & AWSDecodableShape {
        /// (Discontinued) The name of the S3 bucket that you want to associate with Amazon Macie Classic.
        public let bucketName: String
        /// (Discontinued) The classification type that you want to specify for the resource associated with Amazon Macie Classic.
        public let classificationType: ClassificationType
        /// (Discontinued) The prefix of the S3 bucket that you want to associate with Amazon Macie Classic.
        public let prefix: String?

        public init(bucketName: String, classificationType: ClassificationType, prefix: String? = nil) {
            self.bucketName = bucketName
            self.classificationType = classificationType
            self.prefix = prefix
        }

        public func validate(name: String) throws {
            try self.validate(self.bucketName, name: "bucketName", parent: name, max: 500)
            try self.validate(self.prefix, name: "prefix", parent: name, max: 10000)
        }

        private enum CodingKeys: String, CodingKey {
            case bucketName
            case classificationType
            case prefix
        }
    }

    public struct S3ResourceClassificationUpdate: AWSEncodableShape {
        /// (Discontinued) The name of the S3 bucket whose classification types you want to update.
        public let bucketName: String
        /// (Discontinued) The classification type that you want to update for the resource associated with Amazon Macie Classic.
        public let classificationTypeUpdate: ClassificationTypeUpdate
        /// (Discontinued) The prefix of the S3 bucket whose classification types you want to update.
        public let prefix: String?

        public init(bucketName: String, classificationTypeUpdate: ClassificationTypeUpdate, prefix: String? = nil) {
            self.bucketName = bucketName
            self.classificationTypeUpdate = classificationTypeUpdate
            self.prefix = prefix
        }

        public func validate(name: String) throws {
            try self.validate(self.bucketName, name: "bucketName", parent: name, max: 500)
            try self.validate(self.prefix, name: "prefix", parent: name, max: 10000)
        }

        private enum CodingKeys: String, CodingKey {
            case bucketName
            case classificationTypeUpdate
            case prefix
        }
    }

    public struct UpdateS3ResourcesRequest: AWSEncodableShape {
        /// (Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account whose S3 resources' classification types you want to update.
        public let memberAccountId: String?
        /// (Discontinued) The S3 resources whose classification types you want to update.
        public let s3ResourcesUpdate: [S3ResourceClassificationUpdate]

        public init(memberAccountId: String? = nil, s3ResourcesUpdate: [S3ResourceClassificationUpdate]) {
            self.memberAccountId = memberAccountId
            self.s3ResourcesUpdate = s3ResourcesUpdate
        }

        public func validate(name: String) throws {
            try self.validate(self.memberAccountId, name: "memberAccountId", parent: name, pattern: "^[0-9]{12}$")
            try self.s3ResourcesUpdate.forEach {
                try $0.validate(name: "\(name).s3ResourcesUpdate[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId
            case s3ResourcesUpdate
        }
    }

    public struct UpdateS3ResourcesResult: AWSDecodableShape {
        /// (Discontinued) The S3 resources whose classification types can't be updated. An error code and an error message are provided for each failed item.
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources
        }
    }
}
