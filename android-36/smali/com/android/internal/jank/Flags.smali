.class public final Lcom/android/internal/jank/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/jank/FeatureFlags; = null

.field public static final blacklist FLAG_IGNORE_HWUI_IS_FIRST_FRAME:Ljava/lang/String; = "com.android.internal.jank.ignore_hwui_is_first_frame"

.field public static final blacklist FLAG_USE_SF_FRAME_DURATION:Ljava/lang/String; = "com.android.internal.jank.use_sf_frame_duration"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/jank/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/jank/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/jank/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist ignoreHwuiIsFirstFrame()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/jank/FeatureFlags;->ignoreHwuiIsFirstFrame()Z

    move-result v0

    return v0
.end method

.method public static greylist useSfFrameDuration()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/android/internal/jank/Flags;->FEATURE_FLAGS:Lcom/android/internal/jank/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/jank/FeatureFlags;->useSfFrameDuration()Z

    move-result v0

    return v0
.end method
