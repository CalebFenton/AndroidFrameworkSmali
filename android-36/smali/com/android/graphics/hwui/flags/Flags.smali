.class public final Lcom/android/graphics/hwui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ANIMATED_IMAGE_DRAWABLE_FILTER_BITMAP:Ljava/lang/String; = "com.android.graphics.hwui.flags.animated_image_drawable_filter_bitmap"

.field public static final blacklist FLAG_ANIMATE_HDR_TRANSITIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.animate_hdr_transitions"

.field public static final blacklist FLAG_BITMAP_ASHMEM_LONG_NAME:Ljava/lang/String; = "com.android.graphics.hwui.flags.bitmap_ashmem_long_name"

.field public static final blacklist FLAG_BITMAP_PARCEL_ASHMEM_AS_IMMUTABLE:Ljava/lang/String; = "com.android.graphics.hwui.flags.bitmap_parcel_ashmem_as_immutable"

.field public static final blacklist FLAG_CALC_WORKLOAD_ORIG_DEADLINE:Ljava/lang/String; = "com.android.graphics.hwui.flags.calc_workload_orig_deadline"

.field public static final blacklist FLAG_CLIP_SHADER:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_shader"

.field public static final blacklist FLAG_CLIP_SURFACEVIEWS:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_surfaceviews"

.field public static final blacklist FLAG_DRAW_REGION:Ljava/lang/String; = "com.android.graphics.hwui.flags.draw_region"

.field public static final blacklist FLAG_EARLY_PREINIT_BUFFER_ALLOCATOR:Ljava/lang/String; = "com.android.graphics.hwui.flags.early_preinit_buffer_allocator"

.field public static final blacklist FLAG_EARLY_PRELOAD_GL_CONTEXT:Ljava/lang/String; = "com.android.graphics.hwui.flags.early_preload_gl_context"

.field public static final blacklist FLAG_GAINMAP_ANIMATIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_animations"

.field public static final blacklist FLAG_GAINMAP_CONSTRUCTOR_WITH_METADATA:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

.field public static final blacklist FLAG_HDR_10BIT_PLUS:Ljava/lang/String; = "com.android.graphics.hwui.flags.hdr_10bit_plus"

.field public static final blacklist FLAG_HIGH_CONTRAST_TEXT_INNER_TEXT_COLOR:Ljava/lang/String; = "com.android.graphics.hwui.flags.high_contrast_text_inner_text_color"

.field public static final blacklist FLAG_HIGH_CONTRAST_TEXT_SMALL_TEXT_RECT:Ljava/lang/String; = "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

.field public static final blacklist FLAG_INITIALIZE_GL_ALWAYS:Ljava/lang/String; = "com.android.graphics.hwui.flags.initialize_gl_always"

.field public static final blacklist FLAG_ISO_GAINMAP_APIS:Ljava/lang/String; = "com.android.graphics.hwui.flags.iso_gainmap_apis"

.field public static final blacklist FLAG_LIMITED_HDR:Ljava/lang/String; = "com.android.graphics.hwui.flags.limited_hdr"

.field public static final blacklist FLAG_MATRIX_44:Ljava/lang/String; = "com.android.graphics.hwui.flags.matrix_44"

.field public static final blacklist FLAG_QUERY_GLOBAL_PRIORITY:Ljava/lang/String; = "com.android.graphics.hwui.flags.query_global_priority"

.field public static final blacklist FLAG_REMOVE_VRI_SKETCHY_DESTROY:Ljava/lang/String; = "com.android.graphics.hwui.flags.remove_vri_sketchy_destroy"

.field public static final blacklist FLAG_REQUESTED_FORMATS_V:Ljava/lang/String; = "com.android.graphics.hwui.flags.requested_formats_v"

.field public static final blacklist FLAG_RESAMPLE_GAINMAP_REGIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.resample_gainmap_regions"

.field public static final blacklist FLAG_RUNTIME_COLOR_FILTERS_BLENDERS:Ljava/lang/String; = "com.android.graphics.hwui.flags.runtime_color_filters_blenders"

