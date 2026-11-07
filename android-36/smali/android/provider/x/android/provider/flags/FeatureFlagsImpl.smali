.class public final Landroid/provider/x/android/provider/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/provider/x/android/provider/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist deviceConfigWritableNamespacesApi()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist dumpImprovements()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableImmediateClearOverrideBugfix()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist flagManagerUnitTestFlag()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mmdDeviceConfig()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newStoragePublicApi()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist newStorageWriterSystemApi()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readPlatformFromPlatformApi()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stageFlagsForBuild()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useProtoInputStream()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method
