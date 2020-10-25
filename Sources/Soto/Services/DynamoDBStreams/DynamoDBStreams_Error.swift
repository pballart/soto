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

import SotoCore

/// Error enum for DynamoDBStreams
public struct DynamoDBStreamsErrorType: AWSErrorType {
    enum Code: String {
        case expiredIteratorException = "ExpiredIteratorException"
        case internalServerError = "InternalServerError"
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case trimmedDataAccessException = "TrimmedDataAccessException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DynamoDBStreams
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the GetShardIterator action.
    public static var expiredIteratorException: Self { .init(.expiredIteratorException) }
    /// An error occurred on the server side.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// There is no limit to the number of daily on-demand backups that can be taken. Up to 50 simultaneous table operations are allowed per account. These operations include CreateTable, UpdateTable, DeleteTable,UpdateTimeToLive, RestoreTableFromBackup, and RestoreTableToPointInTime. The only exception is when you are creating a table with one or more secondary indexes. You can have up to 25 such requests running at a time; however, if the table or index specifications are complex, DynamoDB might temporarily reduce the number of concurrent operations. There is a soft account quota of 256 tables.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be ACTIVE.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation attempted to read past the oldest stream record in a shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:   You request a shard iterator with a sequence number older than the trim point (24 hours).   You obtain a shard iterator, but before you use the iterator in a GetRecords request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
    public static var trimmedDataAccessException: Self { .init(.trimmedDataAccessException) }
}

extension DynamoDBStreamsErrorType: Equatable {
    public static func == (lhs: DynamoDBStreamsErrorType, rhs: DynamoDBStreamsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DynamoDBStreamsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
