.class public Lcom/android/adservices/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/adservices/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/adservices/flags/FeatureFlags;",
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
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/adservices/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/adservices/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v1, Ljava/util/HashSet;

    const-string v23, "com.android.adservices.flags.topics_encryption_enabled"

    const-string v24, ""

    const-string v2, "com.android.adservices.flags.ad_id_cache_enabled"

    const-string v3, "com.android.adservices.flags.adext_data_service_apis_enabled"

    const-string v4, "com.android.adservices.flags.adservices_enable_per_module_overrides_api"

    const-string v5, "com.android.adservices.flags.adservices_enablement_check_enabled"

    const-string v6, "com.android.adservices.flags.adservices_outcomereceiver_r_api_deprecated"

    const-string v7, "com.android.adservices.flags.adservices_outcomereceiver_r_api_enabled"

    const-string v8, "com.android.adservices.flags.enable_adservices_api_enabled"

    const-string v9, "com.android.adservices.flags.fledge_ad_selection_filtering_enabled"

    const-string v10, "com.android.adservices.flags.fledge_auction_server_get_ad_selection_data_id_enabled"

    const-string v11, "com.android.adservices.flags.fledge_custom_audience_auction_server_request_flags_enabled"

    const-string v12, "com.android.adservices.flags.fledge_enable_custom_audience_component_ads"

    const-string v13, "com.android.adservices.flags.fledge_enable_report_event_for_component_seller"

    const-string v14, "com.android.adservices.flags.fledge_enable_schedule_custom_audience_default_partial_custom_audiences_constructor"

    const-string v15, "com.android.adservices.flags.fledge_enable_winning_seller_id_in_ad_selection_outcome"

    const-string v16, "com.android.adservices.flags.fledge_get_ad_selection_data_seller_configuration_enabled"

    const-string v17, "com.android.adservices.flags.fledge_schedule_custom_audience_update_enabled"

    const-string v18, "com.android.adservices.flags.fledge_server_auction_multi_cloud_enabled"

    const-string v19, "com.android.adservices.flags.get_adservices_common_states_api_enabled"

    const-string v20, "com.android.adservices.flags.protected_signals_enabled"

    const-string v21, "com.android.adservices.flags.sdksandbox_invalidate_effective_target_sdk_version_cache"

    const-string v22, "com.android.adservices.flags.sdksandbox_use_effective_target_sdk_version_for_restrictions"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/adservices/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/adservices/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist adIdCacheEnabled()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.adservices.flags.ad_id_cache_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adextDataServiceApisEnabled()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.adservices.flags.adext_data_service_apis_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adservicesEnablePerModuleOverridesApi()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.adservices.flags.adservices_enable_per_module_overrides_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adservicesEnablementCheckEnabled()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.adservices.flags.adservices_enablement_check_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adservicesOutcomereceiverRApiDeprecated()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.adservices.flags.adservices_outcomereceiver_r_api_deprecated"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist adservicesOutcomereceiverRApiEnabled()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.adservices.flags.adservices_outcomereceiver_r_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAdservicesApiEnabled()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.adservices.flags.enable_adservices_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeAdSelectionFilteringEnabled()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_ad_selection_filtering_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeAuctionServerGetAdSelectionDataIdEnabled()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_auction_server_get_ad_selection_data_id_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeCustomAudienceAuctionServerRequestFlagsEnabled()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_custom_audience_auction_server_request_flags_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeEnableCustomAudienceComponentAds()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_enable_custom_audience_component_ads"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeEnableReportEventForComponentSeller()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_enable_report_event_for_component_seller"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeEnableScheduleCustomAudienceDefaultPartialCustomAudiencesConstructor()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_enable_schedule_custom_audience_default_partial_custom_audiences_constructor"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeEnableWinningSellerIdInAdSelectionOutcome()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_enable_winning_seller_id_in_ad_selection_outcome"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeGetAdSelectionDataSellerConfigurationEnabled()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_get_ad_selection_data_seller_configuration_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeScheduleCustomAudienceUpdateEnabled()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_schedule_custom_audience_update_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fledgeServerAuctionMultiCloudEnabled()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.adservices.flags.fledge_server_auction_multi_cloud_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist getAdservicesCommonStatesApiEnabled()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.adservices.flags.get_adservices_common_states_api_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    const-string v21, "com.android.adservices.flags.sdksandbox_use_effective_target_sdk_version_for_restrictions"

    const-string v22, "com.android.adservices.flags.topics_encryption_enabled"

    const-string v1, "com.android.adservices.flags.ad_id_cache_enabled"

    const-string v2, "com.android.adservices.flags.adext_data_service_apis_enabled"

    const-string v3, "com.android.adservices.flags.adservices_enable_per_module_overrides_api"

    const-string v4, "com.android.adservices.flags.adservices_enablement_check_enabled"

    const-string v5, "com.android.adservices.flags.adservices_outcomereceiver_r_api_deprecated"

    const-string v6, "com.android.adservices.flags.adservices_outcomereceiver_r_api_enabled"

    const-string v7, "com.android.adservices.flags.enable_adservices_api_enabled"

    const-string v8, "com.android.adservices.flags.fledge_ad_selection_filtering_enabled"

    const-string v9, "com.android.adservices.flags.fledge_auction_server_get_ad_selection_data_id_enabled"

    const-string v10, "com.android.adservices.flags.fledge_custom_audience_auction_server_request_flags_enabled"

    const-string v11, "com.android.adservices.flags.fledge_enable_custom_audience_component_ads"

    const-string v12, "com.android.adservices.flags.fledge_enable_report_event_for_component_seller"

    const-string v13, "com.android.adservices.flags.fledge_enable_schedule_custom_audience_default_partial_custom_audiences_constructor"

    const-string v14, "com.android.adservices.flags.fledge_enable_winning_seller_id_in_ad_selection_outcome"

    const-string v15, "com.android.adservices.flags.fledge_get_ad_selection_data_seller_configuration_enabled"

    const-string v16, "com.android.adservices.flags.fledge_schedule_custom_audience_update_enabled"

    const-string v17, "com.android.adservices.flags.fledge_server_auction_multi_cloud_enabled"

    const-string v18, "com.android.adservices.flags.get_adservices_common_states_api_enabled"

    const-string v19, "com.android.adservices.flags.protected_signals_enabled"

    const-string v20, "com.android.adservices.flags.sdksandbox_invalidate_effective_target_sdk_version_cache"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/adservices/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 187
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/adservices/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/adservices/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/adservices/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 175
    invoke-direct {p0}, Lcom/android/adservices/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist protectedSignalsEnabled()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.adservices.flags.protected_signals_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sdksandboxInvalidateEffectiveTargetSdkVersionCache()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.adservices.flags.sdksandbox_invalidate_effective_target_sdk_version_cache"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sdksandboxUseEffectiveTargetSdkVersionForRestrictions()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.adservices.flags.sdksandbox_use_effective_target_sdk_version_for_restrictions"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist topicsEncryptionEnabled()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/adservices/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.adservices.flags.topics_encryption_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/adservices/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
