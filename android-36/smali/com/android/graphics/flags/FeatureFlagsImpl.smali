.class public final Lcom/android/graphics/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/graphics/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist displayBt2020Colorspace()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist exactComputeBounds()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist gradientDrawableShapeArcForRoundedCap()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist iconLoadDrawableReturnNullWhenUriDecodeFails()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist okLabColorspace()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist yuvImageCompressToUltraHdr()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method
