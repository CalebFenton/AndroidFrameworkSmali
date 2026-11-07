.class public Landroid/media/codec/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/media/codec/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/codec/FeatureFlags;",
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
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/media/codec/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/media/codec/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v1, Ljava/util/HashSet;

    const-string v29, "android.media.codec.thumbnail_block_model"

    const-string v30, ""

    const-string v2, "android.media.codec.aidl_hal_input_surface"

    const-string v3, "android.media.codec.apv_support"

    const-string v4, "android.media.codec.codec_availability"

    const-string v5, "android.media.codec.codec_availability_metrics"

    const-string v6, "android.media.codec.codec_availability_support"

    const-string v7, "android.media.codec.codec_buffer_state_cleanup"

    const-string v8, "android.media.codec.dataspace_v0_partial"

    const-string v9, "android.media.codec.dynamic_color_aspects"

    const-string v10, "android.media.codec.hlg_editing"

    const-string v11, "android.media.codec.in_process_sw_audio_codec"

    const-string v12, "android.media.codec.in_process_sw_audio_codec_support"

    const-string v13, "android.media.codec.input_surface_throttle"

    const-string v14, "android.media.codec.large_audio_frame_finish"

    const-string v15, "android.media.codec.native_capabilites"

    const-string v16, "android.media.codec.null_output_surface"

    const-string v17, "android.media.codec.null_output_surface_support"

    const-string v18, "android.media.codec.num_input_slots"

    const-string v19, "android.media.codec.p210_format_support"

    const-string v20, "android.media.codec.region_of_interest"

    const-string v21, "android.media.codec.region_of_interest_support"

    const-string v22, "android.media.codec.rendering_depth_removal"

    const-string v23, "android.media.codec.secure_codecs_require_crypto"

    const-string v24, "android.media.codec.set_callback_stall"

    const-string v25, "android.media.codec.set_state_early"

    const-string v26, "android.media.codec.stop_hal_before_surface"

    const-string v27, "android.media.codec.subsession_metrics"

    const-string v28, "android.media.codec.teamfood"

    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/media/codec/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/media/codec/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 225
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist aidlHalInputSurface()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.media.codec.aidl_hal_input_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist apvSupport()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.media.codec.apv_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist codecAvailability()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.media.codec.codec_availability"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist codecAvailabilityMetrics()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.media.codec.codec_availability_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist codecAvailabilitySupport()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.media.codec.codec_availability_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist codecBufferStateCleanup()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.media.codec.codec_buffer_state_cleanup"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dataspaceV0Partial()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.media.codec.dataspace_v0_partial"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dynamicColorAspects()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.media.codec.dynamic_color_aspects"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    const-string v27, "android.media.codec.teamfood"

    const-string v28, "android.media.codec.thumbnail_block_model"

    const-string v1, "android.media.codec.aidl_hal_input_surface"

    const-string v2, "android.media.codec.apv_support"

    const-string v3, "android.media.codec.codec_availability"

    const-string v4, "android.media.codec.codec_availability_metrics"

    const-string v5, "android.media.codec.codec_availability_support"

    const-string v6, "android.media.codec.codec_buffer_state_cleanup"

    const-string v7, "android.media.codec.dataspace_v0_partial"

    const-string v8, "android.media.codec.dynamic_color_aspects"

    const-string v9, "android.media.codec.hlg_editing"

    const-string v10, "android.media.codec.in_process_sw_audio_codec"

    const-string v11, "android.media.codec.in_process_sw_audio_codec_support"

    const-string v12, "android.media.codec.input_surface_throttle"

    const-string v13, "android.media.codec.large_audio_frame_finish"

    const-string v14, "android.media.codec.native_capabilites"

    const-string v15, "android.media.codec.null_output_surface"

    const-string v16, "android.media.codec.null_output_surface_support"

    const-string v17, "android.media.codec.num_input_slots"

    const-string v18, "android.media.codec.p210_format_support"

    const-string v19, "android.media.codec.region_of_interest"

    const-string v20, "android.media.codec.region_of_interest_support"

    const-string v21, "android.media.codec.rendering_depth_removal"

    const-string v22, "android.media.codec.secure_codecs_require_crypto"

    const-string v23, "android.media.codec.set_callback_stall"

    const-string v24, "android.media.codec.set_state_early"

    const-string v25, "android.media.codec.stop_hal_before_surface"

    const-string v26, "android.media.codec.subsession_metrics"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

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
            "Landroid/media/codec/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/media/codec/FeatureFlags;>;"
    iget-object v0, p0, Landroid/media/codec/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hlgEditing()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.media.codec.hlg_editing"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inProcessSwAudioCodec()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.media.codec.in_process_sw_audio_codec"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inProcessSwAudioCodecSupport()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.media.codec.in_process_sw_audio_codec_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inputSurfaceThrottle()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.media.codec.input_surface_throttle"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/media/codec/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 217
    invoke-direct {p0}, Landroid/media/codec/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist largeAudioFrameFinish()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.media.codec.large_audio_frame_finish"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nativeCapabilites()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.media.codec.native_capabilites"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nullOutputSurface()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.media.codec.null_output_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist nullOutputSurfaceSupport()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.media.codec.null_output_surface_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist numInputSlots()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.media.codec.num_input_slots"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist p210FormatSupport()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.media.codec.p210_format_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist regionOfInterest()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.media.codec.region_of_interest"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist regionOfInterestSupport()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.media.codec.region_of_interest_support"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist renderingDepthRemoval()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.media.codec.rendering_depth_removal"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist secureCodecsRequireCrypto()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.media.codec.secure_codecs_require_crypto"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setCallbackStall()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.media.codec.set_callback_stall"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setStateEarly()Z
    .registers 3

    .line 183
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.media.codec.set_state_early"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist stopHalBeforeSurface()Z
    .registers 3

    .line 190
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.media.codec.stop_hal_before_surface"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist subsessionMetrics()Z
    .registers 3

    .line 197
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.media.codec.subsession_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist teamfood()Z
    .registers 3

    .line 204
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.media.codec.teamfood"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist thumbnailBlockModel()Z
    .registers 3

    .line 211
    new-instance v0, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/media/codec/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.media.codec.thumbnail_block_model"

    invoke-virtual {p0, v1, v0}, Landroid/media/codec/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
