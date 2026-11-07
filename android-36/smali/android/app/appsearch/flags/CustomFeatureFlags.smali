.class public Landroid/app/appsearch/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/appsearch/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/appsearch/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    const-string v53, "com.android.appsearch.flags.enable_soft_index_restoration"

    .line 9
    .line 10
    const-string v54, ""

    .line 11
    .line 12
    const-string v2, "com.android.appsearch.flags.app_open_event_indexer_enabled"

    .line 13
    .line 14
    const-string v3, "com.android.appsearch.flags.apps_indexer_enabled"

    .line 15
    .line 16
    const-string v4, "com.android.appsearch.flags.enable_abstract_syntax_trees"

    .line 17
    .line 18
    const-string v5, "com.android.appsearch.flags.enable_additional_builder_copy_constructors"

    .line 19
    .line 20
    const-string v6, "com.android.appsearch.flags.enable_all_package_indexing_on_indexer_update"

    .line 21
    .line 22
    const-string v7, "com.android.appsearch.flags.enable_app_functions"

    .line 23
    .line 24
    const-string v8, "com.android.appsearch.flags.enable_app_functions_schema_parser"

    .line 25
    .line 26
    const-string v9, "com.android.appsearch.flags.enable_app_open_events_indexer_check_prior_attempt"

    .line 27
    .line 28
    const-string v10, "com.android.appsearch.flags.enable_app_search_manage_blob_files"

    .line 29
    .line 30
    const-string v11, "com.android.appsearch.flags.enable_apps_indexer_check_prior_attempt"

    .line 31
    .line 32
    const-string v12, "com.android.appsearch.flags.enable_apps_indexer_incremental_put"

    .line 33
    .line 34
    const-string v13, "com.android.appsearch.flags.enable_batch_put"

    .line 35
    .line 36
    const-string v14, "com.android.appsearch.flags.enable_blob_store"

    .line 37
    .line 38
    const-string v15, "com.android.appsearch.flags.enable_calculate_time_since_last_attempted_optimize"

    .line 39
    .line 40
    const-string v16, "com.android.appsearch.flags.enable_check_contacts_indexer_delta_timestamps"

    .line 41
    .line 42
    const-string v17, "com.android.appsearch.flags.enable_check_contacts_indexer_update_job_params"

    .line 43
    .line 44
    const-string v18, "com.android.appsearch.flags.enable_contacts_index_first_middle_and_last_names"

    .line 45
    .line 46
    const-string v19, "com.android.appsearch.flags.enable_delete_propagation_type"

    .line 47
    .line 48
    const-string v20, "com.android.appsearch.flags.enable_document_limiter_replace_tracking"

    .line 49
    .line 50
    const-string v21, "com.android.appsearch.flags.enable_embedding_match_info"

    .line 51
    .line 52
    const-string v22, "com.android.appsearch.flags.enable_enterprise_empty_batch_result_fix"

    .line 53
    .line 54
    const-string v23, "com.android.appsearch.flags.enable_enterprise_global_search_session"

    .line 55
    .line 56
    const-string v24, "com.android.appsearch.flags.enable_four_hour_min_time_optimize_threshold"

    .line 57
    .line 58
    const-string v25, "com.android.appsearch.flags.enable_generic_document_builder_hidden_methods"

    .line 59
    .line 60
    const-string v26, "com.android.appsearch.flags.enable_generic_document_copy_constructor"

    .line 61
    .line 62
    const-string v27, "com.android.appsearch.flags.enable_generic_document_over_ipc"

    .line 63
    .line 64
    const-string v28, "com.android.appsearch.flags.enable_get_parent_types_and_indexable_nested_properties"

    .line 65
    .line 66
    const-string v29, "com.android.appsearch.flags.enable_grouping_type_per_schema"

    .line 67
    .line 68
    const-string v30, "com.android.appsearch.flags.enable_informational_ranking_expressions"

    .line 69
    .line 70
    const-string v31, "com.android.appsearch.flags.enable_isolated_storage"

    .line 71
    .line 72
    const-string v32, "com.android.appsearch.flags.enable_list_filter_has_property_function"

    .line 73
    .line 74
    const-string v33, "com.android.appsearch.flags.enable_list_filter_match_score_expression_function"

    .line 75
    .line 76
    const-string v34, "com.android.appsearch.flags.enable_marker_file_for_optimize"

    .line 77
    .line 78
    const-string v35, "com.android.appsearch.flags.enable_put_documents_request_add_taken_actions"

    .line 79
    .line 80
    const-string v36, "com.android.appsearch.flags.enable_qualified_id_join_index_v3"

    .line 81
    .line 82
    const-string v37, "com.android.appsearch.flags.enable_recovery_proof_persistence"

    .line 83
    .line 84
    const-string v38, "com.android.appsearch.flags.enable_release_backup_schema_file_if_overlay_present"

    .line 85
    .line 86
    const-string v39, "com.android.appsearch.flags.enable_result_already_exists"

    .line 87
    .line 88
    const-string v40, "com.android.appsearch.flags.enable_result_denied_and_result_rate_limited"

    .line 89
    .line 90
    const-string v41, "com.android.appsearch.flags.enable_safe_parcelable_2"

    .line 91
    .line 92
    const-string v42, "com.android.appsearch.flags.enable_schema_description"

    .line 93
    .line 94
    const-string v43, "com.android.appsearch.flags.enable_schema_embedding_property_config"

    .line 95
    .line 96
    const-string v44, "com.android.appsearch.flags.enable_schema_embedding_quantization"

    .line 97
    .line 98
    const-string v45, "com.android.appsearch.flags.enable_scorable_property"

    .line 99
    .line 100
    const-string v46, "com.android.appsearch.flags.enable_search_result_parent_types"

    .line 101
    .line 102
    const-string v47, "com.android.appsearch.flags.enable_search_spec_filter_document_ids"

    .line 103
    .line 104
    const-string v48, "com.android.appsearch.flags.enable_search_spec_filter_properties"

    .line 105
    .line 106
    const-string v49, "com.android.appsearch.flags.enable_search_spec_search_string_parameters"

    .line 107
    .line 108
    const-string v50, "com.android.appsearch.flags.enable_search_spec_set_search_source_log_tag"

    .line 109
    .line 110
    const-string v51, "com.android.appsearch.flags.enable_set_publicly_visible_schema"

    .line 111
    .line 112
    const-string v52, "com.android.appsearch.flags.enable_set_schema_visible_to_configs"

    .line 113
    .line 114
    filled-new-array/range {v2 .. v54}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, v0, Landroid/app/appsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 126
    .line 127
    move-object/from16 v1, p1

    .line 128
    .line 129
    iput-object v1, v0, Landroid/app/appsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 130
    .line 131
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 1

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method


