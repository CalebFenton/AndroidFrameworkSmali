.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_MEDIA_METRICS_EDITING:Ljava/lang/String; = "com.android.media.editing.flags.add_media_metrics_editing"

.field public static final blacklist FLAG_MUXER_MP4_ENABLE_APV:Ljava/lang/String; = "com.android.media.editing.flags.muxer_mp4_enable_apv"

.field public static final blacklist FLAG_STAGEFRIGHTRECORDER_ENABLE_B_FRAMES:Ljava/lang/String; = "com.android.media.editing.flags.stagefrightrecorder_enable_b_frames"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addMediaMetricsEditing()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;->addMediaMetricsEditing()Z

    move-result v0

    return v0
.end method

.method public static blacklist muxerMp4EnableApv()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;->muxerMp4EnableApv()Z

    move-result v0

    return v0
.end method

.method public static blacklist stagefrightrecorderEnableBFrames()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/editing/flags/FeatureFlags;->stagefrightrecorderEnableBFrames()Z

    move-result v0

    return v0
.end method
