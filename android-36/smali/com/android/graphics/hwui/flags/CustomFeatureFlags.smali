.class public Lcom/android/graphics/hwui/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/graphics/hwui/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
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
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/graphics/hwui/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v1, Ljava/util/HashSet;

    const-string v27, "com.android.graphics.hwui.flags.skip_eglmanager_telemetry"

    const-string v28, ""

    const-string v2, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    const-string v3, "com.android.graphics.hwui.flags.animated_image_drawable_filter_bitmap"

    const-string v4, "com.android.graphics.hwui.flags.bitmap_ashmem_long_name"

    const-string v5, "com.android.graphics.hwui.flags.bitmap_parcel_ashmem_as_immutable"

    const-string v6, "com.android.graphics.hwui.flags.calc_workload_orig_deadline"

    const-string v7, "com.android.graphics.hwui.flags.clip_shader"

    const-string v8, "com.android.graphics.hwui.flags.clip_surfaceviews"

    const-string v9, "com.android.graphics.hwui.flags.draw_region"

    const-string v10, "com.android.graphics.hwui.flags.early_preinit_buffer_allocator"

    const-string v11, "com.android.graphics.hwui.flags.early_preload_gl_context"

    const-string v12, "com.android.graphics.hwui.flags.gainmap_animations"

    const-string v13, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    const-string v14, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    const-string v15, "com.android.graphics.hwui.flags.high_contrast_text_inner_text_color"

    const-string v16, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    const-string v17, "com.android.graphics.hwui.flags.initialize_gl_always"

    const-string v18, "com.android.graphics.hwui.flags.iso_gainmap_apis"

    const-string v19, "com.android.graphics.hwui.flags.limited_hdr"

    const-string v20, "com.android.graphics.hwui.flags.matrix_44"

    const-string v21, "com.android.graphics.hwui.flags.query_global_priority"

    const-string v22, "com.android.graphics.hwui.flags.remove_vri_sketchy_destroy"

    const-string v23, "com.android.graphics.hwui.flags.requested_formats_v"

    const-string v24, "com.android.graphics.hwui.flags.resample_gainmap_regions"

    const-string v25, "com.android.graphics.hwui.flags.runtime_color_filters_blenders"

    const-string v26, "com.android.graphics.hwui.flags.shader_color_space"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist animateHdrTransitions()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist animatedImageDrawableFilterBitmap()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.animated_image_drawable_filter_bitmap"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bitmapAshmemLongName()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.bitmap_ashmem_long_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bitmapParcelAshmemAsImmutable()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.bitmap_parcel_ashmem_as_immutable"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist calcWorkloadOrigDeadline()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.calc_workload_orig_deadline"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clipShader()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.clip_shader"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist clipSurfaceviews()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.clip_surfaceviews"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist drawRegion()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.draw_region"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyPreinitBufferAllocator()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.early_preinit_buffer_allocator"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist earlyPreloadGlContext()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.early_preload_gl_context"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gainmapAnimations()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.gainmap_animations"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gainmapConstructorWithMetadata()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    const-string v25, "com.android.graphics.hwui.flags.shader_color_space"

    const-string v26, "com.android.graphics.hwui.flags.skip_eglmanager_telemetry"

    const-string v1, "com.android.graphics.hwui.flags.animate_hdr_transitions"

    const-string v2, "com.android.graphics.hwui.flags.animated_image_drawable_filter_bitmap"

    const-string v3, "com.android.graphics.hwui.flags.bitmap_ashmem_long_name"

    const-string v4, "com.android.graphics.hwui.flags.bitmap_parcel_ashmem_as_immutable"

    const-string v5, "com.android.graphics.hwui.flags.calc_workload_orig_deadline"

    const-string v6, "com.android.graphics.hwui.flags.clip_shader"

    const-string v7, "com.android.graphics.hwui.flags.clip_surfaceviews"

    const-string v8, "com.android.graphics.hwui.flags.draw_region"

    const-string v9, "com.android.graphics.hwui.flags.early_preinit_buffer_allocator"

    const-string v10, "com.android.graphics.hwui.flags.early_preload_gl_context"

    const-string v11, "com.android.graphics.hwui.flags.gainmap_animations"

    const-string v12, "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

    const-string v13, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    const-string v14, "com.android.graphics.hwui.flags.high_contrast_text_inner_text_color"

    const-string v15, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    const-string v16, "com.android.graphics.hwui.flags.initialize_gl_always"

    const-string v17, "com.android.graphics.hwui.flags.iso_gainmap_apis"

    const-string v18, "com.android.graphics.hwui.flags.limited_hdr"

    const-string v19, "com.android.graphics.hwui.flags.matrix_44"

    const-string v20, "com.android.graphics.hwui.flags.query_global_priority"

    const-string v21, "com.android.graphics.hwui.flags.remove_vri_sketchy_destroy"

    const-string v22, "com.android.graphics.hwui.flags.requested_formats_v"

    const-string v23, "com.android.graphics.hwui.flags.resample_gainmap_regions"

    const-string v24, "com.android.graphics.hwui.flags.runtime_color_filters_blenders"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

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
            "Lcom/android/graphics/hwui/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 215
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/graphics/hwui/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hdr10bitPlus()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.hdr_10bit_plus"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist highContrastTextInnerTextColor()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.high_contrast_text_inner_text_color"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist highContrastTextSmallTextRect()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist initializeGlAlways()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.initialize_gl_always"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    invoke-direct {p0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isoGainmapApis()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.iso_gainmap_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist limitedHdr()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.limited_hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist matrix44()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.matrix_44"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist queryGlobalPriority()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.query_global_priority"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeVriSketchyDestroy()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.remove_vri_sketchy_destroy"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist requestedFormatsV()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.requested_formats_v"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resampleGainmapRegions()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.resample_gainmap_regions"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist runtimeColorFiltersBlenders()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.runtime_color_filters_blenders"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist shaderColorSpace()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.shader_color_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipEglmanagerTelemetry()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.graphics.hwui.flags.skip_eglmanager_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/graphics/hwui/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
