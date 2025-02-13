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

/// Service object for interacting with AWS PinpointSMSVoiceV2 service.
///
/// Welcome to the Amazon Pinpoint SMS and Voice, version 2 API Reference. This guide provides information about Amazon Pinpoint SMS and Voice, version 2 API resources, including supported HTTP methods, parameters, and schemas. Amazon Pinpoint is an Amazon Web Services service that you can use to engage with your recipients across multiple messaging channels. The Amazon Pinpoint SMS and Voice, version 2 API provides programmatic access to options that are unique to the SMS and voice channels and supplements the resources provided by the Amazon Pinpoint API. If you're new to Amazon Pinpoint, it's also helpful to review the  Amazon Pinpoint Developer Guide. The Amazon Pinpoint Developer Guide provides tutorials, code samples, and procedures that demonstrate how to use Amazon Pinpoint features programmatically and how to integrate Amazon Pinpoint functionality into mobile apps and other types of applications. The guide also provides key information, such as Amazon Pinpoint integration with other Amazon Web Services services, and the quotas that apply to use of the service.
public struct PinpointSMSVoiceV2: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PinpointSMSVoiceV2 client
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
            amzTarget: "PinpointSMSVoiceV2",
            service: "sms-voice",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2022-03-31",
            endpoint: endpoint,
            errorType: PinpointSMSVoiceV2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates the specified origination identity with a pool. If the origination identity is a phone number and is already associated with another pool, an Error is returned. A sender ID can be associated with multiple pools. If the origination identity configuration doesn't match the pool's configuration, an Error is returned.
    public func associateOriginationIdentity(_ input: AssociateOriginationIdentityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateOriginationIdentityResult> {
        return self.client.execute(operation: "AssociateOriginationIdentity", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new configuration set. After you create the configuration set, you can add one or more event destinations to it. A configuration set is a set of rules that you apply to the SMS and voice messages that you send. When you send a message, you can optionally specify a single configuration set.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationSetResult> {
        return self.client.execute(operation: "CreateConfigurationSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new event destination in a configuration set. An event destination is a location where you send message events. The event options are Amazon CloudWatch, Amazon Kinesis Data Firehose, or Amazon SNS. For example, when a message is delivered successfully, you can send information about that event to an event destination, or send notifications to endpoints that are subscribed to an Amazon SNS topic. Each configuration set can contain between 0 and 5 event destinations. Each event destination can contain a reference to a single destination, such as a CloudWatch or Kinesis Data Firehose destination.
    public func createEventDestination(_ input: CreateEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventDestinationResult> {
        return self.client.execute(operation: "CreateEventDestination", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new opt-out list. If the opt-out list name already exists, an Error is returned. An opt-out list is a list of phone numbers that are opted out, meaning you can't send SMS or voice messages to them. If end user replies with the keyword "STOP," an entry for the phone number is added to the opt-out list. In addition to STOP, your recipients can use any supported opt-out keyword, such as CANCEL or OPTOUT. For a list of supported opt-out keywords, see  SMS opt out  in the Amazon Pinpoint User Guide.
    public func createOptOutList(_ input: CreateOptOutListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOptOutListResult> {
        return self.client.execute(operation: "CreateOptOutList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new pool and associates the specified origination identity to the pool. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account. The new pool inherits its configuration from the specified origination identity. This includes keywords, message type, opt-out list, two-way configuration, and self-managed opt-out configuration. Deletion protection isn't inherited from the origination identity and defaults to false. If the origination identity is a phone number and is already associated with another pool, an Error is returned. A sender ID can be associated with multiple pools.
    public func createPool(_ input: CreatePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePoolResult> {
        return self.client.execute(operation: "CreatePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing configuration set. A configuration set is a set of rules that you apply to voice and SMS messages that you send. In a configuration set, you can specify a destination for specific types of events related to voice and SMS messages.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConfigurationSetResult> {
        return self.client.execute(operation: "DeleteConfigurationSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing default message type on a configuration set. A message type is a type of messages that you plan to send. If you send account-related messages or time-sensitive messages such as one-time passcodes, choose Transactional. If you plan to send messages that contain marketing material or other promotional content, choose Promotional. This setting applies to your entire Amazon Web Services account.
    public func deleteDefaultMessageType(_ input: DeleteDefaultMessageTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDefaultMessageTypeResult> {
        return self.client.execute(operation: "DeleteDefaultMessageType", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing default sender ID on a configuration set. A default sender ID is the identity that appears on recipients' devices when they receive SMS messages. Support for sender ID capabilities varies by country or region.
    public func deleteDefaultSenderId(_ input: DeleteDefaultSenderIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDefaultSenderIdResult> {
        return self.client.execute(operation: "DeleteDefaultSenderId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing event destination. An event destination is a location where you send response information about the messages that you send. For example, when a message is delivered successfully, you can send information about that event to an Amazon CloudWatch destination, or send notifications to endpoints that are subscribed to an Amazon SNS topic.
    public func deleteEventDestination(_ input: DeleteEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventDestinationResult> {
        return self.client.execute(operation: "DeleteEventDestination", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing keyword from an origination phone number or pool. A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, Amazon Pinpoint responds with a customizable message. Keywords "HELP" and "STOP" can't be deleted or modified.
    public func deleteKeyword(_ input: DeleteKeywordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteKeywordResult> {
        return self.client.execute(operation: "DeleteKeyword", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing opt-out list. All opted out phone numbers in the opt-out list are deleted. If the specified opt-out list name doesn't exist or is in-use by an origination phone number or pool, an Error is returned.
    public func deleteOptOutList(_ input: DeleteOptOutListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOptOutListResult> {
        return self.client.execute(operation: "DeleteOptOutList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing opted out destination phone number from the specified opt-out list. Each destination phone number can only be deleted once every 30 days. If the specified destination phone number doesn't exist or if the opt-out list doesn't exist, an Error is returned.
    public func deleteOptedOutNumber(_ input: DeleteOptedOutNumberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOptedOutNumberResult> {
        return self.client.execute(operation: "DeleteOptedOutNumber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing pool. Deleting a pool disassociates all origination identities from that pool. If the pool status isn't active or if deletion protection is enabled, an Error is returned. A pool is a collection of phone numbers and SenderIds. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.
    public func deletePool(_ input: DeletePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePoolResult> {
        return self.client.execute(operation: "DeletePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an account-level monthly spending limit override for sending text messages. Deleting a spend limit override will set the EnforcedLimit to equal the MaxLimit, which is controlled by Amazon Web Services. For more information on spend limits (quotas) see Amazon Pinpoint quotas  in the Amazon Pinpoint Developer Guide.
    public func deleteTextMessageSpendLimitOverride(_ input: DeleteTextMessageSpendLimitOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTextMessageSpendLimitOverrideResult> {
        return self.client.execute(operation: "DeleteTextMessageSpendLimitOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an account level monthly spend limit override for sending voice messages. Deleting a spend limit override sets the EnforcedLimit equal to the MaxLimit, which is controlled by Amazon Web Services. For more information on spending limits (quotas) see Amazon Pinpoint quotas in the Amazon Pinpoint Developer Guide.
    public func deleteVoiceMessageSpendLimitOverride(_ input: DeleteVoiceMessageSpendLimitOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVoiceMessageSpendLimitOverrideResult> {
        return self.client.execute(operation: "DeleteVoiceMessageSpendLimitOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes attributes of your Amazon Web Services account. The supported account attributes include account tier, which indicates whether your account is in the sandbox or production environment. When you're ready to move your account out of the sandbox, create an Amazon Web Services Support case for a service limit increase request. New Amazon Pinpoint accounts are placed into an SMS or voice sandbox. The sandbox protects both Amazon Web Services end recipients and SMS or voice recipients from fraud and abuse.
    public func describeAccountAttributes(_ input: DescribeAccountAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountAttributesResult> {
        return self.client.execute(operation: "DescribeAccountAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for your account. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value. When you establish an Amazon Web Services account, the account has initial quotas on the maximum number of configuration sets, opt-out lists, phone numbers, and pools that you can create in a given Region. For more information see  Amazon Pinpoint quotas  in the Amazon Pinpoint Developer Guide.
    public func describeAccountLimits(_ input: DescribeAccountLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsResult> {
        return self.client.execute(operation: "DescribeAccountLimits", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified configuration sets or all in your account. If you specify configuration set names, the output includes information for only the specified configuration sets. If you specify filters, the output includes information for only those configuration sets that meet the filter criteria. If you don't specify configuration set names or filters, the output includes information for all configuration sets. If you specify a configuration set name that isn't valid, an error is returned.
    public func describeConfigurationSets(_ input: DescribeConfigurationSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationSetsResult> {
        return self.client.execute(operation: "DescribeConfigurationSets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified keywords or all keywords on your origination phone number or pool. A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, Amazon Pinpoint responds with a customizable message. If you specify a keyword that isn't valid, an Error is returned.
    public func describeKeywords(_ input: DescribeKeywordsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKeywordsResult> {
        return self.client.execute(operation: "DescribeKeywords", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified opt-out list or all opt-out lists in your account. If you specify opt-out list names, the output includes information for only the specified opt-out lists. Opt-out lists include only those that meet the filter criteria. If you don't specify opt-out list names or filters, the output includes information for all opt-out lists. If you specify an opt-out list name that isn't valid, an Error is returned.
    public func describeOptOutLists(_ input: DescribeOptOutListsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOptOutListsResult> {
        return self.client.execute(operation: "DescribeOptOutLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified opted out destination numbers or all opted out destination numbers in an opt-out list. If you specify opted out numbers, the output includes information for only the specified opted out numbers. If you specify filters, the output includes information for only those opted out numbers that meet the filter criteria. If you don't specify opted out numbers or filters, the output includes information for all opted out destination numbers in your opt-out list. If you specify an opted out number that isn't valid, an Error is returned.
    public func describeOptedOutNumbers(_ input: DescribeOptedOutNumbersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOptedOutNumbersResult> {
        return self.client.execute(operation: "DescribeOptedOutNumbers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified origination phone number, or all the phone numbers in your account. If you specify phone number IDs, the output includes information for only the specified phone numbers. If you specify filters, the output includes information for only those phone numbers that meet the filter criteria. If you don't specify phone number IDs or filters, the output includes information for all phone numbers. If you specify a phone number ID that isn't valid, an Error is returned.
    public func describePhoneNumbers(_ input: DescribePhoneNumbersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePhoneNumbersResult> {
        return self.client.execute(operation: "DescribePhoneNumbers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the specified pools or all pools associated with your Amazon Web Services account. If you specify pool IDs, the output includes information for only the specified pools. If you specify filters, the output includes information for only those pools that meet the filter criteria. If you don't specify pool IDs or filters, the output includes information for all pools. If you specify a pool ID that isn't valid, an Error is returned. A pool is a collection of phone numbers and SenderIds. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.
    public func describePools(_ input: DescribePoolsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePoolsResult> {
        return self.client.execute(operation: "DescribePools", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified SenderIds or all SenderIds associated with your Amazon Web Services account. If you specify SenderIds, the output includes information for only the specified SenderIds. If you specify filters, the output includes information for only those SenderIds that meet the filter criteria. If you don't specify SenderIds or filters, the output includes information for all SenderIds. f you specify a sender ID that isn't valid, an Error is returned.
    public func describeSenderIds(_ input: DescribeSenderIdsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSenderIdsResult> {
        return self.client.execute(operation: "DescribeSenderIds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current Amazon Pinpoint monthly spend limits for sending voice and text messages. When you establish an Amazon Web Services account, the account has initial monthly spend limit in a given Region. For more information on increasing your monthly spend limit, see  Requesting increases to your monthly SMS spending quota for Amazon Pinpoint in the Amazon Pinpoint User Guide.
    public func describeSpendLimits(_ input: DescribeSpendLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpendLimitsResult> {
        return self.client.execute(operation: "DescribeSpendLimits", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified origination identity from an existing pool. If the origination identity isn't associated with the specified pool, an Error is returned.
    public func disassociateOriginationIdentity(_ input: DisassociateOriginationIdentityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateOriginationIdentityResult> {
        return self.client.execute(operation: "DisassociateOriginationIdentity", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all associated origination identities in your pool. If you specify filters, the output includes information for only those origination identities that meet the filter criteria.
    public func listPoolOriginationIdentities(_ input: ListPoolOriginationIdentitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPoolOriginationIdentitiesResult> {
        return self.client.execute(operation: "ListPoolOriginationIdentities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResult> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a keyword configuration on an origination phone number or pool. A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, Amazon Pinpoint responds with a customizable message. If you specify a keyword that isn't valid, an Error is returned.
    public func putKeyword(_ input: PutKeywordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutKeywordResult> {
        return self.client.execute(operation: "PutKeyword", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an opted out destination phone number in the opt-out list. If the destination phone number isn't valid or if the specified opt-out list doesn't exist, an Error is returned.
    public func putOptedOutNumber(_ input: PutOptedOutNumberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutOptedOutNumberResult> {
        return self.client.execute(operation: "PutOptedOutNumber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Releases an existing origination phone number in your account. Once released, a phone number is no longer available for sending messages. If the origination phone number has deletion protection enabled or is associated with a pool, an Error is returned.
    public func releasePhoneNumber(_ input: ReleasePhoneNumberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleasePhoneNumberResult> {
        return self.client.execute(operation: "ReleasePhoneNumber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Request an origination phone number for use in your account. For more information on phone number request see  Requesting a number  in the Amazon Pinpoint User Guide.
    public func requestPhoneNumber(_ input: RequestPhoneNumberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RequestPhoneNumberResult> {
        return self.client.execute(operation: "RequestPhoneNumber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new text message and sends it to a recipient's phone number. SMS throughput limits are measured in Message Parts per Second (MPS). Your MPS limit depends on the destination country of your messages, as well as the type of phone number (origination number) that you use to send the message. For more information, see Message Parts per Second (MPS) limits in the Amazon Pinpoint User Guide.
    public func sendTextMessage(_ input: SendTextMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendTextMessageResult> {
        return self.client.execute(operation: "SendTextMessage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to send a request that sends a text message through Amazon Pinpoint. This operation uses Amazon Polly to convert a text script into a voice message.
    public func sendVoiceMessage(_ input: SendVoiceMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendVoiceMessageResult> {
        return self.client.execute(operation: "SendVoiceMessage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the default message type on a configuration set. Choose the category of SMS messages that you plan to send from this account. If you send account-related messages or time-sensitive messages such as one-time passcodes, choose Transactional. If you plan to send messages that contain marketing material or other promotional content, choose Promotional. This setting applies to your entire Amazon Web Services account.
    public func setDefaultMessageType(_ input: SetDefaultMessageTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDefaultMessageTypeResult> {
        return self.client.execute(operation: "SetDefaultMessageType", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets default sender ID on a configuration set. When sending a text message to a destination country that supports sender IDs, the default sender ID on the configuration set specified will be used if no dedicated origination phone numbers or registered sender IDs are available in your account.
    public func setDefaultSenderId(_ input: SetDefaultSenderIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDefaultSenderIdResult> {
        return self.client.execute(operation: "SetDefaultSenderId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets an account level monthly spend limit override for sending text messages. The requested spend limit must be less than or equal to the MaxLimit, which is set by Amazon Web Services.
    public func setTextMessageSpendLimitOverride(_ input: SetTextMessageSpendLimitOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetTextMessageSpendLimitOverrideResult> {
        return self.client.execute(operation: "SetTextMessageSpendLimitOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets an account level monthly spend limit override for sending voice messages. The requested spend limit must be less than or equal to the MaxLimit, which is set by Amazon Web Services.
    public func setVoiceMessageSpendLimitOverride(_ input: SetVoiceMessageSpendLimitOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVoiceMessageSpendLimitOverrideResult> {
        return self.client.execute(operation: "SetVoiceMessageSpendLimitOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites only the specified tags for the specified Amazon Pinpoint SMS Voice, version 2 resource. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see  Tagging Amazon Pinpoint resources in the Amazon Pinpoint Developer Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResult> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the association of the specified tags from an Amazon Pinpoint SMS Voice V2 resource. For more information on tags see  Tagging Amazon Pinpoint resources in the Amazon Pinpoint Developer Guide.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResult> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing event destination in a configuration set. You can update the IAM role ARN for CloudWatch Logs and Kinesis Data Firehose. You can also enable or disable the event destination. You may want to update an event destination to change its matching event types or updating the destination resource ARN. You can't change an event destination's type between CloudWatch Logs, Kinesis Data Firehose, and Amazon SNS.
    public func updateEventDestination(_ input: UpdateEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEventDestinationResult> {
        return self.client.execute(operation: "UpdateEventDestination", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing origination phone number. You can update the opt-out list, enable or disable two-way messaging, change the TwoWayChannelArn, enable or disable self-managed opt-outs, and enable or disable deletion protection. If the origination phone number is associated with a pool, an Error is returned.
    public func updatePhoneNumber(_ input: UpdatePhoneNumberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePhoneNumberResult> {
        return self.client.execute(operation: "UpdatePhoneNumber", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing pool. You can update the opt-out list, enable or disable two-way messaging, change the TwoWayChannelArn, enable or disable self-managed opt-outs, enable or disable deletion protection, and enable or disable shared routes.
    public func updatePool(_ input: UpdatePoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePoolResult> {
        return self.client.execute(operation: "UpdatePool", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension PinpointSMSVoiceV2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PinpointSMSVoiceV2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
