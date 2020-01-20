// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Organizations {

    ///  Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts. For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see Integrating AWS Organizations with Other AWS Services in the AWS Organizations User Guide.  This operation can be called only from the organization's master account.
    public func listAWSServiceAccessForOrganizationPaginator(_ input: ListAWSServiceAccessForOrganizationRequest) -> EventLoopFuture<[EnabledServicePrincipal]> {
        return client.paginate(input: input, command: listAWSServiceAccessForOrganization, resultKey: "enabledServicePrincipals", tokenKey: "nextToken")
    }
    
    ///  Lists all the accounts in the organization. To request only the accounts in a specified root or organizational unit (OU), use the ListAccountsForParent operation instead.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listAccountsPaginator(_ input: ListAccountsRequest) -> EventLoopFuture<[Account]> {
        return client.paginate(input: input, command: listAccounts, resultKey: "accounts", tokenKey: "nextToken")
    }
    
    ///  Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that aren't in any OU. If you specify an OU, you get a list of all the accounts in only that OU and not in any child OUs. To get a list of all accounts in the organization, use the ListAccounts operation.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listAccountsForParentPaginator(_ input: ListAccountsForParentRequest) -> EventLoopFuture<[Account]> {
        return client.paginate(input: input, command: listAccountsForParent, resultKey: "accounts", tokenKey: "nextToken")
    }
    
    ///  Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root. This operation, along with ListParents enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listChildrenPaginator(_ input: ListChildrenRequest) -> EventLoopFuture<[Child]> {
        return client.paginate(input: input, command: listChildren, resultKey: "children", tokenKey: "nextToken")
    }
    
    ///  Lists the account creation requests that match the specified status that is currently being tracked for the organization.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listCreateAccountStatusPaginator(_ input: ListCreateAccountStatusRequest) -> EventLoopFuture<[CreateAccountStatus]> {
        return client.paginate(input: input, command: listCreateAccountStatus, resultKey: "createAccountStatuses", tokenKey: "nextToken")
    }
    
    ///  Lists the current handshakes that are associated with the account of the requesting user. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called from any account in the organization.
    public func listHandshakesForAccountPaginator(_ input: ListHandshakesForAccountRequest) -> EventLoopFuture<[Handshake]> {
        return client.paginate(input: input, command: listHandshakesForAccount, resultKey: "handshakes", tokenKey: "nextToken")
    }
    
    ///  Lists the handshakes that are associated with the organization that the requesting user is part of. The ListHandshakesForOrganization operation returns a list of handshake structures. Each structure contains details and status about a handshake. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listHandshakesForOrganizationPaginator(_ input: ListHandshakesForOrganizationRequest) -> EventLoopFuture<[Handshake]> {
        return client.paginate(input: input, command: listHandshakesForOrganization, resultKey: "handshakes", tokenKey: "nextToken")
    }
    
    ///  Lists the organizational units (OUs) in a parent organizational unit or root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listOrganizationalUnitsForParentPaginator(_ input: ListOrganizationalUnitsForParentRequest) -> EventLoopFuture<[OrganizationalUnit]> {
        return client.paginate(input: input, command: listOrganizationalUnitsForParent, resultKey: "organizationalUnits", tokenKey: "nextToken")
    }
    
    ///  Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with ListChildren enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.  In the current release, a child can have only a single parent.  
    public func listParentsPaginator(_ input: ListParentsRequest) -> EventLoopFuture<[Parent]> {
        return client.paginate(input: input, command: listParents, resultKey: "parents", tokenKey: "nextToken")
    }
    
    ///  Retrieves the list of all policies in an organization of a specified type.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listPoliciesPaginator(_ input: ListPoliciesRequest) -> EventLoopFuture<[PolicySummary]> {
        return client.paginate(input: input, command: listPolicies, resultKey: "policies", tokenKey: "nextToken")
    }
    
    ///  Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listPoliciesForTargetPaginator(_ input: ListPoliciesForTargetRequest) -> EventLoopFuture<[PolicySummary]> {
        return client.paginate(input: input, command: listPoliciesForTarget, resultKey: "policies", tokenKey: "nextToken")
    }
    
    ///  Lists the roots that are defined in the current organization.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.  Policy types can be enabled and disabled in roots. This is distinct from whether they're available in the organization. When you enable all features, you make policy types available for use in that organization. Individual policy types can then be enabled and disabled in a root. To see the availability of a policy type in an organization, use DescribeOrganization. 
    public func listRootsPaginator(_ input: ListRootsRequest) -> EventLoopFuture<[Root]> {
        return client.paginate(input: input, command: listRoots, resultKey: "roots", tokenKey: "nextToken")
    }
    
    ///  Lists tags for the specified resource.  Currently, you can list tags on an account in AWS Organizations. This operation can be called only from the organization's master account.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest) -> EventLoopFuture<[Tag]> {
        return client.paginate(input: input, command: listTagsForResource, resultKey: "tags", tokenKey: "nextToken")
    }
    
    ///  Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to.  Always check the NextToken response parameter for a null value when calling a List* operation. These operations can occasionally return an empty set of results even when there are more results available. The NextToken response parameter value is null only when there are no more results to display.  This operation can be called only from the organization's master account.
    public func listTargetsForPolicyPaginator(_ input: ListTargetsForPolicyRequest) -> EventLoopFuture<[PolicyTargetSummary]> {
        return client.paginate(input: input, command: listTargetsForPolicy, resultKey: "targets", tokenKey: "nextToken")
    }
    
}

extension Organizations.ListAWSServiceAccessForOrganizationRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListAWSServiceAccessForOrganizationRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListAccountsRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListAccountsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListAccountsForParentRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListAccountsForParentRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            parentId: original.parentId
        )
    }
}

extension Organizations.ListChildrenRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListChildrenRequest, token: String) {
        self.init(
            childType: original.childType, 
            maxResults: original.maxResults, 
            nextToken: token, 
            parentId: original.parentId
        )
    }
}

extension Organizations.ListCreateAccountStatusRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListCreateAccountStatusRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            states: original.states
        )
    }
}

extension Organizations.ListHandshakesForAccountRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListHandshakesForAccountRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListHandshakesForOrganizationRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListHandshakesForOrganizationRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListOrganizationalUnitsForParentRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListOrganizationalUnitsForParentRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            parentId: original.parentId
        )
    }
}

extension Organizations.ListParentsRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListParentsRequest, token: String) {
        self.init(
            childId: original.childId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListPoliciesRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListPoliciesRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListPoliciesForTargetRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListPoliciesForTargetRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            targetId: original.targetId
        )
    }
}

extension Organizations.ListRootsRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListRootsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Organizations.ListTagsForResourceRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListTagsForResourceRequest, token: String) {
        self.init(
            nextToken: token, 
            resourceId: original.resourceId
        )
    }
}

extension Organizations.ListTargetsForPolicyRequest: AWSPaginateStringToken {
    public init(_ original: Organizations.ListTargetsForPolicyRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            policyId: original.policyId
        )
    }
}


