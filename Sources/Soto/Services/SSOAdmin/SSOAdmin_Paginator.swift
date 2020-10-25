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

// MARK: Paginators

extension SSOAdmin {
    ///  Lists the status of the AWS account assignment creation requests for a specified SSO instance.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccountAssignmentCreationStatusPaginator<Result>(
        _ input: ListAccountAssignmentCreationStatusRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListAccountAssignmentCreationStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountAssignmentCreationStatus,
            tokenKey: \ListAccountAssignmentCreationStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccountAssignmentCreationStatusPaginator(
        _ input: ListAccountAssignmentCreationStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentCreationStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignmentCreationStatus,
            tokenKey: \ListAccountAssignmentCreationStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the status of the AWS account assignment deletion requests for a specified SSO instance.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccountAssignmentDeletionStatusPaginator<Result>(
        _ input: ListAccountAssignmentDeletionStatusRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListAccountAssignmentDeletionStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountAssignmentDeletionStatus,
            tokenKey: \ListAccountAssignmentDeletionStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccountAssignmentDeletionStatusPaginator(
        _ input: ListAccountAssignmentDeletionStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentDeletionStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignmentDeletionStatus,
            tokenKey: \ListAccountAssignmentDeletionStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the assignee of the specified AWS account with the specified permission set.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccountAssignmentsPaginator<Result>(
        _ input: ListAccountAssignmentsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListAccountAssignmentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountAssignments,
            tokenKey: \ListAccountAssignmentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccountAssignmentsPaginator(
        _ input: ListAccountAssignmentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountAssignmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssignments,
            tokenKey: \ListAccountAssignmentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the AWS accounts where the specified permission set is provisioned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccountsForProvisionedPermissionSetPaginator<Result>(
        _ input: ListAccountsForProvisionedPermissionSetRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListAccountsForProvisionedPermissionSetResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountsForProvisionedPermissionSet,
            tokenKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccountsForProvisionedPermissionSetPaginator(
        _ input: ListAccountsForProvisionedPermissionSetRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAccountsForProvisionedPermissionSetResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountsForProvisionedPermissionSet,
            tokenKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the SSO instances that the caller has access to.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listInstancesPaginator<Result>(
        _ input: ListInstancesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListInstancesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInstances,
            tokenKey: \ListInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstances,
            tokenKey: \ListInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the IAM managed policy that is attached to a specified permission set.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listManagedPoliciesInPermissionSetPaginator<Result>(
        _ input: ListManagedPoliciesInPermissionSetRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListManagedPoliciesInPermissionSetResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listManagedPoliciesInPermissionSet,
            tokenKey: \ListManagedPoliciesInPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listManagedPoliciesInPermissionSetPaginator(
        _ input: ListManagedPoliciesInPermissionSetRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListManagedPoliciesInPermissionSetResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listManagedPoliciesInPermissionSet,
            tokenKey: \ListManagedPoliciesInPermissionSetResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the status of the permission set provisioning requests for a specified SSO instance.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPermissionSetProvisioningStatusPaginator<Result>(
        _ input: ListPermissionSetProvisioningStatusRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListPermissionSetProvisioningStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPermissionSetProvisioningStatus,
            tokenKey: \ListPermissionSetProvisioningStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPermissionSetProvisioningStatusPaginator(
        _ input: ListPermissionSetProvisioningStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetProvisioningStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSetProvisioningStatus,
            tokenKey: \ListPermissionSetProvisioningStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the PermissionSets in an SSO instance.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPermissionSetsPaginator<Result>(
        _ input: ListPermissionSetsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListPermissionSetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPermissionSets,
            tokenKey: \ListPermissionSetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPermissionSetsPaginator(
        _ input: ListPermissionSetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSets,
            tokenKey: \ListPermissionSetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the permission sets that are provisioned to a specified AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPermissionSetsProvisionedToAccountPaginator<Result>(
        _ input: ListPermissionSetsProvisionedToAccountRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListPermissionSetsProvisionedToAccountResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPermissionSetsProvisionedToAccount,
            tokenKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPermissionSetsProvisionedToAccountPaginator(
        _ input: ListPermissionSetsProvisionedToAccountRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPermissionSetsProvisionedToAccountResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPermissionSetsProvisionedToAccount,
            tokenKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the tags that are attached to a specified resource.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTagsForResourcePaginator<Result>(
        _ input: ListTagsForResourceRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SSOAdmin.ListAccountAssignmentCreationStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentCreationStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListAccountAssignmentDeletionStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentDeletionStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListAccountAssignmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentsRequest {
        return .init(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )
    }
}

extension SSOAdmin.ListAccountsForProvisionedPermissionSetRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountsForProvisionedPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn,
            provisioningStatus: self.provisioningStatus
        )
    }
}

extension SSOAdmin.ListInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListInstancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListManagedPoliciesInPermissionSetRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListManagedPoliciesInPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )
    }
}

extension SSOAdmin.ListPermissionSetProvisioningStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetProvisioningStatusRequest {
        return .init(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListPermissionSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsRequest {
        return .init(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSOAdmin.ListPermissionSetsProvisionedToAccountRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsProvisionedToAccountRequest {
        return .init(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningStatus: self.provisioningStatus
        )
    }
}

extension SSOAdmin.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListTagsForResourceRequest {
        return .init(
            instanceArn: self.instanceArn,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}
