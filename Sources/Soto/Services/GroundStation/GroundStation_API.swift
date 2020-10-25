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

@_exported import SotoCore

/*
 Client object for interacting with AWS GroundStation service.

 Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
 */
public struct GroundStation: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the GroundStation client
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
            service: "groundstation",
            serviceProtocol: .restjson,
            apiVersion: "2019-05-23",
            endpoint: endpoint,
            errorType: GroundStationErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Cancels a contact with a specified contact ID.
    public func cancelContact(_ input: CancelContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ContactIdResponse> {
        return self.client.execute(operation: "CancelContact", path: "/contact/{contactId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    public func createConfig(_ input: CreateConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigIdResponse> {
        return self.client.execute(operation: "CreateConfig", path: "/config", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    public func createDataflowEndpointGroup(_ input: CreateDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return self.client.execute(operation: "CreateDataflowEndpointGroup", path: "/dataflowEndpointGroup", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    public func createMissionProfile(_ input: CreateMissionProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<MissionProfileIdResponse> {
        return self.client.execute(operation: "CreateMissionProfile", path: "/missionprofile", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a Config.
    public func deleteConfig(_ input: DeleteConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigIdResponse> {
        return self.client.execute(operation: "DeleteConfig", path: "/config/{configType}/{configId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a dataflow endpoint group.
    public func deleteDataflowEndpointGroup(_ input: DeleteDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return self.client.execute(operation: "DeleteDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a mission profile.
    public func deleteMissionProfile(_ input: DeleteMissionProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<MissionProfileIdResponse> {
        return self.client.execute(operation: "DeleteMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an existing contact.
    public func describeContact(_ input: DescribeContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeContactResponse> {
        return self.client.execute(operation: "DescribeContact", path: "/contact/{contactId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns Config information. Only one Config response can be returned.
    public func getConfig(_ input: GetConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConfigResponse> {
        return self.client.execute(operation: "GetConfig", path: "/config/{configType}/{configId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the dataflow endpoint group.
    public func getDataflowEndpointGroup(_ input: GetDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDataflowEndpointGroupResponse> {
        return self.client.execute(operation: "GetDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the number of minutes used by account.
    public func getMinuteUsage(_ input: GetMinuteUsageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMinuteUsageResponse> {
        return self.client.execute(operation: "GetMinuteUsage", path: "/minute-usage", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a mission profile.
    public func getMissionProfile(_ input: GetMissionProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMissionProfileResponse> {
        return self.client.execute(operation: "GetMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a satellite.
    public func getSatellite(_ input: GetSatelliteRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetSatelliteResponse> {
        return self.client.execute(operation: "GetSatellite", path: "/satellite/{satelliteId}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of Config objects.
    public func listConfigs(_ input: ListConfigsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigsResponse> {
        return self.client.execute(operation: "ListConfigs", path: "/config", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    public func listContacts(_ input: ListContactsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListContactsResponse> {
        return self.client.execute(operation: "ListContacts", path: "/contacts", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroups(_ input: ListDataflowEndpointGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDataflowEndpointGroupsResponse> {
        return self.client.execute(operation: "ListDataflowEndpointGroups", path: "/dataflowEndpointGroup", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of ground stations.
    public func listGroundStations(_ input: ListGroundStationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGroundStationsResponse> {
        return self.client.execute(operation: "ListGroundStations", path: "/groundstation", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfiles(_ input: ListMissionProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMissionProfilesResponse> {
        return self.client.execute(operation: "ListMissionProfiles", path: "/missionprofile", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of satellites.
    public func listSatellites(_ input: ListSatellitesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSatellitesResponse> {
        return self.client.execute(operation: "ListSatellites", path: "/satellite", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Reserves a contact using specified parameters.
    public func reserveContact(_ input: ReserveContactRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ContactIdResponse> {
        return self.client.execute(operation: "ReserveContact", path: "/contact", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Assigns a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deassigns a resource tag.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    public func updateConfig(_ input: UpdateConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigIdResponse> {
        return self.client.execute(operation: "UpdateConfig", path: "/config/{configType}/{configId}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    public func updateMissionProfile(_ input: UpdateMissionProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<MissionProfileIdResponse> {
        return self.client.execute(operation: "UpdateMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension GroundStation {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: GroundStation, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
