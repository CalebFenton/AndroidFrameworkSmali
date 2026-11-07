.class public final Lcom/android/server/compat/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/compat/FeatureFlags; = null

.field public static final blacklist FLAG_SYSTEM_UID_TARGET_SYSTEM_SDK:Ljava/lang/String; = "com.android.server.compat.system_uid_target_system_sdk"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/server/compat/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/compat/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/compat/Flags;->FEATURE_FLAGS:Lcom/android/server/compat/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist systemUidTargetSystemSdk()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/compat/Flags;->FEATURE_FLAGS:Lcom/android/server/compat/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/compat/FeatureFlags;->systemUidTargetSystemSdk()Z

    move-result v0

    return v0
.end method
