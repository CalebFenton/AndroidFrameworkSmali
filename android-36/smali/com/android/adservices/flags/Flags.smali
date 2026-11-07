.class public final Lcom/android/adservices/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADEXT_DATA_SERVICE_APIS_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.adext_data_service_apis_enabled"

.field public static final blacklist FLAG_ADSERVICES_ENABLEMENT_CHECK_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.adservices_enablement_check_enabled"

.field public static final blacklist FLAG_ADSERVICES_ENABLE_PER_MODULE_OVERRIDES_API:Ljava/lang/String; = "com.android.adservices.flags.adservices_enable_per_module_overrides_api"

.field public static final blacklist FLAG_ADSERVICES_OUTCOMERECEIVER_R_API_DEPRECATED:Ljava/lang/String; = "com.android.adservices.flags.adservices_outcomereceiver_r_api_deprecated"

.field public static final blacklist FLAG_ADSERVICES_OUTCOMERECEIVER_R_API_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.adservices_outcomereceiver_r_api_enabled"

.field public static final blacklist FLAG_AD_ID_CACHE_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.ad_id_cache_enabled"

.field public static final blacklist FLAG_ENABLE_ADSERVICES_API_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.enable_adservices_api_enabled"

.field public static final blacklist FLAG_FLEDGE_AD_SELECTION_FILTERING_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_ad_selection_filtering_enabled"

.field public static final blacklist FLAG_FLEDGE_AUCTION_SERVER_GET_AD_SELECTION_DATA_ID_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_auction_server_get_ad_selection_data_id_enabled"

.field public static final blacklist FLAG_FLEDGE_CUSTOM_AUDIENCE_AUCTION_SERVER_REQUEST_FLAGS_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_custom_audience_auction_server_request_flags_enabled"

.field public static final blacklist FLAG_FLEDGE_ENABLE_CUSTOM_AUDIENCE_COMPONENT_ADS:Ljava/lang/String; = "com.android.adservices.flags.fledge_enable_custom_audience_component_ads"

.field public static final blacklist FLAG_FLEDGE_ENABLE_REPORT_EVENT_FOR_COMPONENT_SELLER:Ljava/lang/String; = "com.android.adservices.flags.fledge_enable_report_event_for_component_seller"

.field public static final blacklist FLAG_FLEDGE_ENABLE_SCHEDULE_CUSTOM_AUDIENCE_DEFAULT_PARTIAL_CUSTOM_AUDIENCES_CONSTRUCTOR:Ljava/lang/String; = "com.android.adservices.flags.fledge_enable_schedule_custom_audience_default_partial_custom_audiences_constructor"

.field public static final blacklist FLAG_FLEDGE_ENABLE_WINNING_SELLER_ID_IN_AD_SELECTION_OUTCOME:Ljava/lang/String; = "com.android.adservices.flags.fledge_enable_winning_seller_id_in_ad_selection_outcome"

.field public static final blacklist FLAG_FLEDGE_GET_AD_SELECTION_DATA_SELLER_CONFIGURATION_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_get_ad_selection_data_seller_configuration_enabled"

.field public static final blacklist FLAG_FLEDGE_SCHEDULE_CUSTOM_AUDIENCE_UPDATE_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_schedule_custom_audience_update_enabled"

.field public static final blacklist FLAG_FLEDGE_SERVER_AUCTION_MULTI_CLOUD_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.fledge_server_auction_multi_cloud_enabled"

.field public static final blacklist FLAG_GET_ADSERVICES_COMMON_STATES_API_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.get_adservices_common_states_api_enabled"

.field public static final blacklist FLAG_PROTECTED_SIGNALS_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.protected_signals_enabled"

.field public static final blacklist FLAG_SDKSANDBOX_INVALIDATE_EFFECTIVE_TARGET_SDK_VERSION_CACHE:Ljava/lang/String; = "com.android.adservices.flags.sdksandbox_invalidate_effective_target_sdk_version_cache"

.field public static final blacklist FLAG_SDKSANDBOX_USE_EFFECTIVE_TARGET_SDK_VERSION_FOR_RESTRICTIONS:Ljava/lang/String; = "com.android.adservices.flags.sdksandbox_use_effective_target_sdk_version_for_restrictions"

.field public static final blacklist FLAG_TOPICS_ENCRYPTION_ENABLED:Ljava/lang/String; = "com.android.adservices.flags.topics_encryption_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Lcom/android/adservices/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/adservices/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adIdCacheEnabled()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adIdCacheEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist adextDataServiceApisEnabled()Z
    .registers 1

    .line 63
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adextDataServiceApisEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist adservicesEnablePerModuleOverridesApi()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adservicesEnablePerModuleOverridesApi()Z

    move-result v0

    return v0
.end method

.method public static greylist adservicesEnablementCheckEnabled()Z
    .registers 1

    .line 77
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adservicesEnablementCheckEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist adservicesOutcomereceiverRApiDeprecated()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adservicesOutcomereceiverRApiDeprecated()Z

    move-result v0

    return v0
.end method

.method public static greylist adservicesOutcomereceiverRApiEnabled()Z
    .registers 1

    .line 91
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->adservicesOutcomereceiverRApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAdservicesApiEnabled()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->enableAdservicesApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeAdSelectionFilteringEnabled()Z
    .registers 1

    .line 105
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeAdSelectionFilteringEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeAuctionServerGetAdSelectionDataIdEnabled()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeAuctionServerGetAdSelectionDataIdEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeCustomAudienceAuctionServerRequestFlagsEnabled()Z
    .registers 1

    .line 119
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeCustomAudienceAuctionServerRequestFlagsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeEnableCustomAudienceComponentAds()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeEnableCustomAudienceComponentAds()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeEnableReportEventForComponentSeller()Z
    .registers 1

    .line 133
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeEnableReportEventForComponentSeller()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeEnableScheduleCustomAudienceDefaultPartialCustomAudiencesConstructor()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeEnableScheduleCustomAudienceDefaultPartialCustomAudiencesConstructor()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeEnableWinningSellerIdInAdSelectionOutcome()Z
    .registers 1

    .line 147
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeEnableWinningSellerIdInAdSelectionOutcome()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeGetAdSelectionDataSellerConfigurationEnabled()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeGetAdSelectionDataSellerConfigurationEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeScheduleCustomAudienceUpdateEnabled()Z
    .registers 1

    .line 161
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeScheduleCustomAudienceUpdateEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fledgeServerAuctionMultiCloudEnabled()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->fledgeServerAuctionMultiCloudEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist getAdservicesCommonStatesApiEnabled()Z
    .registers 1

    .line 175
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->getAdservicesCommonStatesApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist protectedSignalsEnabled()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->protectedSignalsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist sdksandboxInvalidateEffectiveTargetSdkVersionCache()Z
    .registers 1

    .line 189
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->sdksandboxInvalidateEffectiveTargetSdkVersionCache()Z

    move-result v0

    return v0
.end method

.method public static greylist sdksandboxUseEffectiveTargetSdkVersionForRestrictions()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->sdksandboxUseEffectiveTargetSdkVersionForRestrictions()Z

    move-result v0

    return v0
.end method

.method public static greylist topicsEncryptionEnabled()Z
    .registers 1

    .line 203
    sget-object v0, Lcom/android/adservices/flags/Flags;->FEATURE_FLAGS:Lcom/android/adservices/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/adservices/flags/FeatureFlags;->topicsEncryptionEnabled()Z

    move-result v0

    return v0
.end method
