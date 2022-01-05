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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AppMesh {
    // MARK: Async API Calls

    /// Creates a gateway route. A gateway route is attached to a virtual gateway and routes traffic to an existing virtual service. If a route matches a request, it can distribute traffic to a target virtual service. For more information about gateway routes, see Gateway routes.
    public func createGatewayRoute(_ input: CreateGatewayRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGatewayRouteOutput {
        return try await self.client.execute(operation: "CreateGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a service mesh.  A service mesh is a logical boundary for network traffic between services that are represented by resources within the mesh. After you create your service mesh, you can create virtual services, virtual nodes, virtual routers, and routes to distribute traffic between the applications in your mesh. For more information about service meshes, see Service meshes.
    public func createMesh(_ input: CreateMeshInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMeshOutput {
        return try await self.client.execute(operation: "CreateMesh", path: "/v20190125/meshes", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a route that is associated with a virtual router.  You can route several different protocols and define a retry policy for a route. Traffic can be routed to one or more virtual nodes. For more information about routes, see Routes.
    public func createRoute(_ input: CreateRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteOutput {
        return try await self.client.execute(operation: "CreateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a virtual gateway. A virtual gateway allows resources outside your mesh to communicate to resources that are inside your mesh. The virtual gateway represents an Envoy proxy running in an Amazon ECS task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a virtual node, which represents an Envoy running with an application, a virtual gateway represents Envoy deployed by itself. For more information about virtual gateways, see Virtual gateways.
    public func createVirtualGateway(_ input: CreateVirtualGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualGatewayOutput {
        return try await self.client.execute(operation: "CreateVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a virtual node within a service mesh.  A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS service or a Kubernetes deployment. When you create a virtual node, you can specify the service discovery information for your task group, and whether the proxy running in a task group will communicate with other proxies using Transport Layer Security (TLS). You define a listener for any inbound traffic that your virtual node expects. Any virtual service that your virtual node expects to communicate to is specified as a backend. The response metadata for your new virtual node contains the arn that is associated with the virtual node. Set this value to the full ARN; for example, arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp) as the APPMESH_RESOURCE_ARN environment variable for your task group's Envoy proxy container in your task definition or pod spec. This is then mapped to the node.id and node.cluster Envoy parameters.  By default, App Mesh uses the name of the resource you specified in APPMESH_RESOURCE_ARN when Envoy is referring to itself in metrics and traces. You can override this behavior by setting the APPMESH_RESOURCE_CLUSTER environment variable with your own name.  For more information about virtual nodes, see Virtual nodes. You must be using 1.15.0 or later of the Envoy image when setting these variables. For more information aboutApp Mesh Envoy variables, see Envoy image in the AWS App Mesh User Guide.
    public func createVirtualNode(_ input: CreateVirtualNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualNodeOutput {
        return try await self.client.execute(operation: "CreateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a virtual router within a service mesh. Specify a listener for any inbound traffic that your virtual router receives. Create a virtual router for each protocol and port that you need to route. Virtual routers handle traffic for one or more virtual services within your mesh. After you create your virtual router, create and associate routes for your virtual router that direct incoming requests to different virtual nodes. For more information about virtual routers, see Virtual routers.
    public func createVirtualRouter(_ input: CreateVirtualRouterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualRouterOutput {
        return try await self.client.execute(operation: "CreateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a virtual service within a service mesh. A virtual service is an abstraction of a real service that is provided by a virtual node directly or indirectly by means of a virtual router. Dependent services call your virtual service by its virtualServiceName, and those requests are routed to the virtual node or virtual router that is specified as the provider for the virtual service. For more information about virtual services, see Virtual services.
    public func createVirtualService(_ input: CreateVirtualServiceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVirtualServiceOutput {
        return try await self.client.execute(operation: "CreateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing gateway route.
    public func deleteGatewayRoute(_ input: DeleteGatewayRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayRouteOutput {
        return try await self.client.execute(operation: "DeleteGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing service mesh. You must delete all resources (virtual services, routes, virtual routers, and virtual nodes) in the service mesh before you can delete the mesh itself.
    public func deleteMesh(_ input: DeleteMeshInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMeshOutput {
        return try await self.client.execute(operation: "DeleteMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing route.
    public func deleteRoute(_ input: DeleteRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteOutput {
        return try await self.client.execute(operation: "DeleteRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing virtual gateway. You cannot delete a virtual gateway if any gateway routes are associated to it.
    public func deleteVirtualGateway(_ input: DeleteVirtualGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVirtualGatewayOutput {
        return try await self.client.execute(operation: "DeleteVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing virtual node. You must delete any virtual services that list a virtual node as a service provider before you can delete the virtual node itself.
    public func deleteVirtualNode(_ input: DeleteVirtualNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVirtualNodeOutput {
        return try await self.client.execute(operation: "DeleteVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing virtual router. You must delete any routes associated with the virtual router before you can delete the router itself.
    public func deleteVirtualRouter(_ input: DeleteVirtualRouterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVirtualRouterOutput {
        return try await self.client.execute(operation: "DeleteVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing virtual service.
    public func deleteVirtualService(_ input: DeleteVirtualServiceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVirtualServiceOutput {
        return try await self.client.execute(operation: "DeleteVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing gateway route.
    public func describeGatewayRoute(_ input: DescribeGatewayRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayRouteOutput {
        return try await self.client.execute(operation: "DescribeGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing service mesh.
    public func describeMesh(_ input: DescribeMeshInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshOutput {
        return try await self.client.execute(operation: "DescribeMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing route.
    public func describeRoute(_ input: DescribeRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteOutput {
        return try await self.client.execute(operation: "DescribeRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing virtual gateway.
    public func describeVirtualGateway(_ input: DescribeVirtualGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirtualGatewayOutput {
        return try await self.client.execute(operation: "DescribeVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing virtual node.
    public func describeVirtualNode(_ input: DescribeVirtualNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirtualNodeOutput {
        return try await self.client.execute(operation: "DescribeVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing virtual router.
    public func describeVirtualRouter(_ input: DescribeVirtualRouterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirtualRouterOutput {
        return try await self.client.execute(operation: "DescribeVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing virtual service.
    public func describeVirtualService(_ input: DescribeVirtualServiceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirtualServiceOutput {
        return try await self.client.execute(operation: "DescribeVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing gateway routes that are associated to a virtual gateway.
    public func listGatewayRoutes(_ input: ListGatewayRoutesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGatewayRoutesOutput {
        return try await self.client.execute(operation: "ListGatewayRoutes", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing service meshes.
    public func listMeshes(_ input: ListMeshesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMeshesOutput {
        return try await self.client.execute(operation: "ListMeshes", path: "/v20190125/meshes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing routes in a service mesh.
    public func listRoutes(_ input: ListRoutesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRoutesOutput {
        return try await self.client.execute(operation: "ListRoutes", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags for an App Mesh resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v20190125/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing virtual gateways in a service mesh.
    public func listVirtualGateways(_ input: ListVirtualGatewaysInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVirtualGatewaysOutput {
        return try await self.client.execute(operation: "ListVirtualGateways", path: "/v20190125/meshes/{meshName}/virtualGateways", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing virtual nodes.
    public func listVirtualNodes(_ input: ListVirtualNodesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVirtualNodesOutput {
        return try await self.client.execute(operation: "ListVirtualNodes", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRouters(_ input: ListVirtualRoutersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVirtualRoutersOutput {
        return try await self.client.execute(operation: "ListVirtualRouters", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing virtual services in a service mesh.
    public func listVirtualServices(_ input: ListVirtualServicesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVirtualServicesOutput {
        return try await self.client.execute(operation: "ListVirtualServices", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource aren't specified in the request parameters, they aren't changed. When a resource is deleted, the tags associated with that resource are also deleted.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/v20190125/tag", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/v20190125/untag", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing gateway route that is associated to a specified virtual gateway in a service mesh.
    public func updateGatewayRoute(_ input: UpdateGatewayRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewayRouteOutput {
        return try await self.client.execute(operation: "UpdateGatewayRoute", path: "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing service mesh.
    public func updateMesh(_ input: UpdateMeshInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMeshOutput {
        return try await self.client.execute(operation: "UpdateMesh", path: "/v20190125/meshes/{meshName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing route for a specified service mesh and virtual router.
    public func updateRoute(_ input: UpdateRouteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRouteOutput {
        return try await self.client.execute(operation: "UpdateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing virtual gateway in a specified service mesh.
    public func updateVirtualGateway(_ input: UpdateVirtualGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVirtualGatewayOutput {
        return try await self.client.execute(operation: "UpdateVirtualGateway", path: "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing virtual node in a specified service mesh.
    public func updateVirtualNode(_ input: UpdateVirtualNodeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVirtualNodeOutput {
        return try await self.client.execute(operation: "UpdateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing virtual router in a specified service mesh.
    public func updateVirtualRouter(_ input: UpdateVirtualRouterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVirtualRouterOutput {
        return try await self.client.execute(operation: "UpdateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing virtual service in a specified service mesh.
    public func updateVirtualService(_ input: UpdateVirtualServiceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVirtualServiceOutput {
        return try await self.client.execute(operation: "UpdateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