.field public static final blacklist FLAG_SHADER_COLOR_SPACE:Ljava/lang/String; = "com.android.graphics.hwui.flags.shader_color_space"

.field public static final blacklist FLAG_SKIP_EGLMANAGER_TELEMETRY:Ljava/lang/String; = "com.android.graphics.hwui.flags.skip_eglmanager_telemetry"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Lcom/android/graphics/hwui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/hwui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist animateHdrTransitions()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->animateHdrTransitions()Z

    move-result v0

    return v0
.end method

.method public static greylist animatedImageDrawableFilterBitmap()Z
    .registers 1

    .line 71
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->animatedImageDrawableFilterBitmap()Z

    move-result v0

    return v0
.end method

.method public static greylist bitmapAshmemLongName()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->bitmapAshmemLongName()Z

    move-result v0

    return v0
.end method

.method public static greylist bitmapParcelAshmemAsImmutable()Z
    .registers 1

    .line 85
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->bitmapParcelAshmemAsImmutable()Z

    move-result v0

    return v0
.end method

.method public static greylist calcWorkloadOrigDeadline()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->calcWorkloadOrigDeadline()Z

    move-result v0

    return v0
.end method

.method public static greylist clipShader()Z
    .registers 1

    .line 99
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->clipShader()Z

    move-result v0

    return v0
.end method

.method public static greylist clipSurfaceviews()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->clipSurfaceviews()Z

    move-result v0

    return v0
.end method

.method public static greylist drawRegion()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->drawRegion()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyPreinitBufferAllocator()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->earlyPreinitBufferAllocator()Z

    move-result v0

    return v0
.end method

.method public static greylist earlyPreloadGlContext()Z
    .registers 1

    .line 127
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->earlyPreloadGlContext()Z

    move-result v0

    return v0
.end method

.method public static greylist gainmapAnimations()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->gainmapAnimations()Z

    move-result v0

    return v0
.end method

.method public static greylist gainmapConstructorWithMetadata()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->gainmapConstructorWithMetadata()Z

    move-result v0

    return v0
.end method

.method public static greylist hdr10bitPlus()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->hdr10bitPlus()Z

    move-result v0

    return v0
.end method

.method public static greylist highContrastTextInnerTextColor()Z
    .registers 1

    .line 155
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->highContrastTextInnerTextColor()Z

    move-result v0

    return v0
.end method

.method public static greylist highContrastTextSmallTextRect()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->highContrastTextSmallTextRect()Z

    move-result v0

    return v0
.end method

.method public static greylist initializeGlAlways()Z
    .registers 1

    .line 169
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->initializeGlAlways()Z

    move-result v0

    return v0
.end method

.method public static greylist isoGainmapApis()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->isoGainmapApis()Z

    move-result v0

    return v0
.end method

.method public static greylist limitedHdr()Z
    .registers 1

    .line 183
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->limitedHdr()Z

    move-result v0

    return v0
.end method

.method public static greylist matrix44()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->matrix44()Z

    move-result v0

    return v0
.end method

.method public static greylist queryGlobalPriority()Z
    .registers 1

    .line 197
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->queryGlobalPriority()Z

    move-result v0

    return v0
.end method

.method public static greylist removeVriSketchyDestroy()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->removeVriSketchyDestroy()Z

    move-result v0

    return v0
.end method

.method public static greylist requestedFormatsV()Z
    .registers 1

    .line 211
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->requestedFormatsV()Z

    move-result v0

    return v0
.end method

.method public static greylist resampleGainmapRegions()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->resampleGainmapRegions()Z

    move-result v0

    return v0
.end method

.method public static greylist runtimeColorFiltersBlenders()Z
    .registers 1

    .line 225
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->runtimeColorFiltersBlenders()Z

    move-result v0

    return v0
.end method

.method public static greylist shaderColorSpace()Z
    .registers 1

    .line 232
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->shaderColorSpace()Z

    move-result v0

    return v0
.end method

.method public static greylist skipEglmanagerTelemetry()Z
    .registers 1

    .line 239
    sget-object v0, Lcom/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/hwui/flags/FeatureFlags;->skipEglmanagerTelemetry()Z

    move-result v0

    return v0
.end method
