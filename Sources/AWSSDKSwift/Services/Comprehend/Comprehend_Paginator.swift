// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Comprehend {

    ///  Gets a list of the documentation classification jobs that you have submitted.
    public func listDocumentClassificationJobsPaginator(_ input: ListDocumentClassificationJobsRequest) -> EventLoopFuture<[DocumentClassificationJobProperties]> {
        return client.paginate(input: input, command: listDocumentClassificationJobs, resultKey: "documentClassificationJobPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of the document classifiers that you have created.
    public func listDocumentClassifiersPaginator(_ input: ListDocumentClassifiersRequest) -> EventLoopFuture<[DocumentClassifierProperties]> {
        return client.paginate(input: input, command: listDocumentClassifiers, resultKey: "documentClassifierPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobsPaginator(_ input: ListDominantLanguageDetectionJobsRequest) -> EventLoopFuture<[DominantLanguageDetectionJobProperties]> {
        return client.paginate(input: input, command: listDominantLanguageDetectionJobs, resultKey: "dominantLanguageDetectionJobPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobsPaginator(_ input: ListEntitiesDetectionJobsRequest) -> EventLoopFuture<[EntitiesDetectionJobProperties]> {
        return client.paginate(input: input, command: listEntitiesDetectionJobs, resultKey: "entitiesDetectionJobPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    public func listEntityRecognizersPaginator(_ input: ListEntityRecognizersRequest) -> EventLoopFuture<[EntityRecognizerProperties]> {
        return client.paginate(input: input, command: listEntityRecognizers, resultKey: "entityRecognizerPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobsPaginator(_ input: ListKeyPhrasesDetectionJobsRequest) -> EventLoopFuture<[KeyPhrasesDetectionJobProperties]> {
        return client.paginate(input: input, command: listKeyPhrasesDetectionJobs, resultKey: "keyPhrasesDetectionJobPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobsPaginator(_ input: ListSentimentDetectionJobsRequest) -> EventLoopFuture<[SentimentDetectionJobProperties]> {
        return client.paginate(input: input, command: listSentimentDetectionJobs, resultKey: "sentimentDetectionJobPropertiesList", tokenKey: "nextToken")
    }
    
    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobsPaginator(_ input: ListTopicsDetectionJobsRequest) -> EventLoopFuture<[TopicsDetectionJobProperties]> {
        return client.paginate(input: input, command: listTopicsDetectionJobs, resultKey: "topicsDetectionJobPropertiesList", tokenKey: "nextToken")
    }
    
}

extension Comprehend.ListDocumentClassificationJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListDocumentClassificationJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListDocumentClassifiersRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListDocumentClassifiersRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListDominantLanguageDetectionJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListDominantLanguageDetectionJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListEntitiesDetectionJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListEntitiesDetectionJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListEntityRecognizersRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListEntityRecognizersRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListKeyPhrasesDetectionJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListKeyPhrasesDetectionJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListSentimentDetectionJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListSentimentDetectionJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Comprehend.ListTopicsDetectionJobsRequest: AWSPaginateStringToken {
    public init(_ original: Comprehend.ListTopicsDetectionJobsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


