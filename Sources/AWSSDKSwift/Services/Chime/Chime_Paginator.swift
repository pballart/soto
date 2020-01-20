// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Chime {

    ///  Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
    public func listAccountsPaginator(_ input: ListAccountsRequest) -> EventLoopFuture<[Account]> {
        return client.paginate(input: input, command: listAccounts, resultKey: "accounts", tokenKey: "nextToken")
    }
    
    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func listAttendeesPaginator(_ input: ListAttendeesRequest) -> EventLoopFuture<[Attendee]> {
        return client.paginate(input: input, command: listAttendees, resultKey: "attendees", tokenKey: "nextToken")
    }
    
    ///  Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.
    public func listBotsPaginator(_ input: ListBotsRequest) -> EventLoopFuture<[Bot]> {
        return client.paginate(input: input, command: listBots, resultKey: "bots", tokenKey: "nextToken")
    }
    
    ///  Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func listMeetingsPaginator(_ input: ListMeetingsRequest) -> EventLoopFuture<[Meeting]> {
        return client.paginate(input: input, command: listMeetings, resultKey: "meetings", tokenKey: "nextToken")
    }
    
    ///  Lists the phone number orders for the administrator's Amazon Chime account.
    public func listPhoneNumberOrdersPaginator(_ input: ListPhoneNumberOrdersRequest) -> EventLoopFuture<[PhoneNumberOrder]> {
        return client.paginate(input: input, command: listPhoneNumberOrders, resultKey: "phoneNumberOrders", tokenKey: "nextToken")
    }
    
    ///  Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
    public func listPhoneNumbersPaginator(_ input: ListPhoneNumbersRequest) -> EventLoopFuture<[PhoneNumber]> {
        return client.paginate(input: input, command: listPhoneNumbers, resultKey: "phoneNumbers", tokenKey: "nextToken")
    }
    
    ///  Lists the membership details for the specified room, such as the members' IDs, email addresses, and names.
    public func listRoomMembershipsPaginator(_ input: ListRoomMembershipsRequest) -> EventLoopFuture<[RoomMembership]> {
        return client.paginate(input: input, command: listRoomMemberships, resultKey: "roomMemberships", tokenKey: "nextToken")
    }
    
    ///  Lists the room details for the specified Amazon Chime account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.
    public func listRoomsPaginator(_ input: ListRoomsRequest) -> EventLoopFuture<[Room]> {
        return client.paginate(input: input, command: listRooms, resultKey: "rooms", tokenKey: "nextToken")
    }
    
    ///  Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.
    public func listUsersPaginator(_ input: ListUsersRequest) -> EventLoopFuture<[User]> {
        return client.paginate(input: input, command: listUsers, resultKey: "users", tokenKey: "nextToken")
    }
    
    ///  Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.
    public func listVoiceConnectorGroupsPaginator(_ input: ListVoiceConnectorGroupsRequest) -> EventLoopFuture<[VoiceConnectorGroup]> {
        return client.paginate(input: input, command: listVoiceConnectorGroups, resultKey: "voiceConnectorGroups", tokenKey: "nextToken")
    }
    
    ///  Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
    public func listVoiceConnectorsPaginator(_ input: ListVoiceConnectorsRequest) -> EventLoopFuture<[VoiceConnector]> {
        return client.paginate(input: input, command: listVoiceConnectors, resultKey: "voiceConnectors", tokenKey: "nextToken")
    }
    
}

extension Chime.ListAccountsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListAccountsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            userEmail: original.userEmail
        )
    }
}

extension Chime.ListAttendeesRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListAttendeesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            meetingId: original.meetingId, 
            nextToken: token
        )
    }
}

extension Chime.ListBotsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListBotsRequest, token: String) {
        self.init(
            accountId: original.accountId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Chime.ListMeetingsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListMeetingsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Chime.ListPhoneNumberOrdersRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListPhoneNumberOrdersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Chime.ListPhoneNumbersRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListPhoneNumbersRequest, token: String) {
        self.init(
            filterName: original.filterName, 
            filterValue: original.filterValue, 
            maxResults: original.maxResults, 
            nextToken: token, 
            productType: original.productType, 
            status: original.status
        )
    }
}

extension Chime.ListRoomMembershipsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListRoomMembershipsRequest, token: String) {
        self.init(
            accountId: original.accountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            roomId: original.roomId
        )
    }
}

extension Chime.ListRoomsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListRoomsRequest, token: String) {
        self.init(
            accountId: original.accountId, 
            maxResults: original.maxResults, 
            memberId: original.memberId, 
            nextToken: token
        )
    }
}

extension Chime.ListUsersRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListUsersRequest, token: String) {
        self.init(
            accountId: original.accountId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            userEmail: original.userEmail, 
            userType: original.userType
        )
    }
}

extension Chime.ListVoiceConnectorGroupsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListVoiceConnectorGroupsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Chime.ListVoiceConnectorsRequest: AWSPaginateStringToken {
    public init(_ original: Chime.ListVoiceConnectorsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


