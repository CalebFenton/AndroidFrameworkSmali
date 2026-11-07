.class public final Landroid/content/res/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/content/res/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist alwaysFalse()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist assetFileDescriptorFrro()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist defaultLocale()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dimensionFrro()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fontScaleConverterPublic()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist handleAllConfigChanges()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist layoutReadwriteFlags()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist manifestFlagging()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ninePatchFrro()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist registerResourcePaths()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resourcesMinorVersionSupport()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist rroConstraints()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist rroControlForAndroidNoOverlayable()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist selfTargetingAndroidResourceFrro()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist systemContextHandleAppInfoChanged()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useNewAconfigStorage()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method
