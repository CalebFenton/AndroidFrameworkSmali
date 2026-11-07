.class public final Lcom/android/x/ranging/com/android/ranging/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/x/ranging/com/android/ranging/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist rangingCsEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rangingRttEnabled()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rangingStackEnabled()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rangingStackUpdates25q4()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method
