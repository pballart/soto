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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension ServiceCatalog {
    ///  Returns a summary of each of the portfolio shares that were created for the specified portfolio. You can use this API to determine which accounts or organizational nodes this portfolio have been shared, whether the recipient entity has imported the share, and whether TagOptions are included with the share. The PortfolioId and Type parameters are both required.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describePortfolioSharesPaginator(
        _ input: DescribePortfolioSharesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribePortfolioSharesInput, DescribePortfolioSharesOutput> {
        return .init(
            input: input,
            command: describePortfolioShares,
            inputKey: \DescribePortfolioSharesInput.pageToken,
            outputKey: \DescribePortfolioSharesOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API takes either a ProvisonedProductId or a ProvisionedProductName, along with a list of one or more output keys, and responds with the key/value pairs of those outputs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getProvisionedProductOutputsPaginator(
        _ input: GetProvisionedProductOutputsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetProvisionedProductOutputsInput, GetProvisionedProductOutputsOutput> {
        return .init(
            input: input,
            command: getProvisionedProductOutputs,
            inputKey: \GetProvisionedProductOutputsInput.pageToken,
            outputKey: \GetProvisionedProductOutputsOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all portfolios for which sharing was accepted by this account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAcceptedPortfolioSharesPaginator(
        _ input: ListAcceptedPortfolioSharesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAcceptedPortfolioSharesInput, ListAcceptedPortfolioSharesOutput> {
        return .init(
            input: input,
            command: listAcceptedPortfolioShares,
            inputKey: \ListAcceptedPortfolioSharesInput.pageToken,
            outputKey: \ListAcceptedPortfolioSharesOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the budgets associated to the specified resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBudgetsForResourcePaginator(
        _ input: ListBudgetsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBudgetsForResourceInput, ListBudgetsForResourceOutput> {
        return .init(
            input: input,
            command: listBudgetsForResource,
            inputKey: \ListBudgetsForResourceInput.pageToken,
            outputKey: \ListBudgetsForResourceOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the constraints for the specified portfolio and product.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConstraintsForPortfolioPaginator(
        _ input: ListConstraintsForPortfolioInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConstraintsForPortfolioInput, ListConstraintsForPortfolioOutput> {
        return .init(
            input: input,
            command: listConstraintsForPortfolio,
            inputKey: \ListConstraintsForPortfolioInput.pageToken,
            outputKey: \ListConstraintsForPortfolioOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLaunchPathsPaginator(
        _ input: ListLaunchPathsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLaunchPathsInput, ListLaunchPathsOutput> {
        return .init(
            input: input,
            command: listLaunchPaths,
            inputKey: \ListLaunchPathsInput.pageToken,
            outputKey: \ListLaunchPathsOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the organization nodes that have access to the specified portfolio. This API can only be called by the management account in the organization or by a delegated admin. If a delegated admin is de-registered, they can no longer perform this operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationPortfolioAccessPaginator(
        _ input: ListOrganizationPortfolioAccessInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationPortfolioAccessInput, ListOrganizationPortfolioAccessOutput> {
        return .init(
            input: input,
            command: listOrganizationPortfolioAccess,
            inputKey: \ListOrganizationPortfolioAccessInput.pageToken,
            outputKey: \ListOrganizationPortfolioAccessOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the account IDs that have access to the specified portfolio. A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPortfolioAccessPaginator(
        _ input: ListPortfolioAccessInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPortfolioAccessInput, ListPortfolioAccessOutput> {
        return .init(
            input: input,
            command: listPortfolioAccess,
            inputKey: \ListPortfolioAccessInput.pageToken,
            outputKey: \ListPortfolioAccessOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all portfolios in the catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPortfoliosPaginator(
        _ input: ListPortfoliosInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPortfoliosInput, ListPortfoliosOutput> {
        return .init(
            input: input,
            command: listPortfolios,
            inputKey: \ListPortfoliosInput.pageToken,
            outputKey: \ListPortfoliosOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all portfolios that the specified product is associated with.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPortfoliosForProductPaginator(
        _ input: ListPortfoliosForProductInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPortfoliosForProductInput, ListPortfoliosForProductOutput> {
        return .init(
            input: input,
            command: listPortfoliosForProduct,
            inputKey: \ListPortfoliosForProductInput.pageToken,
            outputKey: \ListPortfoliosForProductOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all principal ARNs associated with the specified portfolio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPrincipalsForPortfolioPaginator(
        _ input: ListPrincipalsForPortfolioInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPrincipalsForPortfolioInput, ListPrincipalsForPortfolioOutput> {
        return .init(
            input: input,
            command: listPrincipalsForPortfolio,
            inputKey: \ListPrincipalsForPortfolioInput.pageToken,
            outputKey: \ListPrincipalsForPortfolioOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified self-service action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProvisioningArtifactsForServiceActionPaginator(
        _ input: ListProvisioningArtifactsForServiceActionInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProvisioningArtifactsForServiceActionInput, ListProvisioningArtifactsForServiceActionOutput> {
        return .init(
            input: input,
            command: listProvisioningArtifactsForServiceAction,
            inputKey: \ListProvisioningArtifactsForServiceActionInput.pageToken,
            outputKey: \ListProvisioningArtifactsForServiceActionOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resources associated with the specified TagOption.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourcesForTagOptionPaginator(
        _ input: ListResourcesForTagOptionInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourcesForTagOptionInput, ListResourcesForTagOptionOutput> {
        return .init(
            input: input,
            command: listResourcesForTagOption,
            inputKey: \ListResourcesForTagOptionInput.pageToken,
            outputKey: \ListResourcesForTagOptionOutput.pageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all self-service actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceActionsPaginator(
        _ input: ListServiceActionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceActionsInput, ListServiceActionsOutput> {
        return .init(
            input: input,
            command: listServiceActions,
            inputKey: \ListServiceActionsInput.pageToken,
            outputKey: \ListServiceActionsOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceActionsForProvisioningArtifactPaginator(
        _ input: ListServiceActionsForProvisioningArtifactInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceActionsForProvisioningArtifactInput, ListServiceActionsForProvisioningArtifactOutput> {
        return .init(
            input: input,
            command: listServiceActionsForProvisioningArtifact,
            inputKey: \ListServiceActionsForProvisioningArtifactInput.pageToken,
            outputKey: \ListServiceActionsForProvisioningArtifactOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the specified TagOptions or all TagOptions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagOptionsPaginator(
        _ input: ListTagOptionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagOptionsInput, ListTagOptionsOutput> {
        return .init(
            input: input,
            command: listTagOptions,
            inputKey: \ListTagOptionsInput.pageToken,
            outputKey: \ListTagOptionsOutput.pageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the products to which the caller has access.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchProductsPaginator(
        _ input: SearchProductsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchProductsInput, SearchProductsOutput> {
        return .init(
            input: input,
            command: searchProducts,
            inputKey: \SearchProductsInput.pageToken,
            outputKey: \SearchProductsOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the products for the specified portfolio or all products.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchProductsAsAdminPaginator(
        _ input: SearchProductsAsAdminInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchProductsAsAdminInput, SearchProductsAsAdminOutput> {
        return .init(
            input: input,
            command: searchProductsAsAdmin,
            inputKey: \SearchProductsAsAdminInput.pageToken,
            outputKey: \SearchProductsAsAdminOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the provisioned products that meet the specified criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchProvisionedProductsPaginator(
        _ input: SearchProvisionedProductsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchProvisionedProductsInput, SearchProvisionedProductsOutput> {
        return .init(
            input: input,
            command: searchProvisionedProducts,
            inputKey: \SearchProvisionedProductsInput.pageToken,
            outputKey: \SearchProvisionedProductsOutput.nextPageToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
