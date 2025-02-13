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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Transcribe {
    // MARK: Async API Calls

    /// Creates a new Call Analytics category. All categories are automatically applied to your Call Analytics jobs. Note that in order to apply  your categories to your jobs, you must create them before submitting your job request, as  categories cannot be applied retroactively. Call Analytics categories are composed of rules. For each category, you must create between 1 and 20 rules. Rules can include these parameters: ,  , , and  . To update an existing category, see .         To learn more about:   Call Analytics categories, see Creating categories    Using rules, see Rule criteria and refer to the  data type   Call Analytics, see Analyzing call center audio with Call  Analytics
    public func createCallAnalyticsCategory(_ input: CreateCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCallAnalyticsCategoryResponse {
        return try await self.client.execute(operation: "CreateCallAnalyticsCategory", path: "/callanalyticscategories/{CategoryName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom language model. When creating a new language model, you must specify:   If you want a Wideband (audio sample rates over 16,000 Hz) or Narrowband (audio sample rates under 16,000 Hz) base model   The location of your training and tuning files (this must be an Amazon S3 URI)   The language of your model   A unique name for your model   For more information, see Custom language models.
    public func createLanguageModel(_ input: CreateLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLanguageModelResponse {
        return try await self.client.execute(operation: "CreateLanguageModel", path: "/languagemodels/{ModelName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom medical vocabulary. Prior to creating a new medical vocabulary, you must first upload a text file that contains your new entries, phrases, and terms into an Amazon S3 bucket. Note that this differs from  , where you can include a list of terms within your request using the Phrases flag; CreateMedicalVocabulary  does not support the Phrases flag. Each language has a character set that contains all allowed characters for that specific  language. If you use unsupported characters, your vocabulary request fails. Refer to  Character Sets for  Custom Vocabularies to get the character set for your language. For more information, see Creating a custom vocabulary.
    public func createMedicalVocabulary(_ input: CreateMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMedicalVocabularyResponse {
        return try await self.client.execute(operation: "CreateMedicalVocabulary", path: "/medicalvocabularies/{VocabularyName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom vocabulary. When creating a new vocabulary, you can either upload a text file that contains your new  entries, phrases, and terms into an Amazon S3 bucket and include the URI in your request, or  you can include a list of terms directly in your request using the Phrases flag.   Each language has a character set that contains all allowed characters for that specific  language. If you use unsupported characters, your vocabulary request fails. Refer to  Character Sets for  Custom Vocabularies to get the character set for your language. For more information, see Creating a custom  vocabulary.
    public func createVocabulary(_ input: CreateVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVocabularyResponse {
        return try await self.client.execute(operation: "CreateVocabulary", path: "/vocabularies/{VocabularyName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new custom vocabulary filter. You can use vocabulary filters to mask, delete, or flag specific words from your transcript.  Vocabulary filters are commonly used to mask profanity in transcripts. Each language has a character set that contains all allowed characters for that specific  language. If you use unsupported characters, your vocabulary filter request fails. Refer to  Character Sets for  Custom Vocabularies to get the character set for your language. For more information, see Using vocabulary filtering with unwanted words.
    public func createVocabularyFilter(_ input: CreateVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVocabularyFilterResponse {
        return try await self.client.execute(operation: "CreateVocabularyFilter", path: "/vocabularyFilters/{VocabularyFilterName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Call Analytics category. To use this operation, specify the name of the category  you want to delete using CategoryName. Category names are case sensitive.
    public func deleteCallAnalyticsCategory(_ input: DeleteCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCallAnalyticsCategoryResponse {
        return try await self.client.execute(operation: "DeleteCallAnalyticsCategory", path: "/callanalyticscategories/{CategoryName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Call Analytics job. To use this operation, specify the name of the job you want to  delete using CallAnalyticsJobName. Job names are case sensitive.
    public func deleteCallAnalyticsJob(_ input: DeleteCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCallAnalyticsJobResponse {
        return try await self.client.execute(operation: "DeleteCallAnalyticsJob", path: "/callanalyticsjobs/{CallAnalyticsJobName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom language model. To use this operation, specify the name of the language  model you want to delete using ModelName. Language model names are case sensitive.
    public func deleteLanguageModel(_ input: DeleteLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLanguageModel", path: "/languagemodels/{ModelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a medical transcription job. To use this operation, specify the name of the job you  want to delete using MedicalTranscriptionJobName. Job names are case sensitive.
    public func deleteMedicalTranscriptionJob(_ input: DeleteMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteMedicalTranscriptionJob", path: "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom medical vocabulary. To use this operation, specify the name of the vocabulary you want to delete using VocabularyName. Vocabulary names are case sensitive.
    public func deleteMedicalVocabulary(_ input: DeleteMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteMedicalVocabulary", path: "/medicalvocabularies/{VocabularyName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a transcription job. To use this operation, specify the name of the job you want to delete using TranscriptionJobName. Job names are case sensitive.
    public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteTranscriptionJob", path: "/transcriptionjobs/{TranscriptionJobName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom vocabulary. To use this operation, specify the name of the vocabulary you want to delete using VocabularyName. Vocabulary names are case sensitive.
    public func deleteVocabulary(_ input: DeleteVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteVocabulary", path: "/vocabularies/{VocabularyName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a vocabulary filter. To use this operation, specify the name of the vocabulary filter you want to delete using VocabularyFilterName. Vocabulary filter names are  case sensitive.
    public func deleteVocabularyFilter(_ input: DeleteVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteVocabularyFilter", path: "/vocabularyFilters/{VocabularyFilterName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified custom language model. This operation also shows if the base language model you used to create your custom language model has been updated. If Amazon Transcribe has updated the base model, you can create a new custom language model using the updated base model. If you tried to create a new custom language model and the request wasn't successful, you can use DescribeLanguageModel to help identify the reason for this  failure. To get a list of your custom language models, use the  operation.
    public func describeLanguageModel(_ input: DescribeLanguageModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLanguageModelResponse {
        return try await self.client.execute(operation: "DescribeLanguageModel", path: "/languagemodels/{ModelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified Call Analytics category. To get a list of your Call Analytics categories, use the  operation.
    public func getCallAnalyticsCategory(_ input: GetCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCallAnalyticsCategoryResponse {
        return try await self.client.execute(operation: "GetCallAnalyticsCategory", path: "/callanalyticscategories/{CategoryName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified Call Analytics job.  To view the job's status, refer to CallAnalyticsJobStatus. If the status is COMPLETED, the job is finished. You can find your completed transcript at  the URI specified in TranscriptFileUri. If the status is FAILED,  FailureReason provides details on why your transcription job failed. If you enabled personally identifiable information (PII) redaction, the redacted transcript appears at the location specified in RedactedTranscriptFileUri. If you chose to redact the audio in your media file, you can find your redacted media file at the location specified in RedactedMediaFileUri. To get a list of your Call Analytics jobs, use the   operation.
    public func getCallAnalyticsJob(_ input: GetCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCallAnalyticsJobResponse {
        return try await self.client.execute(operation: "GetCallAnalyticsJob", path: "/callanalyticsjobs/{CallAnalyticsJobName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified medical transcription job.  To view the status of the specified medical transcription job, check the  TranscriptionJobStatus field. If the status is COMPLETED, the  job is finished and you can find the results at the location specified in  TranscriptFileUri. If the status is FAILED,  FailureReason provides details on why your transcription job failed. To get a list of your medical transcription jobs, use the  operation.
    public func getMedicalTranscriptionJob(_ input: GetMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMedicalTranscriptionJobResponse {
        return try await self.client.execute(operation: "GetMedicalTranscriptionJob", path: "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified custom medical vocabulary.  To view the status of the specified medical vocabulary, check the  VocabularyState field. If the status is READY, your vocabulary is available to use. If the status is FAILED, FailureReason provides  details on why your vocabulary failed.  To get a list of your custom medical vocabularies, use the  operation.
    public func getMedicalVocabulary(_ input: GetMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMedicalVocabularyResponse {
        return try await self.client.execute(operation: "GetMedicalVocabulary", path: "/medicalvocabularies/{VocabularyName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified transcription job.          To view the status of the specified transcription job, check the  TranscriptionJobStatus field. If the status is COMPLETED, the  job is finished and you can find the results at the location specified in TranscriptFileUri. If the status is FAILED,  FailureReason provides details on why your transcription job failed. If you enabled content redaction, the redacted transcript can be found at the location specified in RedactedTranscriptFileUri. To get a list of your transcription jobs, use the   operation.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTranscriptionJobResponse {
        return try await self.client.execute(operation: "GetTranscriptionJob", path: "/transcriptionjobs/{TranscriptionJobName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified custom vocabulary.             To view the status of the specified vocabulary, check the VocabularyState  field. If the status is READY, your vocabulary is available to use. If the status is FAILED, FailureReason provides details on why your  vocabulary failed.      To get a list of your custom vocabularies, use the   operation.
    public func getVocabulary(_ input: GetVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVocabularyResponse {
        return try await self.client.execute(operation: "GetVocabulary", path: "/vocabularies/{VocabularyName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about the specified custom vocabulary filter.    To view the status of the specified vocabulary filter, check the VocabularyState  field. If the status is READY, your vocabulary is available to use. If the status is  FAILED, FailureReason provides details on why your vocabulary filter failed.    To get a list of your custom vocabulary filters, use the  operation.
    public func getVocabularyFilter(_ input: GetVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVocabularyFilterResponse {
        return try await self.client.execute(operation: "GetVocabularyFilter", path: "/vocabularyFilters/{VocabularyFilterName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of Call Analytics categories, including all rules that make up each category. To get detailed information about a specific Call Analytics category, use the  operation.
    public func listCallAnalyticsCategories(_ input: ListCallAnalyticsCategoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCallAnalyticsCategoriesResponse {
        return try await self.client.execute(operation: "ListCallAnalyticsCategories", path: "/callanalyticscategories", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of Call Analytics jobs that match the specified criteria. If no criteria are  specified, all Call Analytics jobs are returned.  To get detailed information about a specific Call Analytics job, use the  operation.
    public func listCallAnalyticsJobs(_ input: ListCallAnalyticsJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCallAnalyticsJobsResponse {
        return try await self.client.execute(operation: "ListCallAnalyticsJobs", path: "/callanalyticsjobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of custom language models that match the specified criteria. If no criteria are specified, all language models are returned. To get detailed information about a specific custom language model, use the  operation.
    public func listLanguageModels(_ input: ListLanguageModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLanguageModelsResponse {
        return try await self.client.execute(operation: "ListLanguageModels", path: "/languagemodels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of medical transcription jobs that match the specified criteria. If no criteria are  specified, all medical transcription jobs are returned.   To get detailed information about a specific medical transcription job, use the  operation.
    public func listMedicalTranscriptionJobs(_ input: ListMedicalTranscriptionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMedicalTranscriptionJobsResponse {
        return try await self.client.execute(operation: "ListMedicalTranscriptionJobs", path: "/medicaltranscriptionjobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of custom medical vocabularies that match the specified criteria. If no  criteria are specified, all custom medical vocabularies are returned.  To get detailed information about a specific custom medical vocabulary, use the  operation.
    public func listMedicalVocabularies(_ input: ListMedicalVocabulariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMedicalVocabulariesResponse {
        return try await self.client.execute(operation: "ListMedicalVocabularies", path: "/medicalvocabularies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with the specified transcription job, vocabulary, model, or  resource.  To learn more about using tags with Amazon Transcribe, refer to Tagging resources.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of transcription jobs that match the specified criteria. If no criteria are  specified, all transcription jobs are returned.       To get detailed information about a specific transcription job, use the  operation.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTranscriptionJobsResponse {
        return try await self.client.execute(operation: "ListTranscriptionJobs", path: "/transcriptionjobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of custom vocabularies that match the specified criteria. If no criteria are specified, all custom vocabularies are returned.     To get detailed information about a specific custom vocabulary, use the  operation.
    public func listVocabularies(_ input: ListVocabulariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVocabulariesResponse {
        return try await self.client.execute(operation: "ListVocabularies", path: "/vocabularies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of custom vocabulary filters that match the specified criteria. If no criteria are specified, all custom vocabularies are returned.      To get detailed information about a specific custom vocabulary filter, use the  operation.
    public func listVocabularyFilters(_ input: ListVocabularyFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVocabularyFiltersResponse {
        return try await self.client.execute(operation: "ListVocabularyFilters", path: "/vocabularyFilters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transcribes the audio from a customer service call and applies any additional Request  Parameters you choose to include in your request. In addition to many of the standard transcription features, Call Analytics provides you with  call characteristics, call summarization, speaker sentiment, and optional redaction of your text  transcript and your audio file. You can also apply custom categories to flag specified conditions. To learn more about these features and insights, refer to Analyzing call center audio with Call  Analytics. If you want to apply categories to your Call Analytics job, you must create them before submitting your job request. Categories cannot be retroactively applied to a job. To create a new category, use the  operation. To learn more about Call Analytics categories, see Creating  categories.   To make a StartCallAnalyticsJob request, you must first upload your media file  into an Amazon S3 bucket; you can then specify the Amazon S3 location of the file  using the Media parameter. You must include the following parameters in your StartCallAnalyticsJob  request:    region: The Amazon Web Services Region where you are making your request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to Amazon Transcribe  endpoints and quotas.    CallAnalyticsJobName: A custom name you create for your transcription job that is unique within your Amazon Web Services account.    DataAccessRoleArn: The Amazon Resource Name (ARN) of an IAM role that has permissions to access the Amazon S3 bucket that contains your input files.    Media (MediaFileUri or RedactedMediaFileUri): The Amazon S3 location of your media file.    With Call Analytics, you can redact the audio contained in your media file by including  RedactedMediaFileUri, instead of MediaFileUri, to specify the  location of your input audio. If you choose to redact your audio, you can find your redacted  media at the location specified in the RedactedMediaFileUri field of your  response.
    public func startCallAnalyticsJob(_ input: StartCallAnalyticsJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCallAnalyticsJobResponse {
        return try await self.client.execute(operation: "StartCallAnalyticsJob", path: "/callanalyticsjobs/{CallAnalyticsJobName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transcribes the audio from a medical dictation or conversation and applies any additional  Request Parameters you choose to include in your request.         In addition to many of the standard transcription features, Amazon Transcribe Medical provides you with a robust medical vocabulary and, optionally, content identification, which adds flags to  personal health information (PHI). To learn more about these features, refer to  How  Amazon Transcribe Medical works. To make a StartMedicalTranscriptionJob request, you must first upload your media file into an Amazon S3 bucket; you can then specify the S3 location of the file using the  Media parameter. You must include the following parameters in your StartMedicalTranscriptionJob  request:    region: The Amazon Web Services Region where you are making your request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to Amazon Transcribe  endpoints and quotas.    MedicalTranscriptionJobName: A custom name you create for your transcription job that is unique within your Amazon Web Services account.    Media (MediaFileUri): The Amazon S3 location of  your media file.    LanguageCode: This must be en-US.    OutputBucketName: The Amazon S3 bucket where you want  your transcript stored. If you want your output stored in a sub-folder of this bucket, you must  also include OutputKey.    Specialty: This must be PRIMARYCARE.    Type: Choose whether your audio is a conversation or a dictation.
    public func startMedicalTranscriptionJob(_ input: StartMedicalTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMedicalTranscriptionJobResponse {
        return try await self.client.execute(operation: "StartMedicalTranscriptionJob", path: "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transcribes the audio from a media file and applies any additional Request Parameters you  choose to include in your request.  To make a StartTranscriptionJob request, you must first upload your media file  into an Amazon S3 bucket; you can then specify the Amazon S3 location of the file  using the Media parameter. You must include the following parameters in your StartTranscriptionJob  request:    region: The Amazon Web Services Region where you are making your request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to Amazon Transcribe  endpoints and quotas.    TranscriptionJobName: A custom name you create for your transcription  job that is unique within your Amazon Web Services account.    Media (MediaFileUri): The Amazon S3 location of  your media file.   One of LanguageCode, IdentifyLanguage, or IdentifyMultipleLanguages: If you know the language of your media file,  specify it using the LanguageCode parameter; you can find all valid language codes in the Supported languages table.  If you don't know the languages spoken in your media, use either  IdentifyLanguage or IdentifyMultipleLanguages and let  Amazon Transcribe identify the languages for you.
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTranscriptionJobResponse {
        return try await self.client.execute(operation: "StartTranscriptionJob", path: "/transcriptionjobs/{TranscriptionJobName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more custom tags, each in the form of a key:value pair, to the specified  resource. To learn more about using tags with Amazon Transcribe, refer to Tagging resources.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified Amazon Transcribe resource.     If you include UntagResource in your request, you must also include   ResourceArn and TagKeys.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified Call Analytics category with new rules. Note that the UpdateCallAnalyticsCategory operation overwrites all existing rules contained in  the specified category. You cannot append additional rules onto an existing category. To create a new category, see .
    public func updateCallAnalyticsCategory(_ input: UpdateCallAnalyticsCategoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCallAnalyticsCategoryResponse {
        return try await self.client.execute(operation: "UpdateCallAnalyticsCategory", path: "/callanalyticscategories/{CategoryName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing custom medical vocabulary with new values. This operation overwrites all existing information with your new values; you cannot append new terms onto an existing vocabulary.
    public func updateMedicalVocabulary(_ input: UpdateMedicalVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMedicalVocabularyResponse {
        return try await self.client.execute(operation: "UpdateMedicalVocabulary", path: "/medicalvocabularies/{VocabularyName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing custom vocabulary with new values. This operation overwrites all existing information with your new values; you cannot append new terms onto an existing vocabulary.
    public func updateVocabulary(_ input: UpdateVocabularyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVocabularyResponse {
        return try await self.client.execute(operation: "UpdateVocabulary", path: "/vocabularies/{VocabularyName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing custom vocabulary filter with a new list of words. The new list you provide overwrites all previous entries; you cannot append new terms onto an existing vocabulary  filter.
    public func updateVocabularyFilter(_ input: UpdateVocabularyFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVocabularyFilterResponse {
        return try await self.client.execute(operation: "UpdateVocabularyFilter", path: "/vocabularyFilters/{VocabularyFilterName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
