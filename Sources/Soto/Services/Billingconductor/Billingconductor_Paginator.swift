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

import SotoCore

// MARK: Paginators

extension Billingconductor {
    ///    Amazon Web Services Billing Conductor is in beta release and is subject to change. Your use of Amazon Web Services Billing Conductor is subject to the Beta Service Participation terms of the Amazon Web Services Service Terms (Section 1.10).   This is a paginated call to list linked accounts that are linked to the payer account for the specified time period. If no information is provided, the current billing period is used. The response will optionally include the billing group associated with the linked account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccountAssociationsPaginator<Result>(
        _ input: ListAccountAssociationsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccountAssociationsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountAssociations,
            inputKey: \ListAccountAssociationsInput.nextToken,
            outputKey: \ListAccountAssociationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccountAssociationsPaginator(
        _ input: ListAccountAssociationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccountAssociationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountAssociations,
            inputKey: \ListAccountAssociationsInput.nextToken,
            outputKey: \ListAccountAssociationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated Amazon Web Services charges based on the associated pricing plan of a billing group.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBillingGroupCostReportsPaginator<Result>(
        _ input: ListBillingGroupCostReportsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBillingGroupCostReportsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBillingGroupCostReports,
            inputKey: \ListBillingGroupCostReportsInput.nextToken,
            outputKey: \ListBillingGroupCostReportsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBillingGroupCostReportsPaginator(
        _ input: ListBillingGroupCostReportsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBillingGroupCostReportsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBillingGroupCostReports,
            inputKey: \ListBillingGroupCostReportsInput.nextToken,
            outputKey: \ListBillingGroupCostReportsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  A paginated call to retrieve a list of billing groups for the given billing period. If you don't provide a billing group, the current billing period is used.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listBillingGroupsPaginator<Result>(
        _ input: ListBillingGroupsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBillingGroupsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBillingGroups,
            inputKey: \ListBillingGroupsInput.nextToken,
            outputKey: \ListBillingGroupsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listBillingGroupsPaginator(
        _ input: ListBillingGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBillingGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBillingGroups,
            inputKey: \ListBillingGroupsInput.nextToken,
            outputKey: \ListBillingGroupsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   A paginated call to get a list of all custom line items (FFLIs) for the given billing period. If you don't provide a billing period, the current billing period is used.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomLineItemsPaginator<Result>(
        _ input: ListCustomLineItemsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomLineItemsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomLineItems,
            inputKey: \ListCustomLineItemsInput.nextToken,
            outputKey: \ListCustomLineItemsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomLineItemsPaginator(
        _ input: ListCustomLineItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomLineItemsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomLineItems,
            inputKey: \ListCustomLineItemsInput.nextToken,
            outputKey: \ListCustomLineItemsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  A paginated call to get pricing plans for the given billing period. If you don't provide a billing period, the current billing period is used.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPricingPlansPaginator<Result>(
        _ input: ListPricingPlansInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPricingPlansOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPricingPlans,
            inputKey: \ListPricingPlansInput.nextToken,
            outputKey: \ListPricingPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPricingPlansPaginator(
        _ input: ListPricingPlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPricingPlansOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPricingPlans,
            inputKey: \ListPricingPlansInput.nextToken,
            outputKey: \ListPricingPlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   A list of the pricing plans associated with a pricing rule.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPricingPlansAssociatedWithPricingRulePaginator<Result>(
        _ input: ListPricingPlansAssociatedWithPricingRuleInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPricingPlansAssociatedWithPricingRuleOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPricingPlansAssociatedWithPricingRule,
            inputKey: \ListPricingPlansAssociatedWithPricingRuleInput.nextToken,
            outputKey: \ListPricingPlansAssociatedWithPricingRuleOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPricingPlansAssociatedWithPricingRulePaginator(
        _ input: ListPricingPlansAssociatedWithPricingRuleInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPricingPlansAssociatedWithPricingRuleOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPricingPlansAssociatedWithPricingRule,
            inputKey: \ListPricingPlansAssociatedWithPricingRuleInput.nextToken,
            outputKey: \ListPricingPlansAssociatedWithPricingRuleOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPricingRulesPaginator<Result>(
        _ input: ListPricingRulesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPricingRulesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPricingRules,
            inputKey: \ListPricingRulesInput.nextToken,
            outputKey: \ListPricingRulesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPricingRulesPaginator(
        _ input: ListPricingRulesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPricingRulesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPricingRules,
            inputKey: \ListPricingRulesInput.nextToken,
            outputKey: \ListPricingRulesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Lists the pricing rules associated with a pricing plan.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPricingRulesAssociatedToPricingPlanPaginator<Result>(
        _ input: ListPricingRulesAssociatedToPricingPlanInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPricingRulesAssociatedToPricingPlanOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPricingRulesAssociatedToPricingPlan,
            inputKey: \ListPricingRulesAssociatedToPricingPlanInput.nextToken,
            outputKey: \ListPricingRulesAssociatedToPricingPlanOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPricingRulesAssociatedToPricingPlanPaginator(
        _ input: ListPricingRulesAssociatedToPricingPlanInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPricingRulesAssociatedToPricingPlanOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPricingRulesAssociatedToPricingPlan,
            inputKey: \ListPricingRulesAssociatedToPricingPlanInput.nextToken,
            outputKey: \ListPricingRulesAssociatedToPricingPlanOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   List the resources associated to a custom line item.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listResourcesAssociatedToCustomLineItemPaginator<Result>(
        _ input: ListResourcesAssociatedToCustomLineItemInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResourcesAssociatedToCustomLineItemOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResourcesAssociatedToCustomLineItem,
            inputKey: \ListResourcesAssociatedToCustomLineItemInput.nextToken,
            outputKey: \ListResourcesAssociatedToCustomLineItemOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listResourcesAssociatedToCustomLineItemPaginator(
        _ input: ListResourcesAssociatedToCustomLineItemInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourcesAssociatedToCustomLineItemOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResourcesAssociatedToCustomLineItem,
            inputKey: \ListResourcesAssociatedToCustomLineItemInput.nextToken,
            outputKey: \ListResourcesAssociatedToCustomLineItemOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Billingconductor.ListAccountAssociationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListAccountAssociationsInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            nextToken: token
        )
    }
}

extension Billingconductor.ListBillingGroupCostReportsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListBillingGroupCostReportsInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Billingconductor.ListBillingGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListBillingGroupsInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Billingconductor.ListCustomLineItemsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListCustomLineItemsInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Billingconductor.ListPricingPlansInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListPricingPlansInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Billingconductor.ListPricingPlansAssociatedWithPricingRuleInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListPricingPlansAssociatedWithPricingRuleInput {
        return .init(
            billingPeriod: self.billingPeriod,
            maxResults: self.maxResults,
            nextToken: token,
            pricingRuleArn: self.pricingRuleArn
        )
    }
}

extension Billingconductor.ListPricingRulesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListPricingRulesInput {
        return .init(
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Billingconductor.ListPricingRulesAssociatedToPricingPlanInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListPricingRulesAssociatedToPricingPlanInput {
        return .init(
            billingPeriod: self.billingPeriod,
            maxResults: self.maxResults,
            nextToken: token,
            pricingPlanArn: self.pricingPlanArn
        )
    }
}

extension Billingconductor.ListResourcesAssociatedToCustomLineItemInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Billingconductor.ListResourcesAssociatedToCustomLineItemInput {
        return .init(
            arn: self.arn,
            billingPeriod: self.billingPeriod,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
