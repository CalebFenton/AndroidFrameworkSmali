.class public final Lcom/android/libcore/readonly/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/libcore/readonly/FeatureFlags; = null

.field public static final blacklist FLAG_NATIVE_METRICS:Ljava/lang/String; = "com.android.libcore.readonly.native_metrics"

.field public static final blacklist FLAG_POST_CLEANUP_APIS:Ljava/lang/String; = "com.android.libcore.readonly.post_cleanup_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/libcore/readonly/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/libcore/readonly/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/libcore/readonly/Flags;->FEATURE_FLAGS:Lcom/android/libcore/readonly/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist nativeMetrics()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/libcore/readonly/Flags;->FEATURE_FLAGS:Lcom/android/libcore/readonly/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/readonly/FeatureFlags;->nativeMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist postCleanupApis()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/libcore/readonly/Flags;->FEATURE_FLAGS:Lcom/android/libcore/readonly/FeatureFlags;

    invoke-interface {v0}, Lcom/android/libcore/readonly/FeatureFlags;->postCleanupApis()Z

    move-result v0

    return v0
.end method
