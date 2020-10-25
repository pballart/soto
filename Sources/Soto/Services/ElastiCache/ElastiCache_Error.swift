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

/// Error enum for ElastiCache
public struct ElastiCacheErrorType: AWSErrorType {
    enum Code: String {
        case aPICallRateForCustomerExceededFault = "APICallRateForCustomerExceeded"
        case authorizationAlreadyExistsFault = "AuthorizationAlreadyExists"
        case authorizationNotFoundFault = "AuthorizationNotFound"
        case cacheClusterAlreadyExistsFault = "CacheClusterAlreadyExists"
        case cacheClusterNotFoundFault = "CacheClusterNotFound"
        case cacheParameterGroupAlreadyExistsFault = "CacheParameterGroupAlreadyExists"
        case cacheParameterGroupNotFoundFault = "CacheParameterGroupNotFound"
        case cacheParameterGroupQuotaExceededFault = "CacheParameterGroupQuotaExceeded"
        case cacheSecurityGroupAlreadyExistsFault = "CacheSecurityGroupAlreadyExists"
        case cacheSecurityGroupNotFoundFault = "CacheSecurityGroupNotFound"
        case cacheSecurityGroupQuotaExceededFault = "QuotaExceeded.CacheSecurityGroup"
        case cacheSubnetGroupAlreadyExistsFault = "CacheSubnetGroupAlreadyExists"
        case cacheSubnetGroupInUse = "CacheSubnetGroupInUse"
        case cacheSubnetGroupNotFoundFault = "CacheSubnetGroupNotFoundFault"
        case cacheSubnetGroupQuotaExceededFault = "CacheSubnetGroupQuotaExceeded"
        case cacheSubnetQuotaExceededFault = "CacheSubnetQuotaExceededFault"
        case clusterQuotaForCustomerExceededFault = "ClusterQuotaForCustomerExceeded"
        case defaultUserAssociatedToUserGroupFault = "DefaultUserAssociatedToUserGroup"
        case defaultUserRequired = "DefaultUserRequired"
        case duplicateUserNameFault = "DuplicateUserName"
        case globalReplicationGroupAlreadyExistsFault = "GlobalReplicationGroupAlreadyExistsFault"
        case globalReplicationGroupNotFoundFault = "GlobalReplicationGroupNotFoundFault"
        case insufficientCacheClusterCapacityFault = "InsufficientCacheClusterCapacity"
        case invalidARNFault = "InvalidARN"
        case invalidCacheClusterStateFault = "InvalidCacheClusterState"
        case invalidCacheParameterGroupStateFault = "InvalidCacheParameterGroupState"
        case invalidCacheSecurityGroupStateFault = "InvalidCacheSecurityGroupState"
        case invalidGlobalReplicationGroupStateFault = "InvalidGlobalReplicationGroupState"
        case invalidKMSKeyFault = "InvalidKMSKeyFault"
        case invalidParameterCombinationException = "InvalidParameterCombination"
        case invalidParameterValueException = "InvalidParameterValue"
        case invalidReplicationGroupStateFault = "InvalidReplicationGroupState"
        case invalidSnapshotStateFault = "InvalidSnapshotState"
        case invalidSubnet = "InvalidSubnet"
        case invalidUserGroupStateFault = "InvalidUserGroupState"
        case invalidUserStateFault = "InvalidUserState"
        case invalidVPCNetworkStateFault = "InvalidVPCNetworkStateFault"
        case noOperationFault = "NoOperationFault"
        case nodeGroupNotFoundFault = "NodeGroupNotFoundFault"
        case nodeGroupsPerReplicationGroupQuotaExceededFault = "NodeGroupsPerReplicationGroupQuotaExceeded"
        case nodeQuotaForClusterExceededFault = "NodeQuotaForClusterExceeded"
        case nodeQuotaForCustomerExceededFault = "NodeQuotaForCustomerExceeded"
        case replicationGroupAlreadyExistsFault = "ReplicationGroupAlreadyExists"
        case replicationGroupAlreadyUnderMigrationFault = "ReplicationGroupAlreadyUnderMigrationFault"
        case replicationGroupNotFoundFault = "ReplicationGroupNotFoundFault"
        case replicationGroupNotUnderMigrationFault = "ReplicationGroupNotUnderMigrationFault"
        case reservedCacheNodeAlreadyExistsFault = "ReservedCacheNodeAlreadyExists"
        case reservedCacheNodeNotFoundFault = "ReservedCacheNodeNotFound"
        case reservedCacheNodeQuotaExceededFault = "ReservedCacheNodeQuotaExceeded"
        case reservedCacheNodesOfferingNotFoundFault = "ReservedCacheNodesOfferingNotFound"
        case serviceLinkedRoleNotFoundFault = "ServiceLinkedRoleNotFoundFault"
        case serviceUpdateNotFoundFault = "ServiceUpdateNotFoundFault"
        case snapshotAlreadyExistsFault = "SnapshotAlreadyExistsFault"
        case snapshotFeatureNotSupportedFault = "SnapshotFeatureNotSupportedFault"
        case snapshotNotFoundFault = "SnapshotNotFoundFault"
        case snapshotQuotaExceededFault = "SnapshotQuotaExceededFault"
        case subnetInUse = "SubnetInUse"
        case subnetNotAllowedFault = "SubnetNotAllowedFault"
        case tagNotFoundFault = "TagNotFound"
        case tagQuotaPerResourceExceeded = "TagQuotaPerResourceExceeded"
        case testFailoverNotAvailableFault = "TestFailoverNotAvailableFault"
        case userAlreadyExistsFault = "UserAlreadyExists"
        case userGroupAlreadyExistsFault = "UserGroupAlreadyExists"
        case userGroupNotFoundFault = "UserGroupNotFound"
        case userGroupQuotaExceededFault = "UserGroupQuotaExceeded"
        case userNotFoundFault = "UserNotFound"
        case userQuotaExceededFault = "UserQuotaExceeded"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ElastiCache
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

