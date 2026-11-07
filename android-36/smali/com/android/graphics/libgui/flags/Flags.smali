.class public final Lcom/android/graphics/libgui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOCATE_BUFFER_PRIORITY:Ljava/lang/String; = "com.android.graphics.libgui.flags.allocate_buffer_priority"

.field public static final blacklist FLAG_APPLY_PICTURE_PROFILES:Ljava/lang/String; = "com.android.graphics.libgui.flags.apply_picture_profiles"

.field public static final blacklist FLAG_BQ_ALWAYS_USE_MAX_DEQUEUED_BUFFER_COUNT:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_always_use_max_dequeued_buffer_count"

.field public static final blacklist FLAG_BQ_CONSUMER_ATTACH_CALLBACK:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

.field public static final blacklist FLAG_BQ_EXTENDEDALLOCATE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_extendedallocate"

.field public static final blacklist FLAG_BQ_GL_FENCE_CLEANUP:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

.field public static final blacklist FLAG_BQ_PRODUCER_THROTTLES_ONLY_ASYNC_MODE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

.field public static final blacklist FLAG_BQ_SETFRAMERATE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_setframerate"

.field public static final blacklist FLAG_BUFFER_RELEASE_CHANNEL:Ljava/lang/String; = "com.android.graphics.libgui.flags.buffer_release_channel"

.field public static final blacklist FLAG_FRAMETIMESTAMPS_PREVIOUSRELEASE:Ljava/lang/String; = "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

.field public static final blacklist FLAG_TRACE_FRAME_RATE_OVERRIDE:Ljava/lang/String; = "com.android.graphics.libgui.flags.trace_frame_rate_override"

.field public static final blacklist FLAG_WB_CAMERA3_AND_PROCESSORS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_camera3_and_processors"

.field public static final blacklist FLAG_WB_CONSUMER_BASE_OWNS_BQ:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

.field public static final blacklist FLAG_WB_LIBCAMERASERVICE:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_libcameraservice"

.field public static final blacklist FLAG_WB_MEDIA_MIGRATION:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_media_migration"

.field public static final blacklist FLAG_WB_PLATFORM_API_IMPROVEMENTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_platform_api_improvements"

.field public static final blacklist FLAG_WB_RING_BUFFER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_ring_buffer"

.field public static final blacklist FLAG_WB_STREAM_SPLITTER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_stream_splitter"

.field public static final blacklist FLAG_WB_UNLIMITED_SLOTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_unlimited_slots"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Lcom/android/graphics/libgui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist allocateBufferPriority()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->allocateBufferPriority()Z

    move-result v0

    return v0
.end method

.method public static greylist applyPictureProfiles()Z
    .registers 1

    .line 57
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->applyPictureProfiles()Z

    move-result v0

    return v0
.end method

.method public static greylist bqAlwaysUseMaxDequeuedBufferCount()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqAlwaysUseMaxDequeuedBufferCount()Z

    move-result v0

    return v0
.end method

.method public static greylist bqConsumerAttachCallback()Z
    .registers 1

    .line 71
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqConsumerAttachCallback()Z

    move-result v0

    return v0
.end method

.method public static greylist bqExtendedallocate()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqExtendedallocate()Z

    move-result v0

    return v0
.end method

.method public static greylist bqGlFenceCleanup()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqGlFenceCleanup()Z

    move-result v0

    return v0
.end method

.method public static greylist bqProducerThrottlesOnlyAsyncMode()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqProducerThrottlesOnlyAsyncMode()Z

    move-result v0

    return v0
.end method

.method public static greylist bqSetframerate()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bqSetframerate()Z

    move-result v0

    return v0
.end method

.method public static greylist bufferReleaseChannel()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->bufferReleaseChannel()Z

    move-result v0

    return v0
.end method

.method public static greylist frametimestampsPreviousrelease()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->frametimestampsPreviousrelease()Z

    move-result v0

    return v0
.end method

.method public static greylist traceFrameRateOverride()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->traceFrameRateOverride()Z

    move-result v0

    return v0
.end method

.method public static greylist wbCamera3AndProcessors()Z
    .registers 1

    .line 127
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbCamera3AndProcessors()Z

    move-result v0

    return v0
.end method

.method public static greylist wbConsumerBaseOwnsBq()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbConsumerBaseOwnsBq()Z

    move-result v0

    return v0
.end method

.method public static greylist wbLibcameraservice()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbLibcameraservice()Z

    move-result v0

    return v0
.end method

.method public static greylist wbMediaMigration()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbMediaMigration()Z

    move-result v0

    return v0
.end method

.method public static greylist wbPlatformApiImprovements()Z
    .registers 1

    .line 155
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbPlatformApiImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist wbRingBuffer()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbRingBuffer()Z

    move-result v0

    return v0
.end method

.method public static greylist wbStreamSplitter()Z
    .registers 1

    .line 169
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbStreamSplitter()Z

    move-result v0

    return v0
.end method

.method public static greylist wbUnlimitedSlots()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/libgui/flags/FeatureFlags;->wbUnlimitedSlots()Z

    move-result v0

    return v0
.end method
