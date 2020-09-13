// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension IoT {

    ///  Lists the active violations for a given Device Defender security profile.
    public func listActiveViolationsPaginator(_ input: ListActiveViolationsRequest, onPage: @escaping (ListActiveViolationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listActiveViolations, tokenKey: \ListActiveViolationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the policies attached to the specified thing group.
    public func listAttachedPoliciesPaginator(_ input: ListAttachedPoliciesRequest, onPage: @escaping (ListAttachedPoliciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAttachedPolicies, tokenKey: \ListAttachedPoliciesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 180 days.)
    public func listAuditFindingsPaginator(_ input: ListAuditFindingsRequest, onPage: @escaping (ListAuditFindingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuditFindings, tokenKey: \ListAuditFindingsResponse.nextToken, onPage: onPage)
    }

    ///  Gets the status of audit mitigation action tasks that were executed.
    public func listAuditMitigationActionsExecutionsPaginator(_ input: ListAuditMitigationActionsExecutionsRequest, onPage: @escaping (ListAuditMitigationActionsExecutionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuditMitigationActionsExecutions, tokenKey: \ListAuditMitigationActionsExecutionsResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of audit mitigation action tasks that match the specified filters.
    public func listAuditMitigationActionsTasksPaginator(_ input: ListAuditMitigationActionsTasksRequest, onPage: @escaping (ListAuditMitigationActionsTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuditMitigationActionsTasks, tokenKey: \ListAuditMitigationActionsTasksResponse.nextToken, onPage: onPage)
    }

    ///   Lists your Device Defender audit listings. 
    public func listAuditSuppressionsPaginator(_ input: ListAuditSuppressionsRequest, onPage: @escaping (ListAuditSuppressionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuditSuppressions, tokenKey: \ListAuditSuppressionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Device Defender audits that have been performed during a given time period.
    public func listAuditTasksPaginator(_ input: ListAuditTasksRequest, onPage: @escaping (ListAuditTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuditTasks, tokenKey: \ListAuditTasksResponse.nextToken, onPage: onPage)
    }

    ///  Lists the authorizers registered in your account.
    public func listAuthorizersPaginator(_ input: ListAuthorizersRequest, onPage: @escaping (ListAuthorizersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAuthorizers, tokenKey: \ListAuthorizersResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the billing groups you have created.
    public func listBillingGroupsPaginator(_ input: ListBillingGroupsRequest, onPage: @escaping (ListBillingGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBillingGroups, tokenKey: \ListBillingGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the CA certificates registered for your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
    public func listCACertificatesPaginator(_ input: ListCACertificatesRequest, onPage: @escaping (ListCACertificatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCACertificates, tokenKey: \ListCACertificatesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the certificates registered in your AWS account. The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
    public func listCertificatesPaginator(_ input: ListCertificatesRequest, onPage: @escaping (ListCertificatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCertificates, tokenKey: \ListCertificatesResponse.nextMarker, onPage: onPage)
    }

    ///  List the device certificates signed by the specified CA certificate.
    public func listCertificatesByCAPaginator(_ input: ListCertificatesByCARequest, onPage: @escaping (ListCertificatesByCAResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCertificatesByCA, tokenKey: \ListCertificatesByCAResponse.nextMarker, onPage: onPage)
    }

    ///  List the set of dimensions that are defined for your AWS account.
    public func listDimensionsPaginator(_ input: ListDimensionsRequest, onPage: @escaping (ListDimensionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDimensions, tokenKey: \ListDimensionsResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of domain configurations for the user. This list is sorted alphabetically by domain configuration name.  The domain configuration feature is in public preview and is subject to change. 
    public func listDomainConfigurationsPaginator(_ input: ListDomainConfigurationsRequest, onPage: @escaping (ListDomainConfigurationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomainConfigurations, tokenKey: \ListDomainConfigurationsResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the search indices.
    public func listIndicesPaginator(_ input: ListIndicesRequest, onPage: @escaping (ListIndicesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIndices, tokenKey: \ListIndicesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the job executions for a job.
    public func listJobExecutionsForJobPaginator(_ input: ListJobExecutionsForJobRequest, onPage: @escaping (ListJobExecutionsForJobResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobExecutionsForJob, tokenKey: \ListJobExecutionsForJobResponse.nextToken, onPage: onPage)
    }

    ///  Lists the job executions for the specified thing.
    public func listJobExecutionsForThingPaginator(_ input: ListJobExecutionsForThingRequest, onPage: @escaping (ListJobExecutionsForThingResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobExecutionsForThing, tokenKey: \ListJobExecutionsForThingResponse.nextToken, onPage: onPage)
    }

    ///  Lists jobs.
    public func listJobsPaginator(_ input: ListJobsRequest, onPage: @escaping (ListJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of all mitigation actions that match the specified filter criteria.
    public func listMitigationActionsPaginator(_ input: ListMitigationActionsRequest, onPage: @escaping (ListMitigationActionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMitigationActions, tokenKey: \ListMitigationActionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists OTA updates.
    public func listOTAUpdatesPaginator(_ input: ListOTAUpdatesRequest, onPage: @escaping (ListOTAUpdatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOTAUpdates, tokenKey: \ListOTAUpdatesResponse.nextToken, onPage: onPage)
    }

    ///  Lists certificates that are being transferred but not yet accepted.
    public func listOutgoingCertificatesPaginator(_ input: ListOutgoingCertificatesRequest, onPage: @escaping (ListOutgoingCertificatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOutgoingCertificates, tokenKey: \ListOutgoingCertificatesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists your policies.
    public func listPoliciesPaginator(_ input: ListPoliciesRequest, onPage: @escaping (ListPoliciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPolicies, tokenKey: \ListPoliciesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the principals associated with the specified policy.  Note: This API is deprecated. Please use ListTargetsForPolicy instead.
    @available(*, deprecated, message:"ListPolicyPrincipals is deprecated.")
    public func listPolicyPrincipalsPaginator(_ input: ListPolicyPrincipalsRequest, onPage: @escaping (ListPolicyPrincipalsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPolicyPrincipals, tokenKey: \ListPolicyPrincipalsResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in AmazonCognito Identity format.  Note: This API is deprecated. Please use ListAttachedPolicies instead.
    @available(*, deprecated, message:"ListPrincipalPolicies is deprecated.")
    public func listPrincipalPoliciesPaginator(_ input: ListPrincipalPoliciesRequest, onPage: @escaping (ListPrincipalPoliciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPrincipalPolicies, tokenKey: \ListPrincipalPoliciesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the things associated with the specified principal. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities. 
    public func listPrincipalThingsPaginator(_ input: ListPrincipalThingsRequest, onPage: @escaping (ListPrincipalThingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPrincipalThings, tokenKey: \ListPrincipalThingsResponse.nextToken, onPage: onPage)
    }

    ///  A list of fleet provisioning template versions.
    public func listProvisioningTemplateVersionsPaginator(_ input: ListProvisioningTemplateVersionsRequest, onPage: @escaping (ListProvisioningTemplateVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProvisioningTemplateVersions, tokenKey: \ListProvisioningTemplateVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the fleet provisioning templates in your AWS account.
    public func listProvisioningTemplatesPaginator(_ input: ListProvisioningTemplatesRequest, onPage: @escaping (ListProvisioningTemplatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProvisioningTemplates, tokenKey: \ListProvisioningTemplatesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the role aliases registered in your account.
    public func listRoleAliasesPaginator(_ input: ListRoleAliasesRequest, onPage: @escaping (ListRoleAliasesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRoleAliases, tokenKey: \ListRoleAliasesResponse.nextMarker, onPage: onPage)
    }

    ///  Lists all of your scheduled audits.
    public func listScheduledAuditsPaginator(_ input: ListScheduledAuditsRequest, onPage: @escaping (ListScheduledAuditsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listScheduledAudits, tokenKey: \ListScheduledAuditsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
    public func listSecurityProfilesPaginator(_ input: ListSecurityProfilesRequest, onPage: @escaping (ListSecurityProfilesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSecurityProfiles, tokenKey: \ListSecurityProfilesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Device Defender security profiles attached to a target (thing group).
    public func listSecurityProfilesForTargetPaginator(_ input: ListSecurityProfilesForTargetRequest, onPage: @escaping (ListSecurityProfilesForTargetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSecurityProfilesForTarget, tokenKey: \ListSecurityProfilesForTargetResponse.nextToken, onPage: onPage)
    }

    ///  Lists all of the streams in your AWS account.
    public func listStreamsPaginator(_ input: ListStreamsRequest, onPage: @escaping (ListStreamsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listStreams, tokenKey: \ListStreamsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the tags (metadata) you have assigned to the resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

    ///  List targets for the specified policy.
    public func listTargetsForPolicyPaginator(_ input: ListTargetsForPolicyRequest, onPage: @escaping (ListTargetsForPolicyResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTargetsForPolicy, tokenKey: \ListTargetsForPolicyResponse.nextMarker, onPage: onPage)
    }

    ///  Lists the targets (thing groups) associated with a given Device Defender security profile.
    public func listTargetsForSecurityProfilePaginator(_ input: ListTargetsForSecurityProfileRequest, onPage: @escaping (ListTargetsForSecurityProfileResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTargetsForSecurityProfile, tokenKey: \ListTargetsForSecurityProfileResponse.nextToken, onPage: onPage)
    }

    ///  List the thing groups in your account.
    public func listThingGroupsPaginator(_ input: ListThingGroupsRequest, onPage: @escaping (ListThingGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingGroups, tokenKey: \ListThingGroupsResponse.nextToken, onPage: onPage)
    }

    ///  List the thing groups to which the specified thing belongs.
    public func listThingGroupsForThingPaginator(_ input: ListThingGroupsForThingRequest, onPage: @escaping (ListThingGroupsForThingResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingGroupsForThing, tokenKey: \ListThingGroupsForThingResponse.nextToken, onPage: onPage)
    }

    ///  Information about the thing registration tasks.
    public func listThingRegistrationTaskReportsPaginator(_ input: ListThingRegistrationTaskReportsRequest, onPage: @escaping (ListThingRegistrationTaskReportsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingRegistrationTaskReports, tokenKey: \ListThingRegistrationTaskReportsResponse.nextToken, onPage: onPage)
    }

    ///  List bulk thing provisioning tasks.
    public func listThingRegistrationTasksPaginator(_ input: ListThingRegistrationTasksRequest, onPage: @escaping (ListThingRegistrationTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingRegistrationTasks, tokenKey: \ListThingRegistrationTasksResponse.nextToken, onPage: onPage)
    }

    ///  Lists the existing thing types.
    public func listThingTypesPaginator(_ input: ListThingTypesRequest, onPage: @escaping (ListThingTypesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingTypes, tokenKey: \ListThingTypesResponse.nextToken, onPage: onPage)
    }

    ///  Lists your things. Use the attributeName and attributeValue parameters to filter your things. For example, calling ListThings with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute Color with the value Red.   You will not be charged for calling this API if an Access denied error is returned. You will also not be charged if no attributes or pagination token was provided in request and no pagination token and no results were returned. 
    public func listThingsPaginator(_ input: ListThingsRequest, onPage: @escaping (ListThingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThings, tokenKey: \ListThingsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the things you have added to the given billing group.
    public func listThingsInBillingGroupPaginator(_ input: ListThingsInBillingGroupRequest, onPage: @escaping (ListThingsInBillingGroupResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingsInBillingGroup, tokenKey: \ListThingsInBillingGroupResponse.nextToken, onPage: onPage)
    }

    ///  Lists the things in the specified group.
    public func listThingsInThingGroupPaginator(_ input: ListThingsInThingGroupRequest, onPage: @escaping (ListThingsInThingGroupResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThingsInThingGroup, tokenKey: \ListThingsInThingGroupResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the topic rule destinations in your AWS account.
    public func listTopicRuleDestinationsPaginator(_ input: ListTopicRuleDestinationsRequest, onPage: @escaping (ListTopicRuleDestinationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTopicRuleDestinations, tokenKey: \ListTopicRuleDestinationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the rules for the specific topic.
    public func listTopicRulesPaginator(_ input: ListTopicRulesRequest, onPage: @escaping (ListTopicRulesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTopicRules, tokenKey: \ListTopicRulesResponse.nextToken, onPage: onPage)
    }

    ///  Lists logging levels.
    public func listV2LoggingLevelsPaginator(_ input: ListV2LoggingLevelsRequest, onPage: @escaping (ListV2LoggingLevelsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listV2LoggingLevels, tokenKey: \ListV2LoggingLevelsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Device Defender security profile violations discovered during the given time period. You can use filters to limit the results to those alerts issued for a particular security profile, behavior, or thing (device).
    public func listViolationEventsPaginator(_ input: ListViolationEventsRequest, onPage: @escaping (ListViolationEventsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listViolationEvents, tokenKey: \ListViolationEventsResponse.nextToken, onPage: onPage)
    }

}

extension IoT.ListActiveViolationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListActiveViolationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            securityProfileName: self.securityProfileName, 
            thingName: self.thingName
        )

    }
}

extension IoT.ListAttachedPoliciesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAttachedPoliciesRequest {
        return .init(
            marker: token, 
            pageSize: self.pageSize, 
            recursive: self.recursive, 
            target: self.target
        )

    }
}

extension IoT.ListAuditFindingsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuditFindingsRequest {
        return .init(
            checkName: self.checkName, 
            endTime: self.endTime, 
            listSuppressedFindings: self.listSuppressedFindings, 
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceIdentifier: self.resourceIdentifier, 
            startTime: self.startTime, 
            taskId: self.taskId
        )

    }
}

extension IoT.ListAuditMitigationActionsExecutionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuditMitigationActionsExecutionsRequest {
        return .init(
            actionStatus: self.actionStatus, 
            findingId: self.findingId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            taskId: self.taskId
        )

    }
}

extension IoT.ListAuditMitigationActionsTasksRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuditMitigationActionsTasksRequest {
        return .init(
            auditTaskId: self.auditTaskId, 
            endTime: self.endTime, 
            findingId: self.findingId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            startTime: self.startTime, 
            taskStatus: self.taskStatus
        )

    }
}

extension IoT.ListAuditSuppressionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuditSuppressionsRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            checkName: self.checkName, 
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceIdentifier: self.resourceIdentifier
        )

    }
}

extension IoT.ListAuditTasksRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuditTasksRequest {
        return .init(
            endTime: self.endTime, 
            maxResults: self.maxResults, 
            nextToken: token, 
            startTime: self.startTime, 
            taskStatus: self.taskStatus, 
            taskType: self.taskType
        )

    }
}

extension IoT.ListAuthorizersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListAuthorizersRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize, 
            status: self.status
        )

    }
}

extension IoT.ListBillingGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListBillingGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            namePrefixFilter: self.namePrefixFilter, 
            nextToken: token
        )

    }
}

extension IoT.ListCACertificatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListCACertificatesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListCertificatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListCertificatesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListCertificatesByCARequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListCertificatesByCARequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            caCertificateId: self.caCertificateId, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListDimensionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListDimensionsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListDomainConfigurationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListDomainConfigurationsRequest {
        return .init(
            marker: token, 
            pageSize: self.pageSize, 
            serviceType: self.serviceType
        )

    }
}

extension IoT.ListIndicesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListIndicesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListJobExecutionsForJobRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListJobExecutionsForJobRequest {
        return .init(
            jobId: self.jobId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status
        )

    }
}

extension IoT.ListJobExecutionsForThingRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListJobExecutionsForThingRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status, 
            thingName: self.thingName
        )

    }
}

extension IoT.ListJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListJobsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status, 
            targetSelection: self.targetSelection, 
            thingGroupId: self.thingGroupId, 
            thingGroupName: self.thingGroupName
        )

    }
}

extension IoT.ListMitigationActionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListMitigationActionsRequest {
        return .init(
            actionType: self.actionType, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListOTAUpdatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListOTAUpdatesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            otaUpdateStatus: self.otaUpdateStatus
        )

    }
}

extension IoT.ListOutgoingCertificatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListOutgoingCertificatesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListPoliciesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListPoliciesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListPolicyPrincipalsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListPolicyPrincipalsRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize, 
            policyName: self.policyName
        )

    }
}

extension IoT.ListPrincipalPoliciesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListPrincipalPoliciesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize, 
            principal: self.principal
        )

    }
}

extension IoT.ListPrincipalThingsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListPrincipalThingsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            principal: self.principal
        )

    }
}

extension IoT.ListProvisioningTemplateVersionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListProvisioningTemplateVersionsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            templateName: self.templateName
        )

    }
}

extension IoT.ListProvisioningTemplatesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListProvisioningTemplatesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListRoleAliasesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListRoleAliasesRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            marker: token, 
            pageSize: self.pageSize
        )

    }
}

extension IoT.ListScheduledAuditsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListScheduledAuditsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListSecurityProfilesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListSecurityProfilesRequest {
        return .init(
            dimensionName: self.dimensionName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListSecurityProfilesForTargetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListSecurityProfilesForTargetRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            recursive: self.recursive, 
            securityProfileTargetArn: self.securityProfileTargetArn
        )

    }
}

extension IoT.ListStreamsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListStreamsRequest {
        return .init(
            ascendingOrder: self.ascendingOrder, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListTagsForResourceRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListTagsForResourceRequest {
        return .init(
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension IoT.ListTargetsForPolicyRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListTargetsForPolicyRequest {
        return .init(
            marker: token, 
            pageSize: self.pageSize, 
            policyName: self.policyName
        )

    }
}

extension IoT.ListTargetsForSecurityProfileRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListTargetsForSecurityProfileRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            securityProfileName: self.securityProfileName
        )

    }
}

extension IoT.ListThingGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            namePrefixFilter: self.namePrefixFilter, 
            nextToken: token, 
            parentGroup: self.parentGroup, 
            recursive: self.recursive
        )

    }
}

extension IoT.ListThingGroupsForThingRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingGroupsForThingRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            thingName: self.thingName
        )

    }
}

extension IoT.ListThingRegistrationTaskReportsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingRegistrationTaskReportsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            reportType: self.reportType, 
            taskId: self.taskId
        )

    }
}

extension IoT.ListThingRegistrationTasksRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingRegistrationTasksRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status
        )

    }
}

extension IoT.ListThingTypesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingTypesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            thingTypeName: self.thingTypeName
        )

    }
}

extension IoT.ListThingsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingsRequest {
        return .init(
            attributeName: self.attributeName, 
            attributeValue: self.attributeValue, 
            maxResults: self.maxResults, 
            nextToken: token, 
            thingTypeName: self.thingTypeName
        )

    }
}

extension IoT.ListThingsInBillingGroupRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingsInBillingGroupRequest {
        return .init(
            billingGroupName: self.billingGroupName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListThingsInThingGroupRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListThingsInThingGroupRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            recursive: self.recursive, 
            thingGroupName: self.thingGroupName
        )

    }
}

extension IoT.ListTopicRuleDestinationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListTopicRuleDestinationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoT.ListTopicRulesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListTopicRulesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            ruleDisabled: self.ruleDisabled, 
            topic: self.topic
        )

    }
}

extension IoT.ListV2LoggingLevelsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListV2LoggingLevelsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            targetType: self.targetType
        )

    }
}

extension IoT.ListViolationEventsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IoT.ListViolationEventsRequest {
        return .init(
            endTime: self.endTime, 
            maxResults: self.maxResults, 
            nextToken: token, 
            securityProfileName: self.securityProfileName, 
            startTime: self.startTime, 
            thingName: self.thingName
        )

    }
}


