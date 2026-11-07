.class public final Landroid/adaptiveauth/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/adaptiveauth/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableAdaptiveAuth()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist reportBiometricAuthAttempts()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method
