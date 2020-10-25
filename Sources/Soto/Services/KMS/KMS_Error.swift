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

/// Error enum for KMS
public struct KMSErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case cloudHsmClusterInUseException = "CloudHsmClusterInUseException"
        case cloudHsmClusterInvalidConfigurationException = "CloudHsmClusterInvalidConfigurationException"
        case cloudHsmClusterNotActiveException = "CloudHsmClusterNotActiveException"
        case cloudHsmClusterNotFoundException = "CloudHsmClusterNotFoundException"
        case cloudHsmClusterNotRelatedException = "CloudHsmClusterNotRelatedException"
        case customKeyStoreHasCMKsException = "CustomKeyStoreHasCMKsException"
        case customKeyStoreInvalidStateException = "CustomKeyStoreInvalidStateException"
        case customKeyStoreNameInUseException = "CustomKeyStoreNameInUseException"
        case customKeyStoreNotFoundException = "CustomKeyStoreNotFoundException"
        case dependencyTimeoutException = "DependencyTimeoutException"
        case disabledException = "DisabledException"
        case expiredImportTokenException = "ExpiredImportTokenException"
        case incorrectKeyException = "IncorrectKeyException"
        case incorrectKeyMaterialException = "IncorrectKeyMaterialException"
        case incorrectTrustAnchorException = "IncorrectTrustAnchorException"
        case invalidAliasNameException = "InvalidAliasNameException"
        case invalidArnException = "InvalidArnException"
        case invalidCiphertextException = "InvalidCiphertextException"
        case invalidGrantIdException = "InvalidGrantIdException"
        case invalidGrantTokenException = "InvalidGrantTokenException"
        case invalidImportTokenException = "InvalidImportTokenException"
        case invalidKeyUsageException = "InvalidKeyUsageException"
        case invalidMarkerException = "InvalidMarkerException"
        case kMSInternalException = "KMSInternalException"
        case kMSInvalidSignatureException = "KMSInvalidSignatureException"
        case kMSInvalidStateException = "KMSInvalidStateException"
        case keyUnavailableException = "KeyUnavailableException"
        case limitExceededException = "LimitExceededException"
        case malformedPolicyDocumentException = "MalformedPolicyDocumentException"
        case notFoundException = "NotFoundException"
        case tagException = "TagException"
        case unsupportedOperationException = "UnsupportedOperationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize KMS
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

    /// The request was rejected because it attempted to create a resource that already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// The request was rejected because the specified AWS CloudHSM cluster is already associated with a custom key store or it shares a backup history with a cluster that is associated with a custom key store. Each custom key store must be associated with a different AWS CloudHSM cluster. Clusters that share a backup history have the same cluster certificate. To view the cluster certificate of a cluster, use the DescribeClusters operation.
    public static var cloudHsmClusterInUseException: Self { .init(.cloudHsmClusterInUseException) }
    /// The request was rejected because the associated AWS CloudHSM cluster did not meet the configuration requirements for a custom key store.   The cluster must be configured with private subnets in at least two different Availability Zones in the Region.   The security group for the cluster (cloudhsm-cluster-&lt;cluster-id&gt;-sg) must include inbound rules and outbound rules that allow TCP traffic on ports 2223-2225. The Source in the inbound rules and the Destination in the outbound rules must match the security group ID. These rules are set by default when you create the cluster. Do not delete or change them. To get information about a particular security group, use the DescribeSecurityGroups operation.   The cluster must contain at least as many HSMs as the operation requires. To add HSMs, use the AWS CloudHSM CreateHsm operation. For the CreateCustomKeyStore, UpdateCustomKeyStore, and CreateKey operations, the AWS CloudHSM cluster must have at least two active HSMs, each in a different Availability Zone. For the ConnectCustomKeyStore operation, the AWS CloudHSM must contain at least one active HSM.   For information about the requirements for an AWS CloudHSM cluster that is associated with a custom key store, see Assemble the Prerequisites in the AWS Key Management Service Developer Guide. For information about creating a private subnet for an AWS CloudHSM cluster, see Create a Private Subnet in the AWS CloudHSM User Guide. For information about cluster security groups, see Configure a Default Security Group in the  AWS CloudHSM User Guide .
    public static var cloudHsmClusterInvalidConfigurationException: Self { .init(.cloudHsmClusterInvalidConfigurationException) }
    /// The request was rejected because the AWS CloudHSM cluster that is associated with the custom key store is not active. Initialize and activate the cluster and try the command again. For detailed instructions, see Getting Started in the AWS CloudHSM User Guide.
    public static var cloudHsmClusterNotActiveException: Self { .init(.cloudHsmClusterNotActiveException) }
    /// The request was rejected because AWS KMS cannot find the AWS CloudHSM cluster with the specified cluster ID. Retry the request with a different cluster ID.
    public static var cloudHsmClusterNotFoundException: Self { .init(.cloudHsmClusterNotFoundException) }
    /// The request was rejected because the specified AWS CloudHSM cluster has a different cluster certificate than the original cluster. You cannot use the operation to specify an unrelated cluster. Specify a cluster that shares a backup history with the original cluster. This includes clusters that were created from a backup of the current cluster, and clusters that were created from the same backup that produced the current cluster. Clusters that share a backup history have the same cluster certificate. To view the cluster certificate of a cluster, use the DescribeClusters operation.
    public static var cloudHsmClusterNotRelatedException: Self { .init(.cloudHsmClusterNotRelatedException) }
    /// The request was rejected because the custom key store contains AWS KMS customer master keys (CMKs). After verifying that you do not need to use the CMKs, use the ScheduleKeyDeletion operation to delete the CMKs. After they are deleted, you can delete the custom key store.
    public static var customKeyStoreHasCMKsException: Self { .init(.customKeyStoreHasCMKsException) }
    /// The request was rejected because of the ConnectionState of the custom key store. To get the ConnectionState of a custom key store, use the DescribeCustomKeyStores operation. This exception is thrown under the following conditions:   You requested the CreateKey or GenerateRandom operation in a custom key store that is not connected. These operations are valid only when the custom key store ConnectionState is CONNECTED.   You requested the UpdateCustomKeyStore or DeleteCustomKeyStore operation on a custom key store that is not disconnected. This operation is valid only when the custom key store ConnectionState is DISCONNECTED.   You requested the ConnectCustomKeyStore operation on a custom key store with a ConnectionState of DISCONNECTING or FAILED. This operation is valid for all other ConnectionState values.
    public static var customKeyStoreInvalidStateException: Self { .init(.customKeyStoreInvalidStateException) }
    /// The request was rejected because the specified custom key store name is already assigned to another custom key store in the account. Try again with a custom key store name that is unique in the account.
    public static var customKeyStoreNameInUseException: Self { .init(.customKeyStoreNameInUseException) }
    /// The request was rejected because AWS KMS cannot find a custom key store with the specified key store name or ID.
    public static var customKeyStoreNotFoundException: Self { .init(.customKeyStoreNotFoundException) }
    /// The system timed out while trying to fulfill the request. The request can be retried.
    public static var dependencyTimeoutException: Self { .init(.dependencyTimeoutException) }
    /// The request was rejected because the specified CMK is not enabled.
    public static var disabledException: Self { .init(.disabledException) }
    /// The request was rejected because the specified import token is expired. Use GetParametersForImport to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.
    public static var expiredImportTokenException: Self { .init(.expiredImportTokenException) }
    /// The request was rejected because the specified CMK cannot decrypt the data. The KeyId in a Decrypt request and the SourceKeyId in a ReEncrypt request must identify the same CMK that was used to encrypt the ciphertext.
    public static var incorrectKeyException: Self { .init(.incorrectKeyException) }
    /// The request was rejected because the key material in the request is, expired, invalid, or is not the same key material that was previously imported into this customer master key (CMK).
    public static var incorrectKeyMaterialException: Self { .init(.incorrectKeyMaterialException) }
    /// The request was rejected because the trust anchor certificate in the request is not the trust anchor certificate for the specified AWS CloudHSM cluster. When you initialize the cluster, you create the trust anchor certificate and save it in the customerCA.crt file.
    public static var incorrectTrustAnchorException: Self { .init(.incorrectTrustAnchorException) }
    /// The request was rejected because the specified alias name is not valid.
    public static var invalidAliasNameException: Self { .init(.invalidAliasNameException) }
    /// The request was rejected because a specified ARN, or an ARN in a key policy, is not valid.
    public static var invalidArnException: Self { .init(.invalidArnException) }
    /// From the Decrypt or ReEncrypt operation, the request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid. From the ImportKeyMaterial operation, the request was rejected because AWS KMS could not decrypt the encrypted (wrapped) key material.
    public static var invalidCiphertextException: Self { .init(.invalidCiphertextException) }
    /// The request was rejected because the specified GrantId is not valid.
    public static var invalidGrantIdException: Self { .init(.invalidGrantIdException) }
    /// The request was rejected because the specified grant token is not valid.
    public static var invalidGrantTokenException: Self { .init(.invalidGrantTokenException) }
    /// The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).
    public static var invalidImportTokenException: Self { .init(.invalidImportTokenException) }
    /// The request was rejected for one of the following reasons:    The KeyUsage value of the CMK is incompatible with the API operation.   The encryption algorithm or signing algorithm specified for the operation is incompatible with the type of key material in the CMK (CustomerMasterKeySpec).   For encrypting, decrypting, re-encrypting, and generating data keys, the KeyUsage must be ENCRYPT_DECRYPT. For signing and verifying, the KeyUsage must be SIGN_VERIFY. To find the KeyUsage of a CMK, use the DescribeKey operation. To find the encryption or signing algorithms supported for a particular CMK, use the DescribeKey operation.
    public static var invalidKeyUsageException: Self { .init(.invalidKeyUsageException) }
    /// The request was rejected because the marker that specifies where pagination should next begin is not valid.
    public static var invalidMarkerException: Self { .init(.invalidMarkerException) }
    /// The request was rejected because an internal exception occurred. The request can be retried.
    public static var kMSInternalException: Self { .init(.kMSInternalException) }
    /// The request was rejected because the signature verification failed. Signature verification fails when it cannot confirm that signature was produced by signing the specified message with the specified CMK and signing algorithm.
    public static var kMSInvalidSignatureException: Self { .init(.kMSInvalidSignatureException) }
    /// The request was rejected because the state of the specified resource is not valid for this request. For more information about how key state affects the use of a CMK, see How Key State Affects Use of a Customer Master Key in the  AWS Key Management Service Developer Guide .
    public static var kMSInvalidStateException: Self { .init(.kMSInvalidStateException) }
    /// The request was rejected because the specified CMK was not available. You can retry the request.
    public static var keyUnavailableException: Self { .init(.keyUnavailableException) }
    /// The request was rejected because a quota was exceeded. For more information, see Quotas in the AWS Key Management Service Developer Guide.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request was rejected because the specified policy is not syntactically or semantically correct.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// The request was rejected because the specified entity or resource could not be found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// The request was rejected because one or more tags are not valid.
    public static var tagException: Self { .init(.tagException) }
    /// The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
}

extension KMSErrorType: Equatable {
    public static func == (lhs: KMSErrorType, rhs: KMSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KMSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
