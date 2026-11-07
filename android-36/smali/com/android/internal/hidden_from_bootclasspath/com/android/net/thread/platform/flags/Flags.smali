.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags; = null

.field public static final blacklist FLAG_THREAD_ENABLED_PLATFORM:Ljava/lang/String; = "com.android.net.thread.platform.flags.thread_enabled_platform"

.field public static final blacklist FLAG_THREAD_USER_RESTRICTION_ENABLED:Ljava/lang/String; = "com.android.net.thread.platform.flags.thread_user_restriction_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist threadEnabledPlatform()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags;->threadEnabledPlatform()Z

    move-result v0

    return v0
.end method

.method public static blacklist threadUserRestrictionEnabled()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/net/thread/platform/flags/FeatureFlags;->threadUserRestrictionEnabled()Z

    move-result v0

    return v0
.end method
