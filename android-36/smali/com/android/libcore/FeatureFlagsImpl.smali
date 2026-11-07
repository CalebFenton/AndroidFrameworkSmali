.class public final Lcom/android/libcore/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/libcore/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist appinfo()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hpkePublicApi()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hpkeVApis()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist madviseApi()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nativeMetrics()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist openjdk21Stringconcat()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist openjdk21V1Apis()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist openjdk21V2Apis()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist postCleanupApis()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist readOnlyDynamicCodeLoad()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist scheduleAtFixedRateNewBehavior()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vApis()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method
