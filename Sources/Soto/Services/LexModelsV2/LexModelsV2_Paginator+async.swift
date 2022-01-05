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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LexModelsV2 {
    ///  Provides a list of utterances that users have sent to the bot. Utterances are aggregated by the text of the utterance. For example, all instances where customers used the phrase "I want to order pizza" are aggregated into the same line in the response. You can see both detected utterances and missed utterances. A detected utterance is where the bot properly recognized the utterance and activated the associated intent. A missed utterance was not recognized by the bot and didn't activate an intent. Utterances can be aggregated for a bot alias or for a bot version, but not both at the same time. Utterances statistics are not generated under the following conditions:   The childDirected field was set to true when the bot was created.   You are using slot obfuscation with one or more slots.   You opted out of participating in improving Amazon Lex.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAggregatedUtterancesPaginator(
        _ input: ListAggregatedUtterancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAggregatedUtterancesRequest, ListAggregatedUtterancesResponse> {
        return .init(
            input: input,
            command: listAggregatedUtterances,
            inputKey: \ListAggregatedUtterancesRequest.nextToken,
            outputKey: \ListAggregatedUtterancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of aliases for the specified bot.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotAliasesPaginator(
        _ input: ListBotAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotAliasesRequest, ListBotAliasesResponse> {
        return .init(
            input: input,
            command: listBotAliases,
            inputKey: \ListBotAliasesRequest.nextToken,
            outputKey: \ListBotAliasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of locales for the specified bot.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotLocalesPaginator(
        _ input: ListBotLocalesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotLocalesRequest, ListBotLocalesResponse> {
        return .init(
            input: input,
            command: listBotLocales,
            inputKey: \ListBotLocalesRequest.nextToken,
            outputKey: \ListBotLocalesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Get a list of bot recommendations that meet the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotRecommendationsPaginator(
        _ input: ListBotRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotRecommendationsRequest, ListBotRecommendationsResponse> {
        return .init(
            input: input,
            command: listBotRecommendations,
            inputKey: \ListBotRecommendationsRequest.nextToken,
            outputKey: \ListBotRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about all of the versions of a bot. The ListBotVersions operation returns a summary of each version of a bot. For example, if a bot has three numbered versions, the ListBotVersions operation returns for summaries, one for each numbered version and one for the DRAFT version. The ListBotVersions operation always returns at least one version, the DRAFT version.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotVersionsPaginator(
        _ input: ListBotVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotVersionsRequest, ListBotVersionsResponse> {
        return .init(
            input: input,
            command: listBotVersions,
            inputKey: \ListBotVersionsRequest.nextToken,
            outputKey: \ListBotVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of available bots.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotsPaginator(
        _ input: ListBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotsRequest, ListBotsResponse> {
        return .init(
            input: input,
            command: listBots,
            inputKey: \ListBotsRequest.nextToken,
            outputKey: \ListBotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of built-in intents provided by Amazon Lex that you can use in your bot.  To use a built-in intent as a the base for your own intent, include the built-in intent signature in the parentIntentSignature parameter when you call the CreateIntent operation. For more information, see CreateIntent.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBuiltInIntentsPaginator(
        _ input: ListBuiltInIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBuiltInIntentsRequest, ListBuiltInIntentsResponse> {
        return .init(
            input: input,
            command: listBuiltInIntents,
            inputKey: \ListBuiltInIntentsRequest.nextToken,
            outputKey: \ListBuiltInIntentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of built-in slot types that meet the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBuiltInSlotTypesPaginator(
        _ input: ListBuiltInSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBuiltInSlotTypesRequest, ListBuiltInSlotTypesResponse> {
        return .init(
            input: input,
            command: listBuiltInSlotTypes,
            inputKey: \ListBuiltInSlotTypesRequest.nextToken,
            outputKey: \ListBuiltInSlotTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the exports for a bot or bot locale. Exports are kept in the list for 7 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExportsPaginator(
        _ input: ListExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExportsRequest, ListExportsResponse> {
        return .init(
            input: input,
            command: listExports,
            inputKey: \ListExportsRequest.nextToken,
            outputKey: \ListExportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the imports for a bot or bot locale. Imports are kept in the list for 7 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImportsPaginator(
        _ input: ListImportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImportsRequest, ListImportsResponse> {
        return .init(
            input: input,
            command: listImports,
            inputKey: \ListImportsRequest.nextToken,
            outputKey: \ListImportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Get a list of intents that meet the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIntentsPaginator(
        _ input: ListIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIntentsRequest, ListIntentsResponse> {
        return .init(
            input: input,
            command: listIntents,
            inputKey: \ListIntentsRequest.nextToken,
            outputKey: \ListIntentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of recommended intents provided by the bot recommendation that you can use in your bot.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendedIntentsPaginator(
        _ input: ListRecommendedIntentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendedIntentsRequest, ListRecommendedIntentsResponse> {
        return .init(
            input: input,
            command: listRecommendedIntents,
            inputKey: \ListRecommendedIntentsRequest.nextToken,
            outputKey: \ListRecommendedIntentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of slot types that match the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSlotTypesPaginator(
        _ input: ListSlotTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSlotTypesRequest, ListSlotTypesResponse> {
        return .init(
            input: input,
            command: listSlotTypes,
            inputKey: \ListSlotTypesRequest.nextToken,
            outputKey: \ListSlotTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of slots that match the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSlotsPaginator(
        _ input: ListSlotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSlotsRequest, ListSlotsResponse> {
        return .init(
            input: input,
            command: listSlots,
            inputKey: \ListSlotsRequest.nextToken,
            outputKey: \ListSlotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
