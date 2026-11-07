.class public final Landroid/security/keystore2/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/security/keystore2/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist attestModules()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableLegacyKeystoreGet()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disableLegacyKeystorePutV2()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist importPreviouslyEmulatedKeys()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist useBlobStateColumn()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist walDbJournalmodeV3()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method
