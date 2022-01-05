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

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension EC2 {
    public func waitUntilBundleTaskComplete(
        _ input: DescribeBundleTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("bundleTasks[].state", expected: "complete")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("bundleTasks[].state", expected: "failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeBundleTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskCancelled(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("conversionTasks[].state", expected: "cancelled")),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskCompleted(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("conversionTasks[].state", expected: "completed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("conversionTasks[].state", expected: "cancelled")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("conversionTasks[].state", expected: "cancelling")),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskDeleted(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("conversionTasks[].state", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCustomerGatewayAvailable(
        _ input: DescribeCustomerGatewaysRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("customerGateways[].state", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("customerGateways[].state", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("customerGateways[].state", expected: "deleting")),
            ],
            minDelayTime: .seconds(15),
            command: describeCustomerGateways
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilExportTaskCancelled(
        _ input: DescribeExportTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("exportTasks[].state", expected: "cancelled")),
            ],
            minDelayTime: .seconds(15),
            command: describeExportTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilExportTaskCompleted(
        _ input: DescribeExportTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("exportTasks[].state", expected: "completed")),
            ],
            minDelayTime: .seconds(15),
            command: describeExportTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilImageAvailable(
        _ input: DescribeImagesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("images[].state", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("images[].state", expected: "failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeImages
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilImageExists(
        _ input: DescribeImagesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(images[]) > `0`", expected: true)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidAMIID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeImages
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceExists(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(reservations[]) > `0`", expected: true)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInstanceID.NotFound")),
            ],
            minDelayTime: .seconds(5),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceRunning(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("reservations[].instances[].state.name", expected: "running")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "shutting-down")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "terminated")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "stopping")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInstanceID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceStatusOk(
        _ input: DescribeInstanceStatusRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instanceStatuses[].instanceStatus.status", expected: "ok")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInstanceID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstanceStatus
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceStopped(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("reservations[].instances[].state.name", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "pending")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "terminated")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceTerminated(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("reservations[].instances[].state.name", expected: "terminated")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "pending")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("reservations[].instances[].state.name", expected: "stopping")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInternetGatewayExists(
        _ input: DescribeInternetGatewaysRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(internetGateways[].internetGatewayId) > `0`", expected: true)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInternetGateway.NotFound")),
            ],
            minDelayTime: .seconds(5),
            command: describeInternetGateways
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilKeyPairExists(
        _ input: DescribeKeyPairsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(keyPairs[].keyName) > `0`", expected: true)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidKeyPair.NotFound")),
            ],
            minDelayTime: .seconds(5),
            command: describeKeyPairs
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNatGatewayAvailable(
        _ input: DescribeNatGatewaysRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("natGateways[].state", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("natGateways[].state", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("natGateways[].state", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("natGateways[].state", expected: "deleted")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("NatGatewayNotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeNatGateways
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNetworkInterfaceAvailable(
        _ input: DescribeNetworkInterfacesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("networkInterfaces[].status", expected: "available")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("InvalidNetworkInterfaceID.NotFound")),
            ],
            minDelayTime: .seconds(20),
            command: describeNetworkInterfaces
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilPasswordDataAvailable(
        _ input: GetPasswordDataRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(passwordData) > `0`", expected: true)),
            ],
            minDelayTime: .seconds(15),
            command: getPasswordData
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSecurityGroupExists(
        _ input: DescribeSecurityGroupsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("length(securityGroups[].groupId) > `0`", expected: true)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidGroup.NotFound")),
            ],
            minDelayTime: .seconds(5),
            command: describeSecurityGroups
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSnapshotCompleted(
        _ input: DescribeSnapshotsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("snapshots[].state", expected: "completed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("snapshots[].state", expected: "error")),
            ],
            minDelayTime: .seconds(15),
            command: describeSnapshots
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSpotInstanceRequestFulfilled(
        _ input: DescribeSpotInstanceRequestsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("spotInstanceRequests[].status.code", expected: "fulfilled")),
                .init(state: .success, matcher: try! JMESAllPathMatcher("spotInstanceRequests[].status.code", expected: "request-canceled-and-instance-running")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("spotInstanceRequests[].status.code", expected: "schedule-expired")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("spotInstanceRequests[].status.code", expected: "canceled-before-fulfillment")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("spotInstanceRequests[].status.code", expected: "bad-parameters")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("spotInstanceRequests[].status.code", expected: "system-error")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidSpotInstanceRequestID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeSpotInstanceRequests
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSubnetAvailable(
        _ input: DescribeSubnetsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("subnets[].state", expected: "available")),
            ],
            minDelayTime: .seconds(15),
            command: describeSubnets
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSystemStatusOk(
        _ input: DescribeInstanceStatusRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instanceStatuses[].systemStatus.status", expected: "ok")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstanceStatus
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeAvailable(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("volumes[].state", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("volumes[].state", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeDeleted(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("volumes[].state", expected: "deleted")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("InvalidVolume.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeInUse(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("volumes[].state", expected: "in-use")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("volumes[].state", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcAvailable(
        _ input: DescribeVpcsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("vpcs[].state", expected: "available")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcs
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcExists(
        _ input: DescribeVpcsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidVpcID.NotFound")),
            ],
            minDelayTime: .seconds(1),
            command: describeVpcs
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcPeeringConnectionDeleted(
        _ input: DescribeVpcPeeringConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("vpcPeeringConnections[].status.code", expected: "deleted")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("InvalidVpcPeeringConnectionID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcPeeringConnections
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcPeeringConnectionExists(
        _ input: DescribeVpcPeeringConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidVpcPeeringConnectionID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcPeeringConnections
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpnConnectionAvailable(
        _ input: DescribeVpnConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("vpnConnections[].state", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("vpnConnections[].state", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("vpnConnections[].state", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpnConnections
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpnConnectionDeleted(
        _ input: DescribeVpnConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("vpnConnections[].state", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("vpnConnections[].state", expected: "pending")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpnConnections
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