# virtual methods
.method public blacklist appOpenEventIndexerEnabled()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.app_open_event_indexer_enabled"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist appsIndexerEnabled()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.apps_indexer_enabled"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAbstractSyntaxTrees()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_abstract_syntax_trees"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAdditionalBuilderCopyConstructors()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_additional_builder_copy_constructors"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAllPackageIndexingOnIndexerUpdate()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_all_package_indexing_on_indexer_update"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppFunctions()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_app_functions"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppFunctionsSchemaParser()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_app_functions_schema_parser"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppOpenEventsIndexerCheckPriorAttempt()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_app_open_events_indexer_check_prior_attempt"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppSearchManageBlobFiles()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_app_search_manage_blob_files"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppsIndexerCheckPriorAttempt()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_apps_indexer_check_prior_attempt"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableAppsIndexerIncrementalPut()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_apps_indexer_incremental_put"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableBatchPut()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_batch_put"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableBlobStore()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_blob_store"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableCalculateTimeSinceLastAttemptedOptimize()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_calculate_time_since_last_attempted_optimize"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableCheckContactsIndexerDeltaTimestamps()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_check_contacts_indexer_delta_timestamps"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableCheckContactsIndexerUpdateJobParams()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_check_contacts_indexer_update_job_params"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableContactsIndexFirstMiddleAndLastNames()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_contacts_index_first_middle_and_last_names"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableDeletePropagationType()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_delete_propagation_type"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableDocumentLimiterReplaceTracking()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_document_limiter_replace_tracking"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableEmbeddingMatchInfo()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_embedding_match_info"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableEnterpriseEmptyBatchResultFix()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_enterprise_empty_batch_result_fix"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableEnterpriseGlobalSearchSession()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_enterprise_global_search_session"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableFourHourMinTimeOptimizeThreshold()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_four_hour_min_time_optimize_threshold"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableGenericDocumentBuilderHiddenMethods()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_generic_document_builder_hidden_methods"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableGenericDocumentCopyConstructor()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_generic_document_copy_constructor"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableGenericDocumentOverIpc()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_generic_document_over_ipc"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableGetParentTypesAndIndexableNestedProperties()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_get_parent_types_and_indexable_nested_properties"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableGroupingTypePerSchema()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_grouping_type_per_schema"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableInformationalRankingExpressions()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_informational_ranking_expressions"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableIsolatedStorage()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_isolated_storage"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableListFilterHasPropertyFunction()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_list_filter_has_property_function"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableListFilterMatchScoreExpressionFunction()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_list_filter_match_score_expression_function"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableMarkerFileForOptimize()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_marker_file_for_optimize"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enablePutDocumentsRequestAddTakenActions()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_put_documents_request_add_taken_actions"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableQualifiedIdJoinIndexV3()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_qualified_id_join_index_v3"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableRecoveryProofPersistence()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_recovery_proof_persistence"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableReleaseBackupSchemaFileIfOverlayPresent()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_release_backup_schema_file_if_overlay_present"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableResultAlreadyExists()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_result_already_exists"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableResultDeniedAndResultRateLimited()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_result_denied_and_result_rate_limited"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSafeParcelable2()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_safe_parcelable_2"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSchemaDescription()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_schema_description"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSchemaEmbeddingPropertyConfig()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_schema_embedding_property_config"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSchemaEmbeddingQuantization()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_schema_embedding_quantization"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableScorableProperty()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_scorable_property"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSearchResultParentTypes()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_search_result_parent_types"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSearchSpecFilterDocumentIds()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_search_spec_filter_document_ids"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSearchSpecFilterProperties()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_search_spec_filter_properties"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSearchSpecSearchStringParameters()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_search_spec_search_string_parameters"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSearchSpecSetSearchSourceLogTag()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_search_spec_set_search_source_log_tag"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSetPubliclyVisibleSchema()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_set_publicly_visible_schema"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSetSchemaVisibleToConfigs()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_set_schema_visible_to_configs"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist enableSoftIndexRestoration()Z
    .registers 3

    .line 1
    new-instance v0, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/app/appsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "com.android.appsearch.flags.enable_soft_index_restoration"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/appsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v51, "com.android.appsearch.flags.enable_set_schema_visible_to_configs"

    .line 2
    .line 3
    const-string v52, "com.android.appsearch.flags.enable_soft_index_restoration"

    .line 4
    .line 5
    const-string v1, "com.android.appsearch.flags.app_open_event_indexer_enabled"

    .line 6
    .line 7
    const-string v2, "com.android.appsearch.flags.apps_indexer_enabled"

    .line 8
    .line 9
    const-string v3, "com.android.appsearch.flags.enable_abstract_syntax_trees"

    .line 10
    .line 11
    const-string v4, "com.android.appsearch.flags.enable_additional_builder_copy_constructors"

    .line 12
    .line 13
    const-string v5, "com.android.appsearch.flags.enable_all_package_indexing_on_indexer_update"

    .line 14
    .line 15
    const-string v6, "com.android.appsearch.flags.enable_app_functions"

    .line 16
    .line 17
    const-string v7, "com.android.appsearch.flags.enable_app_functions_schema_parser"

    .line 18
    .line 19
    const-string v8, "com.android.appsearch.flags.enable_app_open_events_indexer_check_prior_attempt"

    .line 20
    .line 21
    const-string v9, "com.android.appsearch.flags.enable_app_search_manage_blob_files"

    .line 22
    .line 23
    const-string v10, "com.android.appsearch.flags.enable_apps_indexer_check_prior_attempt"

    .line 24
    .line 25
    const-string v11, "com.android.appsearch.flags.enable_apps_indexer_incremental_put"

    .line 26
    .line 27
    const-string v12, "com.android.appsearch.flags.enable_batch_put"

    .line 28
    .line 29
    const-string v13, "com.android.appsearch.flags.enable_blob_store"

    .line 30
    .line 31
    const-string v14, "com.android.appsearch.flags.enable_calculate_time_since_last_attempted_optimize"

    .line 32
    .line 33
    const-string v15, "com.android.appsearch.flags.enable_check_contacts_indexer_delta_timestamps"

    .line 34
    .line 35
    const-string v16, "com.android.appsearch.flags.enable_check_contacts_indexer_update_job_params"

    .line 36
    .line 37
    const-string v17, "com.android.appsearch.flags.enable_contacts_index_first_middle_and_last_names"

    .line 38
    .line 39
    const-string v18, "com.android.appsearch.flags.enable_delete_propagation_type"

    .line 40
    .line 41
    const-string v19, "com.android.appsearch.flags.enable_document_limiter_replace_tracking"

    .line 42
    .line 43
    const-string v20, "com.android.appsearch.flags.enable_embedding_match_info"

    .line 44
    .line 45
    const-string v21, "com.android.appsearch.flags.enable_enterprise_empty_batch_result_fix"

    .line 46
    .line 47
    const-string v22, "com.android.appsearch.flags.enable_enterprise_global_search_session"

    .line 48
    .line 49
    const-string v23, "com.android.appsearch.flags.enable_four_hour_min_time_optimize_threshold"

    .line 50
    .line 51
    const-string v24, "com.android.appsearch.flags.enable_generic_document_builder_hidden_methods"

    .line 52
    .line 53
    const-string v25, "com.android.appsearch.flags.enable_generic_document_copy_constructor"

    .line 54
    .line 55
    const-string v26, "com.android.appsearch.flags.enable_generic_document_over_ipc"

    .line 56
    .line 57
    const-string v27, "com.android.appsearch.flags.enable_get_parent_types_and_indexable_nested_properties"

    .line 58
    .line 59
    const-string v28, "com.android.appsearch.flags.enable_grouping_type_per_schema"

    .line 60
    .line 61
    const-string v29, "com.android.appsearch.flags.enable_informational_ranking_expressions"

    .line 62
    .line 63
    const-string v30, "com.android.appsearch.flags.enable_isolated_storage"

    .line 64
    .line 65
    const-string v31, "com.android.appsearch.flags.enable_list_filter_has_property_function"

    .line 66
    .line 67
    const-string v32, "com.android.appsearch.flags.enable_list_filter_match_score_expression_function"

    .line 68
    .line 69
    const-string v33, "com.android.appsearch.flags.enable_marker_file_for_optimize"

    .line 70
    .line 71
    const-string v34, "com.android.appsearch.flags.enable_put_documents_request_add_taken_actions"

    .line 72
    .line 73
    const-string v35, "com.android.appsearch.flags.enable_qualified_id_join_index_v3"

    .line 74
    .line 75
    const-string v36, "com.android.appsearch.flags.enable_recovery_proof_persistence"

    .line 76
    .line 77
    const-string v37, "com.android.appsearch.flags.enable_release_backup_schema_file_if_overlay_present"

    .line 78
    .line 79
    const-string v38, "com.android.appsearch.flags.enable_result_already_exists"

    .line 80
    .line 81
    const-string v39, "com.android.appsearch.flags.enable_result_denied_and_result_rate_limited"

    .line 82
    .line 83
    const-string v40, "com.android.appsearch.flags.enable_safe_parcelable_2"

    .line 84
    .line 85
    const-string v41, "com.android.appsearch.flags.enable_schema_description"

    .line 86
    .line 87
    const-string v42, "com.android.appsearch.flags.enable_schema_embedding_property_config"

    .line 88
    .line 89
    const-string v43, "com.android.appsearch.flags.enable_schema_embedding_quantization"

    .line 90
    .line 91
    const-string v44, "com.android.appsearch.flags.enable_scorable_property"

    .line 92
    .line 93
    const-string v45, "com.android.appsearch.flags.enable_search_result_parent_types"

    .line 94
    .line 95
    const-string v46, "com.android.appsearch.flags.enable_search_spec_filter_document_ids"

    .line 96
    .line 97
    const-string v47, "com.android.appsearch.flags.enable_search_spec_filter_properties"

    .line 98
    .line 99
    const-string v48, "com.android.appsearch.flags.enable_search_spec_search_string_parameters"

    .line 100
    .line 101
    const-string v49, "com.android.appsearch.flags.enable_search_spec_set_search_source_log_tag"

    .line 102
    .line 103
    const-string v50, "com.android.appsearch.flags.enable_set_publicly_visible_schema"

    .line 104
    .line 105
    filled-new-array/range {v1 .. v52}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/appsearch/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method
