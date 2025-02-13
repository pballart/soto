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

@_exported import SotoCore

/// Service object for interacting with AWS Detective service.
///
/// Detective uses machine learning and purpose-built visualizations to help you to analyze and investigate security issues across your Amazon Web Services (Amazon Web Services) workloads. Detective automatically extracts time-based events such as login attempts, API calls, and network traffic from CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected by Amazon GuardDuty. The Detective API primarily supports the creation and management of behavior graphs. A behavior graph contains the extracted data from a set of member accounts, and is created and managed by an administrator account. To add a member account to the behavior graph, the administrator account sends an invitation to the account. When the account accepts the invitation, it becomes a member account in the behavior graph. Detective is also integrated with Organizations. The organization management account designates the Detective administrator account for the organization. That account becomes the administrator account for the organization behavior graph. The Detective administrator account can enable any organization account as a member account in the organization behavior graph. The organization accounts do not receive invitations. The Detective administrator account can also invite other accounts to the organization behavior graph. Every behavior graph is specific to a Region. You can only use the API to manage behavior graphs that belong to the Region that is associated with the currently selected endpoint. The administrator account for a behavior graph can use the Detective API to do the following:   Enable and disable Detective. Enabling Detective creates a new behavior graph.   View the list of member accounts in a behavior graph.   Add member accounts to a behavior graph.   Remove member accounts from a behavior graph.   Apply tags to a behavior graph.   The organization management account can use the Detective API to select the delegated administrator for Detective. The Detective administrator account for an organization can use the Detective API to do the following:   Perform all of the functions of an administrator account.   Determine whether to automatically enable new organization accounts as member accounts in the organization behavior graph.   An invited member account can use the Detective API to do the following:   View the list of behavior graphs that they are invited to.   Accept an invitation to contribute to a behavior graph.   Decline an invitation to contribute to a behavior graph.   Remove their account from a behavior graph.   All API actions are logged as CloudTrail events. See Logging Detective API Calls with CloudTrail.  We replaced the term "master account" with the term "administrator account." An administrator account is used to centrally manage multiple accounts. In the case of Detective, the administrator account manages the accounts in their behavior graph.
public struct Detective: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Detective client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "api.detective",
            signingName: "detective",
            serviceProtocol: .restjson,
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            errorType: DetectiveErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.
    @discardableResult public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AcceptInvitation", path: "/invitation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new behavior graph for the calling account, and sets that account as the administrator account. This operation is called by the account that is enabling Detective. Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective.  The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the administrator account for one behavior graph within a Region. If the same account calls CreateGraph with the same administrator account, it always returns the same behavior graph ARN. It does not create a new behavior graph.
    public func createGraph(_ input: CreateGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGraphResponse> {
        return self.client.execute(operation: "CreateGraph", path: "/graph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  CreateMembers is used to send invitations to accounts. For the organization behavior graph, the Detective administrator account uses CreateMembers to enable organization accounts as member accounts. For invited accounts, CreateMembers sends a request to invite the specified Amazon Web Services accounts to be member accounts in the behavior graph. This operation can only be called by the administrator account for a behavior graph.   CreateMembers verifies the accounts and then invites the verified accounts. The administrator can optionally specify to not send invitation emails to the member accounts. This would be used when the administrator manages their member accounts centrally. For organization accounts in the organization behavior graph, CreateMembers attempts to enable the accounts. The organization accounts do not receive invitations. The request provides the behavior graph ARN and the list of accounts to invite or to enable. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to process. For invited accounts, includes member accounts that are being verified, that have passed verification and are to be invited, and that have failed verification. For organization accounts in the organization behavior graph, includes accounts that can be enabled and that cannot be enabled.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMembersResponse> {
        return self.client.execute(operation: "CreateMembers", path: "/graph/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the specified behavior graph and queues it to be deleted. This operation removes the behavior graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the administrator account for a behavior graph.
    @discardableResult public func deleteGraph(_ input: DeleteGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteGraph", path: "/graph/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified member accounts from the behavior graph. The removed accounts no longer contribute data to the behavior graph. This operation can only be called by the administrator account for the behavior graph. For invited accounts, the removed accounts are deleted from the list of accounts in the behavior graph. To restore the account, the administrator account must send another invitation. For organization accounts in the organization behavior graph, the Detective administrator account can always enable the organization account again. Organization accounts that are not enabled as member accounts are not included in the ListMembers results for the organization behavior graph. An administrator account cannot use DeleteMembers to remove their own account from the behavior graph. To disable a behavior graph, the administrator account uses the DeleteGraph API method.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMembersResponse> {
        return self.client.execute(operation: "DeleteMembers", path: "/graph/members/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the configuration for the organization behavior graph. Currently indicates whether to automatically enable new organization accounts as member accounts. Can only be called by the Detective administrator account for the organization.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationConfigurationResponse> {
        return self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/orgs/describeOrganizationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the Detective administrator account for the organization in the current Region. Deletes the behavior graph for that account. Can only be called by the organization management account. Before you can select a different Detective administrator account, you must remove the Detective administrator account in all Regions.
    @discardableResult public func disableOrganizationAdminAccount(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/orgs/disableAdminAccount", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Removes the member account from the specified behavior graph. This operation can only be called by an invited member account that has the ENABLED status.  DisassociateMembership cannot be called by an organization account in the organization behavior graph. For the organization behavior graph, the Detective administrator account determines which organization accounts to enable or disable as member accounts.
    @discardableResult public func disassociateMembership(_ input: DisassociateMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateMembership", path: "/membership/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the Detective administrator account for the organization in the current Region. If the account does not have Detective enabled, then enables Detective for that account and creates a new behavior graph. Can only be called by the organization management account. The Detective administrator account for an organization must be the same in all Regions. If you already designated a Detective administrator account in another Region, then you must designate the same account.
    @discardableResult public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/orgs/enableAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the membership details for specified member accounts for a behavior graph.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMembersResponse> {
        return self.client.execute(operation: "GetMembers", path: "/graph/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of behavior graphs that the calling account is an administrator account of. This operation can only be called by an administrator account. Because an account can currently only be the administrator of one behavior graph within a Region, the results always contain a single behavior graph.
    public func listGraphs(_ input: ListGraphsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGraphsResponse> {
        return self.client.execute(operation: "ListGraphs", path: "/graphs/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by an invited member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInvitationsResponse> {
        return self.client.execute(operation: "ListInvitations", path: "/invitations/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of member accounts for a behavior graph. For invited accounts, the results do not include member accounts that were removed from the behavior graph. For the organization behavior graph, the results do not include organization accounts that the Detective administrator account has not enabled as member accounts.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMembersResponse> {
        return self.client.execute(operation: "ListMembers", path: "/graph/members/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the Detective administrator account for an organization. Can only be called by the organization management account.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationAdminAccountsResponse> {
        return self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/orgs/adminAccountslist", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the tag values that are assigned to a behavior graph.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by an invited member account that has the INVITED status.  RejectInvitation cannot be called by an organization account in the organization behavior graph. In the organization behavior graph, organization accounts do not receive an invitation.
    @discardableResult public func rejectInvitation(_ input: RejectInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RejectInvitation", path: "/invitation/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED. For valid member accounts, the status is updated as follows.   If Detective enabled the member account, then the new status is ENABLED.   If Detective cannot enable the member account, the status remains ACCEPTED_BUT_DISABLED.
    @discardableResult public func startMonitoringMember(_ input: StartMonitoringMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StartMonitoringMember", path: "/graph/member/monitoringstate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies tag values to a behavior graph.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a behavior graph.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration for the Organizations integration in the current Region. Can only be called by the Detective administrator account for the organization.
    @discardableResult public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/orgs/updateOrganizationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Detective {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Detective, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
