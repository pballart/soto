// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ApiGatewayV2 service.

Amazon API Gateway V2
*/
public struct ApiGatewayV2 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApiGatewayV2 client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "apigateway",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApiGatewayV2ErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an Api resource.
    public func createApi(_ input: CreateApiRequest) -> EventLoopFuture<CreateApiResponse> {
        return client.send(operation: "CreateApi", path: "/v2/apis", httpMethod: "POST", input: input)
    }

    ///  Creates an API mapping.
    public func createApiMapping(_ input: CreateApiMappingRequest) -> EventLoopFuture<CreateApiMappingResponse> {
        return client.send(operation: "CreateApiMapping", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "POST", input: input)
    }

    ///  Creates an Authorizer for an API.
    public func createAuthorizer(_ input: CreateAuthorizerRequest) -> EventLoopFuture<CreateAuthorizerResponse> {
        return client.send(operation: "CreateAuthorizer", path: "/v2/apis/{apiId}/authorizers", httpMethod: "POST", input: input)
    }

    ///  Creates a Deployment for an API.
    public func createDeployment(_ input: CreateDeploymentRequest) -> EventLoopFuture<CreateDeploymentResponse> {
        return client.send(operation: "CreateDeployment", path: "/v2/apis/{apiId}/deployments", httpMethod: "POST", input: input)
    }

    ///  Creates a domain name.
    public func createDomainName(_ input: CreateDomainNameRequest) -> EventLoopFuture<CreateDomainNameResponse> {
        return client.send(operation: "CreateDomainName", path: "/v2/domainnames", httpMethod: "POST", input: input)
    }

    ///  Creates an Integration.
    public func createIntegration(_ input: CreateIntegrationRequest) -> EventLoopFuture<CreateIntegrationResult> {
        return client.send(operation: "CreateIntegration", path: "/v2/apis/{apiId}/integrations", httpMethod: "POST", input: input)
    }

    ///  Creates an IntegrationResponses.
    public func createIntegrationResponse(_ input: CreateIntegrationResponseRequest) -> EventLoopFuture<CreateIntegrationResponseResponse> {
        return client.send(operation: "CreateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "POST", input: input)
    }

    ///  Creates a Model for an API.
    public func createModel(_ input: CreateModelRequest) -> EventLoopFuture<CreateModelResponse> {
        return client.send(operation: "CreateModel", path: "/v2/apis/{apiId}/models", httpMethod: "POST", input: input)
    }

    ///  Creates a Route for an API.
    public func createRoute(_ input: CreateRouteRequest) -> EventLoopFuture<CreateRouteResult> {
        return client.send(operation: "CreateRoute", path: "/v2/apis/{apiId}/routes", httpMethod: "POST", input: input)
    }

    ///  Creates a RouteResponse for a Route.
    public func createRouteResponse(_ input: CreateRouteResponseRequest) -> EventLoopFuture<CreateRouteResponseResponse> {
        return client.send(operation: "CreateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "POST", input: input)
    }

    ///  Creates a Stage for an API.
    public func createStage(_ input: CreateStageRequest) -> EventLoopFuture<CreateStageResponse> {
        return client.send(operation: "CreateStage", path: "/v2/apis/{apiId}/stages", httpMethod: "POST", input: input)
    }

    ///  Creates a VPC link.
    public func createVpcLink(_ input: CreateVpcLinkRequest) -> EventLoopFuture<CreateVpcLinkResponse> {
        return client.send(operation: "CreateVpcLink", path: "/v2/vpclinks", httpMethod: "POST", input: input)
    }

    ///  Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.
    @discardableResult public func deleteAccessLogSettings(_ input: DeleteAccessLogSettingsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAccessLogSettings", path: "/v2/apis/{apiId}/stages/{stageName}/accesslogsettings", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Api resource.
    @discardableResult public func deleteApi(_ input: DeleteApiRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApi", path: "/v2/apis/{apiId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an API mapping.
    @discardableResult public func deleteApiMapping(_ input: DeleteApiMappingRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Authorizer.
    @discardableResult public func deleteAuthorizer(_ input: DeleteAuthorizerRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a CORS configuration.
    @discardableResult public func deleteCorsConfiguration(_ input: DeleteCorsConfigurationRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCorsConfiguration", path: "/v2/apis/{apiId}/cors", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Deployment.
    @discardableResult public func deleteDeployment(_ input: DeleteDeploymentRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a domain name.
    @discardableResult public func deleteDomainName(_ input: DeleteDomainNameRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Integration.
    @discardableResult public func deleteIntegration(_ input: DeleteIntegrationRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an IntegrationResponses.
    @discardableResult public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Model.
    @discardableResult public func deleteModel(_ input: DeleteModelRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Route.
    @discardableResult public func deleteRoute(_ input: DeleteRouteRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a route request parameter.
    @discardableResult public func deleteRouteRequestParameter(_ input: DeleteRouteRequestParameterRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteRequestParameter", path: "/v2/apis/{apiId}/routes/{routeId}/requestparameters/{requestParameterKey}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a RouteResponse.
    @discardableResult public func deleteRouteResponse(_ input: DeleteRouteResponseRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the RouteSettings for a stage.
    @discardableResult public func deleteRouteSettings(_ input: DeleteRouteSettingsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRouteSettings", path: "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Stage.
    @discardableResult public func deleteStage(_ input: DeleteStageRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a VPC link.
    public func deleteVpcLink(_ input: DeleteVpcLinkRequest) -> EventLoopFuture<DeleteVpcLinkResponse> {
        return client.send(operation: "DeleteVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "DELETE", input: input)
    }

    ///  Exports a definition of an API in a particular output format and specification.
    public func exportApi(_ input: ExportApiRequest) -> EventLoopFuture<ExportApiResponse> {
        return client.send(operation: "ExportApi", path: "/v2/apis/{apiId}/exports/{specification}", httpMethod: "GET", input: input)
    }

    ///  Gets an Api resource.
    public func getApi(_ input: GetApiRequest) -> EventLoopFuture<GetApiResponse> {
        return client.send(operation: "GetApi", path: "/v2/apis/{apiId}", httpMethod: "GET", input: input)
    }

    ///  Gets an API mapping.
    public func getApiMapping(_ input: GetApiMappingRequest) -> EventLoopFuture<GetApiMappingResponse> {
        return client.send(operation: "GetApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "GET", input: input)
    }

    ///  Gets API mappings.
    public func getApiMappings(_ input: GetApiMappingsRequest) -> EventLoopFuture<GetApiMappingsResponse> {
        return client.send(operation: "GetApiMappings", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "GET", input: input)
    }

    ///  Gets a collection of Api resources.
    public func getApis(_ input: GetApisRequest) -> EventLoopFuture<GetApisResponse> {
        return client.send(operation: "GetApis", path: "/v2/apis", httpMethod: "GET", input: input)
    }

    ///  Gets an Authorizer.
    public func getAuthorizer(_ input: GetAuthorizerRequest) -> EventLoopFuture<GetAuthorizerResponse> {
        return client.send(operation: "GetAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "GET", input: input)
    }

    ///  Gets the Authorizers for an API.
    public func getAuthorizers(_ input: GetAuthorizersRequest) -> EventLoopFuture<GetAuthorizersResponse> {
        return client.send(operation: "GetAuthorizers", path: "/v2/apis/{apiId}/authorizers", httpMethod: "GET", input: input)
    }

    ///  Gets a Deployment.
    public func getDeployment(_ input: GetDeploymentRequest) -> EventLoopFuture<GetDeploymentResponse> {
        return client.send(operation: "GetDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "GET", input: input)
    }

    ///  Gets the Deployments for an API.
    public func getDeployments(_ input: GetDeploymentsRequest) -> EventLoopFuture<GetDeploymentsResponse> {
        return client.send(operation: "GetDeployments", path: "/v2/apis/{apiId}/deployments", httpMethod: "GET", input: input)
    }

    ///  Gets a domain name.
    public func getDomainName(_ input: GetDomainNameRequest) -> EventLoopFuture<GetDomainNameResponse> {
        return client.send(operation: "GetDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "GET", input: input)
    }

    ///  Gets the domain names for an AWS account.
    public func getDomainNames(_ input: GetDomainNamesRequest) -> EventLoopFuture<GetDomainNamesResponse> {
        return client.send(operation: "GetDomainNames", path: "/v2/domainnames", httpMethod: "GET", input: input)
    }

    ///  Gets an Integration.
    public func getIntegration(_ input: GetIntegrationRequest) -> EventLoopFuture<GetIntegrationResult> {
        return client.send(operation: "GetIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "GET", input: input)
    }

    ///  Gets an IntegrationResponses.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest) -> EventLoopFuture<GetIntegrationResponseResponse> {
        return client.send(operation: "GetIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "GET", input: input)
    }

    ///  Gets the IntegrationResponses for an Integration.
    public func getIntegrationResponses(_ input: GetIntegrationResponsesRequest) -> EventLoopFuture<GetIntegrationResponsesResponse> {
        return client.send(operation: "GetIntegrationResponses", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "GET", input: input)
    }

    ///  Gets the Integrations for an API.
    public func getIntegrations(_ input: GetIntegrationsRequest) -> EventLoopFuture<GetIntegrationsResponse> {
        return client.send(operation: "GetIntegrations", path: "/v2/apis/{apiId}/integrations", httpMethod: "GET", input: input)
    }

    ///  Gets a Model.
    public func getModel(_ input: GetModelRequest) -> EventLoopFuture<GetModelResponse> {
        return client.send(operation: "GetModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "GET", input: input)
    }

    ///  Gets a model template.
    public func getModelTemplate(_ input: GetModelTemplateRequest) -> EventLoopFuture<GetModelTemplateResponse> {
        return client.send(operation: "GetModelTemplate", path: "/v2/apis/{apiId}/models/{modelId}/template", httpMethod: "GET", input: input)
    }

    ///  Gets the Models for an API.
    public func getModels(_ input: GetModelsRequest) -> EventLoopFuture<GetModelsResponse> {
        return client.send(operation: "GetModels", path: "/v2/apis/{apiId}/models", httpMethod: "GET", input: input)
    }

    ///  Gets a Route.
    public func getRoute(_ input: GetRouteRequest) -> EventLoopFuture<GetRouteResult> {
        return client.send(operation: "GetRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "GET", input: input)
    }

    ///  Gets a RouteResponse.
    public func getRouteResponse(_ input: GetRouteResponseRequest) -> EventLoopFuture<GetRouteResponseResponse> {
        return client.send(operation: "GetRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "GET", input: input)
    }

    ///  Gets the RouteResponses for a Route.
    public func getRouteResponses(_ input: GetRouteResponsesRequest) -> EventLoopFuture<GetRouteResponsesResponse> {
        return client.send(operation: "GetRouteResponses", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "GET", input: input)
    }

    ///  Gets the Routes for an API.
    public func getRoutes(_ input: GetRoutesRequest) -> EventLoopFuture<GetRoutesResponse> {
        return client.send(operation: "GetRoutes", path: "/v2/apis/{apiId}/routes", httpMethod: "GET", input: input)
    }

    ///  Gets a Stage.
    public func getStage(_ input: GetStageRequest) -> EventLoopFuture<GetStageResponse> {
        return client.send(operation: "GetStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "GET", input: input)
    }

    ///  Gets the Stages for an API.
    public func getStages(_ input: GetStagesRequest) -> EventLoopFuture<GetStagesResponse> {
        return client.send(operation: "GetStages", path: "/v2/apis/{apiId}/stages", httpMethod: "GET", input: input)
    }

    ///  Gets a collection of Tag resources.
    public func getTags(_ input: GetTagsRequest) -> EventLoopFuture<GetTagsResponse> {
        return client.send(operation: "GetTags", path: "/v2/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Gets a VPC link.
    public func getVpcLink(_ input: GetVpcLinkRequest) -> EventLoopFuture<GetVpcLinkResponse> {
        return client.send(operation: "GetVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "GET", input: input)
    }

    ///  Gets a collection of VPC links.
    public func getVpcLinks(_ input: GetVpcLinksRequest) -> EventLoopFuture<GetVpcLinksResponse> {
        return client.send(operation: "GetVpcLinks", path: "/v2/vpclinks", httpMethod: "GET", input: input)
    }

    ///  Imports an API.
    public func importApi(_ input: ImportApiRequest) -> EventLoopFuture<ImportApiResponse> {
        return client.send(operation: "ImportApi", path: "/v2/apis", httpMethod: "PUT", input: input)
    }

    ///  Puts an Api resource.
    public func reimportApi(_ input: ReimportApiRequest) -> EventLoopFuture<ReimportApiResponse> {
        return client.send(operation: "ReimportApi", path: "/v2/apis/{apiId}", httpMethod: "PUT", input: input)
    }

    ///  Resets all authorizer cache entries for the specified stage. Supported only for HTTP API Lambda authorizers.
    @discardableResult public func resetAuthorizersCache(_ input: ResetAuthorizersCacheRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "ResetAuthorizersCache", path: "/v2/apis/{apiId}/stages/{stageName}/cache/authorizers", httpMethod: "DELETE", input: input)
    }

    ///  Creates a new Tag resource to represent a tag.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/v2/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Deletes a Tag.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/v2/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an Api resource.
    public func updateApi(_ input: UpdateApiRequest) -> EventLoopFuture<UpdateApiResponse> {
        return client.send(operation: "UpdateApi", path: "/v2/apis/{apiId}", httpMethod: "PATCH", input: input)
    }

    ///  The API mapping.
    public func updateApiMapping(_ input: UpdateApiMappingRequest) -> EventLoopFuture<UpdateApiMappingResponse> {
        return client.send(operation: "UpdateApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an Authorizer.
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest) -> EventLoopFuture<UpdateAuthorizerResponse> {
        return client.send(operation: "UpdateAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Deployment.
    public func updateDeployment(_ input: UpdateDeploymentRequest) -> EventLoopFuture<UpdateDeploymentResponse> {
        return client.send(operation: "UpdateDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a domain name.
    public func updateDomainName(_ input: UpdateDomainNameRequest) -> EventLoopFuture<UpdateDomainNameResponse> {
        return client.send(operation: "UpdateDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an Integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest) -> EventLoopFuture<UpdateIntegrationResult> {
        return client.send(operation: "UpdateIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an IntegrationResponses.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest) -> EventLoopFuture<UpdateIntegrationResponseResponse> {
        return client.send(operation: "UpdateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Model.
    public func updateModel(_ input: UpdateModelRequest) -> EventLoopFuture<UpdateModelResponse> {
        return client.send(operation: "UpdateModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Route.
    public func updateRoute(_ input: UpdateRouteRequest) -> EventLoopFuture<UpdateRouteResult> {
        return client.send(operation: "UpdateRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a RouteResponse.
    public func updateRouteResponse(_ input: UpdateRouteResponseRequest) -> EventLoopFuture<UpdateRouteResponseResponse> {
        return client.send(operation: "UpdateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Stage.
    public func updateStage(_ input: UpdateStageRequest) -> EventLoopFuture<UpdateStageResponse> {
        return client.send(operation: "UpdateStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a VPC link.
    public func updateVpcLink(_ input: UpdateVpcLinkRequest) -> EventLoopFuture<UpdateVpcLinkResponse> {
        return client.send(operation: "UpdateVpcLink", path: "/v2/vpclinks/{vpcLinkId}", httpMethod: "PATCH", input: input)
    }
}
