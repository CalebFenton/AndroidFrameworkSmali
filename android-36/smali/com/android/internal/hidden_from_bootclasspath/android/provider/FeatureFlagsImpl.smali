.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/provider/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist a11yStandaloneGestureEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowConfigMaximumCallLogEntriesPerSim()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newDefaultAccountApiEnabled()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reduceBinderTransactionSizeForGetAllProperties()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemRegionalPreferencesApiEnabled()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemSettingsDefault()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist userKeys()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method
