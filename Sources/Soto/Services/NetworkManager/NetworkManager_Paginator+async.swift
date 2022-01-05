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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NetworkManager {
    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeGlobalNetworksPaginator(
        _ input: DescribeGlobalNetworksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeGlobalNetworksRequest, DescribeGlobalNetworksResponse> {
        return .init(
            input: input,
            command: describeGlobalNetworks,
            inputKey: \DescribeGlobalNetworksRequest.nextToken,
            outputKey: \DescribeGlobalNetworksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about a core network Connect peer associations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectPeerAssociationsPaginator(
        _ input: GetConnectPeerAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectPeerAssociationsRequest, GetConnectPeerAssociationsResponse> {
        return .init(
            input: input,
            command: getConnectPeerAssociations,
            inputKey: \GetConnectPeerAssociationsRequest.nextToken,
            outputKey: \GetConnectPeerAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your connections in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectionsPaginator(
        _ input: GetConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectionsRequest, GetConnectionsResponse> {
        return .init(
            input: input,
            command: getConnections,
            inputKey: \GetConnectionsRequest.nextToken,
            outputKey: \GetConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a change set between the LIVE core network policy and a submitted policy.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCoreNetworkChangeSetPaginator(
        _ input: GetCoreNetworkChangeSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCoreNetworkChangeSetRequest, GetCoreNetworkChangeSetResponse> {
        return .init(
            input: input,
            command: getCoreNetworkChangeSet,
            inputKey: \GetCoreNetworkChangeSetRequest.nextToken,
            outputKey: \GetCoreNetworkChangeSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCustomerGatewayAssociationsPaginator(
        _ input: GetCustomerGatewayAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCustomerGatewayAssociationsRequest, GetCustomerGatewayAssociationsResponse> {
        return .init(
            input: input,
            command: getCustomerGatewayAssociations,
            inputKey: \GetCustomerGatewayAssociationsRequest.nextToken,
            outputKey: \GetCustomerGatewayAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your devices in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDevicesPaginator(
        _ input: GetDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDevicesRequest, GetDevicesResponse> {
        return .init(
            input: input,
            command: getDevices,
            inputKey: \GetDevicesRequest.nextToken,
            outputKey: \GetDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLinkAssociationsPaginator(
        _ input: GetLinkAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLinkAssociationsRequest, GetLinkAssociationsResponse> {
        return .init(
            input: input,
            command: getLinkAssociations,
            inputKey: \GetLinkAssociationsRequest.nextToken,
            outputKey: \GetLinkAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLinksPaginator(
        _ input: GetLinksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLinksRequest, GetLinksResponse> {
        return .init(
            input: input,
            command: getLinks,
            inputKey: \GetLinksRequest.nextToken,
            outputKey: \GetLinksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the count of network resources, by resource type, for the specified global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getNetworkResourceCountsPaginator(
        _ input: GetNetworkResourceCountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetNetworkResourceCountsRequest, GetNetworkResourceCountsResponse> {
        return .init(
            input: input,
            command: getNetworkResourceCounts,
            inputKey: \GetNetworkResourceCountsRequest.nextToken,
            outputKey: \GetNetworkResourceCountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the network resource relationships for the specified global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getNetworkResourceRelationshipsPaginator(
        _ input: GetNetworkResourceRelationshipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetNetworkResourceRelationshipsRequest, GetNetworkResourceRelationshipsResponse> {
        return .init(
            input: input,
            command: getNetworkResourceRelationships,
            inputKey: \GetNetworkResourceRelationshipsRequest.nextToken,
            outputKey: \GetNetworkResourceRelationshipsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the network resources for the specified global network. The results include information from the corresponding Describe call for the resource, minus any sensitive information such as pre-shared keys.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getNetworkResourcesPaginator(
        _ input: GetNetworkResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetNetworkResourcesRequest, GetNetworkResourcesResponse> {
        return .init(
            input: input,
            command: getNetworkResources,
            inputKey: \GetNetworkResourcesRequest.nextToken,
            outputKey: \GetNetworkResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the network telemetry of the specified global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getNetworkTelemetryPaginator(
        _ input: GetNetworkTelemetryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetNetworkTelemetryRequest, GetNetworkTelemetryResponse> {
        return .init(
            input: input,
            command: getNetworkTelemetry,
            inputKey: \GetNetworkTelemetryRequest.nextToken,
            outputKey: \GetNetworkTelemetryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your sites in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSitesPaginator(
        _ input: GetSitesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSitesRequest, GetSitesResponse> {
        return .init(
            input: input,
            command: getSites,
            inputKey: \GetSitesRequest.nextToken,
            outputKey: \GetSitesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about one or more of your transit gateway Connect peer associations in a global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTransitGatewayConnectPeerAssociationsPaginator(
        _ input: GetTransitGatewayConnectPeerAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTransitGatewayConnectPeerAssociationsRequest, GetTransitGatewayConnectPeerAssociationsResponse> {
        return .init(
            input: input,
            command: getTransitGatewayConnectPeerAssociations,
            inputKey: \GetTransitGatewayConnectPeerAssociationsRequest.nextToken,
            outputKey: \GetTransitGatewayConnectPeerAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTransitGatewayRegistrationsPaginator(
        _ input: GetTransitGatewayRegistrationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTransitGatewayRegistrationsRequest, GetTransitGatewayRegistrationsResponse> {
        return .init(
            input: input,
            command: getTransitGatewayRegistrations,
            inputKey: \GetTransitGatewayRegistrationsRequest.nextToken,
            outputKey: \GetTransitGatewayRegistrationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of core network attachments.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttachmentsPaginator(
        _ input: ListAttachmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttachmentsRequest, ListAttachmentsResponse> {
        return .init(
            input: input,
            command: listAttachments,
            inputKey: \ListAttachmentsRequest.nextToken,
            outputKey: \ListAttachmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of core network Connect peers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectPeersPaginator(
        _ input: ListConnectPeersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectPeersRequest, ListConnectPeersResponse> {
        return .init(
            input: input,
            command: listConnectPeers,
            inputKey: \ListConnectPeersRequest.nextToken,
            outputKey: \ListConnectPeersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of core network policy versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCoreNetworkPolicyVersionsPaginator(
        _ input: ListCoreNetworkPolicyVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCoreNetworkPolicyVersionsRequest, ListCoreNetworkPolicyVersionsResponse> {
        return .init(
            input: input,
            command: listCoreNetworkPolicyVersions,
            inputKey: \ListCoreNetworkPolicyVersionsRequest.nextToken,
            outputKey: \ListCoreNetworkPolicyVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of owned and shared core networks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCoreNetworksPaginator(
        _ input: ListCoreNetworksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCoreNetworksRequest, ListCoreNetworksResponse> {
        return .init(
            input: input,
            command: listCoreNetworks,
            inputKey: \ListCoreNetworksRequest.nextToken,
            outputKey: \ListCoreNetworksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
