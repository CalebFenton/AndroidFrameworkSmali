.class public final Landroid/net/connectivity/com/android/nearby/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/connectivity/com/android/nearby/flags/FeatureFlags; = null

.field public static final blacklist FLAG_POWERED_OFF_FINDING:Ljava/lang/String; = "com.android.nearby.flags.powered_off_finding"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/net/connectivity/com/android/nearby/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/nearby/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/nearby/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/nearby/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist poweredOffFinding()Z
    .registers 1

    .line 14
    sget-object v0, Landroid/net/connectivity/com/android/nearby/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/nearby/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/nearby/flags/FeatureFlags;->poweredOffFinding()Z

    move-result v0

    return v0
.end method
