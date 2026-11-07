.class public final Lcom/android/internal/os/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/os/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist applicationSharedMemoryEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist debugStoreEnabled()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableApacheHttpLegacyPreload()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMediaAndLocationPreload()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ravenwoodFlagRo1()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ravenwoodFlagRo2()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ravenwoodFlagRw1()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ravenwoodFlagRw2()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist useTransactionCodesForUnknownMethods()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method
