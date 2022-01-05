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
extension SavingsPlans {
    // MARK: Async API Calls

    /// Creates a Savings Plan.
    public func createSavingsPlan(_ input: CreateSavingsPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSavingsPlanResponse {
        return try await self.client.execute(operation: "CreateSavingsPlan", path: "/CreateSavingsPlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the queued purchase for the specified Savings Plan.
    public func deleteQueuedSavingsPlan(_ input: DeleteQueuedSavingsPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteQueuedSavingsPlanResponse {
        return try await self.client.execute(operation: "DeleteQueuedSavingsPlan", path: "/DeleteQueuedSavingsPlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified Savings Plans rates.
    public func describeSavingsPlanRates(_ input: DescribeSavingsPlanRatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSavingsPlanRatesResponse {
        return try await self.client.execute(operation: "DescribeSavingsPlanRates", path: "/DescribeSavingsPlanRates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified Savings Plans.
    public func describeSavingsPlans(_ input: DescribeSavingsPlansRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSavingsPlansResponse {
        return try await self.client.execute(operation: "DescribeSavingsPlans", path: "/DescribeSavingsPlans", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified Savings Plans offering rates.
    public func describeSavingsPlansOfferingRates(_ input: DescribeSavingsPlansOfferingRatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSavingsPlansOfferingRatesResponse {
        return try await self.client.execute(operation: "DescribeSavingsPlansOfferingRates", path: "/DescribeSavingsPlansOfferingRates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified Savings Plans offerings.
    public func describeSavingsPlansOfferings(_ input: DescribeSavingsPlansOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSavingsPlansOfferingsResponse {
        return try await self.client.execute(operation: "DescribeSavingsPlansOfferings", path: "/DescribeSavingsPlansOfferings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/TagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/UntagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
