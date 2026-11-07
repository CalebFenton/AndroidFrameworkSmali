.class public Lcom/android/graphics/libgui/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/libgui/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/libgui/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/libgui/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/graphics/libgui/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v1, Ljava/util/HashSet;

    const-string v20, "com.android.graphics.libgui.flags.wb_unlimited_slots"

    const-string v21, ""

    const-string v2, "com.android.graphics.libgui.flags.allocate_buffer_priority"

    const-string v3, "com.android.graphics.libgui.flags.apply_picture_profiles"

    const-string v4, "com.android.graphics.libgui.flags.bq_always_use_max_dequeued_buffer_count"

    const-string v5, "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

    const-string v6, "com.android.graphics.libgui.flags.bq_extendedallocate"

    const-string v7, "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

    const-string v8, "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

    const-string v9, "com.android.graphics.libgui.flags.bq_setframerate"

    const-string v10, "com.android.graphics.libgui.flags.buffer_release_channel"

    const-string v11, "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

    const-string v12, "com.android.graphics.libgui.flags.trace_frame_rate_override"

    const-string v13, "com.android.graphics.libgui.flags.wb_camera3_and_processors"

    const-string v14, "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

    const-string v15, "com.android.graphics.libgui.flags.wb_libcameraservice"

    const-string v16, "com.android.graphics.libgui.flags.wb_media_migration"

    const-string v17, "com.android.graphics.libgui.flags.wb_platform_api_improvements"

    const-string v18, "com.android.graphics.libgui.flags.wb_ring_buffer"

    const-string v19, "com.android.graphics.libgui.flags.wb_stream_splitter"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist allocateBufferPriority()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.allocate_buffer_priority"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist applyPictureProfiles()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.apply_picture_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqAlwaysUseMaxDequeuedBufferCount()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_always_use_max_dequeued_buffer_count"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqConsumerAttachCallback()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqExtendedallocate()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_extendedallocate"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqGlFenceCleanup()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqProducerThrottlesOnlyAsyncMode()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bqSetframerate()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.bq_setframerate"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bufferReleaseChannel()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.buffer_release_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist frametimestampsPreviousrelease()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    const-string v18, "com.android.graphics.libgui.flags.wb_stream_splitter"

    const-string v19, "com.android.graphics.libgui.flags.wb_unlimited_slots"

    const-string v1, "com.android.graphics.libgui.flags.allocate_buffer_priority"

    const-string v2, "com.android.graphics.libgui.flags.apply_picture_profiles"

    const-string v3, "com.android.graphics.libgui.flags.bq_always_use_max_dequeued_buffer_count"

    const-string v4, "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

    const-string v5, "com.android.graphics.libgui.flags.bq_extendedallocate"

    const-string v6, "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

    const-string v7, "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

    const-string v8, "com.android.graphics.libgui.flags.bq_setframerate"

    const-string v9, "com.android.graphics.libgui.flags.buffer_release_channel"

    const-string v10, "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

    const-string v11, "com.android.graphics.libgui.flags.trace_frame_rate_override"

    const-string v12, "com.android.graphics.libgui.flags.wb_camera3_and_processors"

    const-string v13, "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

    const-string v14, "com.android.graphics.libgui.flags.wb_libcameraservice"

    const-string v15, "com.android.graphics.libgui.flags.wb_media_migration"

    const-string v16, "com.android.graphics.libgui.flags.wb_platform_api_improvements"

    const-string v17, "com.android.graphics.libgui.flags.wb_ring_buffer"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/libgui/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/graphics/libgui/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    invoke-direct {p0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist traceFrameRateOverride()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.trace_frame_rate_override"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbCamera3AndProcessors()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_camera3_and_processors"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbConsumerBaseOwnsBq()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbLibcameraservice()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_libcameraservice"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbMediaMigration()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_media_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbPlatformApiImprovements()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_platform_api_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbRingBuffer()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_ring_buffer"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbStreamSplitter()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_stream_splitter"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wbUnlimitedSlots()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.graphics.libgui.flags.wb_unlimited_slots"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/libgui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
