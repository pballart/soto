// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Detective {

    ///  Amazon Detective is currently in preview. Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account. Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.
    public func listGraphsPaginator(_ input: ListGraphsRequest) -> EventLoopFuture<[Graph]> {
        return client.paginate(input: input, command: listGraphs, resultKey: "graphList", tokenKey: "nextToken")
    }
    
    ///  Amazon Detective is currently in preview. Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitationsPaginator(_ input: ListInvitationsRequest) -> EventLoopFuture<[MemberDetail]> {
        return client.paginate(input: input, command: listInvitations, resultKey: "invitations", tokenKey: "nextToken")
    }
    
    ///  Amazon Detective is currently in preview. Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.
    public func listMembersPaginator(_ input: ListMembersRequest) -> EventLoopFuture<[MemberDetail]> {
        return client.paginate(input: input, command: listMembers, resultKey: "memberDetails", tokenKey: "nextToken")
    }
    
}

extension Detective.ListGraphsRequest: AWSPaginateStringToken {
    public init(_ original: Detective.ListGraphsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Detective.ListInvitationsRequest: AWSPaginateStringToken {
    public init(_ original: Detective.ListInvitationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Detective.ListMembersRequest: AWSPaginateStringToken {
    public init(_ original: Detective.ListMembersRequest, token: String) {
        self.init(
            graphArn: original.graphArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


