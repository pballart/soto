// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension MediaStoreData {

    ///  Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItemsPaginator(_ input: ListItemsRequest) -> EventLoopFuture<[Item]> {
        return client.paginate(input: input, command: listItems, resultKey: "items", tokenKey: "nextToken")
    }
    
}

extension MediaStoreData.ListItemsRequest: AWSPaginateStringToken {
    public init(_ original: MediaStoreData.ListItemsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            path: original.path
        )
    }
}


