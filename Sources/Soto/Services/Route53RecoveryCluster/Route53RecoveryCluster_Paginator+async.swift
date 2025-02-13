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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53RecoveryCluster {
    ///  List routing control names and Amazon Resource Names (ARNs), as well as the routing control
    ///  			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    ///  			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    ///  			all the routing controls in the cluster.
    ///  		       A routing control is a simple on/off switch in Route 53 ARC that you
    ///  			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    ///  			the state is Off, traffic does not flow.
    ///  		       Before you can create a routing control, you must first create a cluster, and then host the control
    ///  			in a control panel on the cluster. For more information, see
    ///  				Create routing control structures in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///  			You access one of the endpoints for the cluster to get or update the routing control state to
    ///  			redirect traffic for your application.
    ///  		        You must specify Regional endpoints when you work with API cluster operations
    ///  			to use this API operation to list routing controls in Route 53 ARC.
    ///  		       Learn more about working with routing controls in the following topics in the
    ///  			Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    ///  				Viewing and updating routing control states     Working with
    ///  				routing controls in Route 53 ARC
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutingControlsPaginator(
        _ input: ListRoutingControlsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutingControlsRequest, ListRoutingControlsResponse> {
        return .init(
            input: input,
            command: listRoutingControls,
            inputKey: \ListRoutingControlsRequest.nextToken,
            outputKey: \ListRoutingControlsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