    /// The customer has exceeded the allowed rate of API calls.
    public static var aPICallRateForCustomerExceededFault: Self { .init(.aPICallRateForCustomerExceededFault) }
    /// The specified Amazon EC2 security group is already authorized for the specified cache security group.
    public static var authorizationAlreadyExistsFault: Self { .init(.authorizationAlreadyExistsFault) }
    /// The specified Amazon EC2 security group is not authorized for the specified cache security group.
    public static var authorizationNotFoundFault: Self { .init(.authorizationNotFoundFault) }
    /// You already have a cluster with the given identifier.
    public static var cacheClusterAlreadyExistsFault: Self { .init(.cacheClusterAlreadyExistsFault) }
    /// The requested cluster ID does not refer to an existing cluster.
    public static var cacheClusterNotFoundFault: Self { .init(.cacheClusterNotFoundFault) }
    /// A cache parameter group with the requested name already exists.
    public static var cacheParameterGroupAlreadyExistsFault: Self { .init(.cacheParameterGroupAlreadyExistsFault) }
    /// The requested cache parameter group name does not refer to an existing cache parameter group.
    public static var cacheParameterGroupNotFoundFault: Self { .init(.cacheParameterGroupNotFoundFault) }
    /// The request cannot be processed because it would exceed the maximum number of cache security groups.
    public static var cacheParameterGroupQuotaExceededFault: Self { .init(.cacheParameterGroupQuotaExceededFault) }
    /// A cache security group with the specified name already exists.
    public static var cacheSecurityGroupAlreadyExistsFault: Self { .init(.cacheSecurityGroupAlreadyExistsFault) }
    /// The requested cache security group name does not refer to an existing cache security group.
    public static var cacheSecurityGroupNotFoundFault: Self { .init(.cacheSecurityGroupNotFoundFault) }
    /// The request cannot be processed because it would exceed the allowed number of cache security groups.
    public static var cacheSecurityGroupQuotaExceededFault: Self { .init(.cacheSecurityGroupQuotaExceededFault) }
    /// The requested cache subnet group name is already in use by an existing cache subnet group.
    public static var cacheSubnetGroupAlreadyExistsFault: Self { .init(.cacheSubnetGroupAlreadyExistsFault) }
    /// The requested cache subnet group is currently in use.
    public static var cacheSubnetGroupInUse: Self { .init(.cacheSubnetGroupInUse) }
    /// The requested cache subnet group name does not refer to an existing cache subnet group.
    public static var cacheSubnetGroupNotFoundFault: Self { .init(.cacheSubnetGroupNotFoundFault) }
    /// The request cannot be processed because it would exceed the allowed number of cache subnet groups.
    public static var cacheSubnetGroupQuotaExceededFault: Self { .init(.cacheSubnetGroupQuotaExceededFault) }
    /// The request cannot be processed because it would exceed the allowed number of subnets in a cache subnet group.
    public static var cacheSubnetQuotaExceededFault: Self { .init(.cacheSubnetQuotaExceededFault) }
    /// The request cannot be processed because it would exceed the allowed number of clusters per customer.
    public static var clusterQuotaForCustomerExceededFault: Self { .init(.clusterQuotaForCustomerExceededFault) }
    public static var defaultUserAssociatedToUserGroupFault: Self { .init(.defaultUserAssociatedToUserGroupFault) }
    /// You must add default user to a user group.
    public static var defaultUserRequired: Self { .init(.defaultUserRequired) }
    /// A user with this username already exists.
    public static var duplicateUserNameFault: Self { .init(.duplicateUserNameFault) }
    /// The Global Datastore name already exists.
    public static var globalReplicationGroupAlreadyExistsFault: Self { .init(.globalReplicationGroupAlreadyExistsFault) }
    /// The Global Datastore does not exist
    public static var globalReplicationGroupNotFoundFault: Self { .init(.globalReplicationGroupNotFoundFault) }
    /// The requested cache node type is not available in the specified Availability Zone. For more information, see InsufficientCacheClusterCapacity in the ElastiCache User Guide.
    public static var insufficientCacheClusterCapacityFault: Self { .init(.insufficientCacheClusterCapacityFault) }
    /// The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    public static var invalidARNFault: Self { .init(.invalidARNFault) }
    /// The requested cluster is not in the available state.
    public static var invalidCacheClusterStateFault: Self { .init(.invalidCacheClusterStateFault) }
    /// The current state of the cache parameter group does not allow the requested operation to occur.
    public static var invalidCacheParameterGroupStateFault: Self { .init(.invalidCacheParameterGroupStateFault) }
    /// The current state of the cache security group does not allow deletion.
    public static var invalidCacheSecurityGroupStateFault: Self { .init(.invalidCacheSecurityGroupStateFault) }
    /// The Global Datastore is not available or in primary-only state.
    public static var invalidGlobalReplicationGroupStateFault: Self { .init(.invalidGlobalReplicationGroupStateFault) }
    /// The KMS key supplied is not valid.
    public static var invalidKMSKeyFault: Self { .init(.invalidKMSKeyFault) }
    /// Two or more incompatible parameters were specified.
    public static var invalidParameterCombinationException: Self { .init(.invalidParameterCombinationException) }
    /// The value for a parameter is invalid.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// The requested replication group is not in the available state.
    public static var invalidReplicationGroupStateFault: Self { .init(.invalidReplicationGroupStateFault) }
    /// The current state of the snapshot does not allow the requested operation to occur.
    public static var invalidSnapshotStateFault: Self { .init(.invalidSnapshotStateFault) }
    /// An invalid subnet identifier was specified.
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// The user group is not in an active state.
    public static var invalidUserGroupStateFault: Self { .init(.invalidUserGroupStateFault) }
    /// The user is not in active state.
    public static var invalidUserStateFault: Self { .init(.invalidUserStateFault) }
    /// The VPC network is in an invalid state.
    public static var invalidVPCNetworkStateFault: Self { .init(.invalidVPCNetworkStateFault) }
    /// The operation was not performed because no changes were required.
    public static var noOperationFault: Self { .init(.noOperationFault) }
    /// The node group specified by the NodeGroupId parameter could not be found. Please verify that the node group exists and that you spelled the NodeGroupId value correctly.
    public static var nodeGroupNotFoundFault: Self { .init(.nodeGroupNotFoundFault) }
    /// The request cannot be processed because it would exceed the maximum allowed number of node groups (shards) in a single replication group. The default maximum is 90
    public static var nodeGroupsPerReplicationGroupQuotaExceededFault: Self { .init(.nodeGroupsPerReplicationGroupQuotaExceededFault) }
    /// The request cannot be processed because it would exceed the allowed number of cache nodes in a single cluster.
    public static var nodeQuotaForClusterExceededFault: Self { .init(.nodeQuotaForClusterExceededFault) }
    /// The request cannot be processed because it would exceed the allowed number of cache nodes per customer.
    public static var nodeQuotaForCustomerExceededFault: Self { .init(.nodeQuotaForCustomerExceededFault) }
    /// The specified replication group already exists.
    public static var replicationGroupAlreadyExistsFault: Self { .init(.replicationGroupAlreadyExistsFault) }
    /// The targeted replication group is not available.
    public static var replicationGroupAlreadyUnderMigrationFault: Self { .init(.replicationGroupAlreadyUnderMigrationFault) }
    /// The specified replication group does not exist.
    public static var replicationGroupNotFoundFault: Self { .init(.replicationGroupNotFoundFault) }
    /// The designated replication group is not available for data migration.
    public static var replicationGroupNotUnderMigrationFault: Self { .init(.replicationGroupNotUnderMigrationFault) }
    /// You already have a reservation with the given identifier.
    public static var reservedCacheNodeAlreadyExistsFault: Self { .init(.reservedCacheNodeAlreadyExistsFault) }
    /// The requested reserved cache node was not found.
    public static var reservedCacheNodeNotFoundFault: Self { .init(.reservedCacheNodeNotFoundFault) }
    /// The request cannot be processed because it would exceed the user's cache node quota.
    public static var reservedCacheNodeQuotaExceededFault: Self { .init(.reservedCacheNodeQuotaExceededFault) }
    /// The requested cache node offering does not exist.
    public static var reservedCacheNodesOfferingNotFoundFault: Self { .init(.reservedCacheNodesOfferingNotFoundFault) }
    /// The specified service linked role (SLR) was not found.
    public static var serviceLinkedRoleNotFoundFault: Self { .init(.serviceLinkedRoleNotFoundFault) }
    /// The service update doesn't exist
    public static var serviceUpdateNotFoundFault: Self { .init(.serviceUpdateNotFoundFault) }
    /// You already have a snapshot with the given name.
    public static var snapshotAlreadyExistsFault: Self { .init(.snapshotAlreadyExistsFault) }
    /// You attempted one of the following operations:   Creating a snapshot of a Redis cluster running on a cache.t1.micro cache node.   Creating a snapshot of a cluster that is running Memcached rather than Redis.   Neither of these are supported by ElastiCache.
    public static var snapshotFeatureNotSupportedFault: Self { .init(.snapshotFeatureNotSupportedFault) }
    /// The requested snapshot name does not refer to an existing snapshot.
    public static var snapshotNotFoundFault: Self { .init(.snapshotNotFoundFault) }
    /// The request cannot be processed because it would exceed the maximum number of snapshots.
    public static var snapshotQuotaExceededFault: Self { .init(.snapshotQuotaExceededFault) }
    /// The requested subnet is being used by another cache subnet group.
    public static var subnetInUse: Self { .init(.subnetInUse) }
    /// At least one subnet ID does not match the other subnet IDs. This mismatch typically occurs when a user sets one subnet ID to a regional Availability Zone and a different one to an outpost. Or when a user sets the subnet ID to an Outpost when not subscribed on this service.
    public static var subnetNotAllowedFault: Self { .init(.subnetNotAllowedFault) }
    /// The requested tag was not found on this resource.
    public static var tagNotFoundFault: Self { .init(.tagNotFoundFault) }
    /// The request cannot be processed because it would cause the resource to have more than the allowed number of tags. The maximum number of tags permitted on a resource is 50.
    public static var tagQuotaPerResourceExceeded: Self { .init(.tagQuotaPerResourceExceeded) }
    /// The TestFailover action is not available.
    public static var testFailoverNotAvailableFault: Self { .init(.testFailoverNotAvailableFault) }
    /// A user with this ID already exists.
    public static var userAlreadyExistsFault: Self { .init(.userAlreadyExistsFault) }
    /// The user group with this ID already exists.
    public static var userGroupAlreadyExistsFault: Self { .init(.userGroupAlreadyExistsFault) }
    /// The user group was not found or does not exist
    public static var userGroupNotFoundFault: Self { .init(.userGroupNotFoundFault) }
    /// The number of users exceeds the user group limit.
    public static var userGroupQuotaExceededFault: Self { .init(.userGroupQuotaExceededFault) }
    /// The user does not exist or could not be found.
    public static var userNotFoundFault: Self { .init(.userNotFoundFault) }
    /// The quota of users has been exceeded.
    public static var userQuotaExceededFault: Self { .init(.userQuotaExceededFault) }
}

extension ElastiCacheErrorType: Equatable {
    public static func == (lhs: ElastiCacheErrorType, rhs: ElastiCacheErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ElastiCacheErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
