// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ServerlessApplicationRepository {

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependenciesPaginator(_ input: ListApplicationDependenciesRequest) -> EventLoopFuture<[ApplicationDependencySummary]> {
        return client.paginate(input: input, command: listApplicationDependencies, resultKey: "dependencies", tokenKey: "nextToken")
    }
    
    ///  Lists versions for the specified application.
    public func listApplicationVersionsPaginator(_ input: ListApplicationVersionsRequest) -> EventLoopFuture<[VersionSummary]> {
        return client.paginate(input: input, command: listApplicationVersions, resultKey: "versions", tokenKey: "nextToken")
    }
    
    ///  Lists applications owned by the requester.
    public func listApplicationsPaginator(_ input: ListApplicationsRequest) -> EventLoopFuture<[ApplicationSummary]> {
        return client.paginate(input: input, command: listApplications, resultKey: "applications", tokenKey: "nextToken")
    }
    
}

extension ServerlessApplicationRepository.ListApplicationDependenciesRequest: AWSPaginateStringToken {
    public init(_ original: ServerlessApplicationRepository.ListApplicationDependenciesRequest, token: String) {
        self.init(
            applicationId: original.applicationId, 
            maxItems: original.maxItems, 
            nextToken: token, 
            semanticVersion: original.semanticVersion
        )
    }
}

extension ServerlessApplicationRepository.ListApplicationVersionsRequest: AWSPaginateStringToken {
    public init(_ original: ServerlessApplicationRepository.ListApplicationVersionsRequest, token: String) {
        self.init(
            applicationId: original.applicationId, 
            maxItems: original.maxItems, 
            nextToken: token
        )
    }
}

extension ServerlessApplicationRepository.ListApplicationsRequest: AWSPaginateStringToken {
    public init(_ original: ServerlessApplicationRepository.ListApplicationsRequest, token: String) {
        self.init(
            maxItems: original.maxItems, 
            nextToken: token
        )
    }
}


