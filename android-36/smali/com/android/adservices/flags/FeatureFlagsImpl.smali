.class public final Lcom/android/adservices/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/adservices/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adIdCacheEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adextDataServiceApisEnabled()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adservicesEnablePerModuleOverridesApi()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adservicesEnablementCheckEnabled()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adservicesOutcomereceiverRApiDeprecated()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adservicesOutcomereceiverRApiEnabled()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdservicesApiEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeAdSelectionFilteringEnabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeAuctionServerGetAdSelectionDataIdEnabled()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeCustomAudienceAuctionServerRequestFlagsEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeEnableCustomAudienceComponentAds()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeEnableReportEventForComponentSeller()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeEnableScheduleCustomAudienceDefaultPartialCustomAudiencesConstructor()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeEnableWinningSellerIdInAdSelectionOutcome()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeGetAdSelectionDataSellerConfigurationEnabled()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeScheduleCustomAudienceUpdateEnabled()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fledgeServerAuctionMultiCloudEnabled()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getAdservicesCommonStatesApiEnabled()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist protectedSignalsEnabled()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sdksandboxInvalidateEffectiveTargetSdkVersionCache()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sdksandboxUseEffectiveTargetSdkVersionForRestrictions()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist topicsEncryptionEnabled()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method
