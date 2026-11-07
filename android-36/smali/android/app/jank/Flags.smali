.class public final Landroid/app/jank/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/app/jank/FeatureFlags; = null

.field public static final blacklist FLAG_DETAILED_APP_JANK_METRICS_API:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_api"

.field public static final blacklist FLAG_DETAILED_APP_JANK_METRICS_LOGGING_ENABLED:Ljava/lang/String; = "android.app.jank.detailed_app_jank_metrics_logging_enabled"

.field public static final blacklist FLAG_VIEWROOT_CHOREOGRAPHER:Ljava/lang/String; = "android.app.jank.viewroot_choreographer"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/app/jank/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/app/jank/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist detailedAppJankMetricsApi()Z
    .registers 1

    .line 18
    sget-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    invoke-interface {v0}, Landroid/app/jank/FeatureFlags;->detailedAppJankMetricsApi()Z

    move-result v0

    return v0
.end method

.method public static greylist detailedAppJankMetricsLoggingEnabled()Z
    .registers 1

    .line 25
    sget-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    invoke-interface {v0}, Landroid/app/jank/FeatureFlags;->detailedAppJankMetricsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist viewrootChoreographer()Z
    .registers 1

    .line 32
    sget-object v0, Landroid/app/jank/Flags;->FEATURE_FLAGS:Landroid/app/jank/FeatureFlags;

    invoke-interface {v0}, Landroid/app/jank/FeatureFlags;->viewrootChoreographer()Z

    move-result v0

    return v0
.end method
