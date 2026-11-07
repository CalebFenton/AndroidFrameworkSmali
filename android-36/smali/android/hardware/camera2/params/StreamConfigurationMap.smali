.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final greylist-max-o DURATION_20FPS_NS:J = 0x2faf080L

.field private static final greylist-max-o DURATION_MIN_FRAME:I = 0x0

.field private static final greylist-max-o DURATION_STALL:I = 0x1

.field public static final blacklist HAL_DATASPACE_ARBITRARY:I = 0x1

.field public static final greylist-max-o HAL_DATASPACE_DEPTH:I = 0x1000

.field public static final blacklist HAL_DATASPACE_DYNAMIC_DEPTH:I = 0x1002

.field public static final blacklist HAL_DATASPACE_HEIF:I = 0x1004

.field public static final blacklist HAL_DATASPACE_JFIF:I = 0x8c20000

.field public static final blacklist HAL_DATASPACE_JPEG_R:I = 0x1005

.field private static final greylist-max-o HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final greylist-max-o HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final greylist-max-o HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final greylist-max-o HAL_DATASPACE_UNKNOWN:I = 0x0

.field public static final greylist-max-o HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field public static final greylist-max-o HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final greylist-max-o HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final greylist-max-o HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final greylist-max-o HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final greylist-max-o HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final blacklist MAX_DIMEN_FOR_ROUNDING:I = 0x780

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final greylist-max-o mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final greylist-max-o mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicOutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final greylist-max-o mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final blacklist mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final blacklist mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final blacklist mJpegROutputFormats:Landroid/util/SparseIntArray;

.field private final blacklist mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mListHighResolution:Z

.field private final greylist-max-o mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final greylist-max-o mOutputFormats:Landroid/util/SparseIntArray;

.field private final greylist-max-o mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .registers 45
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "dynamicDepthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p8, "dynamicDepthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p9, "dynamicDepthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p10, "heicConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p11, "heicMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p12, "heicStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p13, "jpegRConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p14, "jpegRMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p15, "jpegRStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p16, "heicUltraHDRConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p17, "heicUltraHDRMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p18, "heicUltraHDRStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p19, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p20, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p21, "listHighResolution"    # Z

    .line 143
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v22}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 152
    return-void
.end method

.method public constructor blacklist <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V
    .registers 52
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "dynamicDepthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p8, "dynamicDepthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p9, "dynamicDepthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p10, "heicConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p11, "heicMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p12, "heicStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p13, "jpegRConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p14, "jpegRMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p15, "jpegRStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p16, "heicUltraHDRConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p17, "heicUltraHDRMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p18, "heicUltraHDRStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p19, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p20, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p21, "listHighResolution"    # Z
    .param p22, "enforceImplementationDefined"    # Z

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p16

    move-object/from16 v7, p19

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2219
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 2222
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 2224
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 2226
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 2228
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 2230
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 2232
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 2234
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 2236
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    .line 2239
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    .line 2242
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    .line 225
    if-nez v1, :cond_6f

    if-nez v2, :cond_6f

    if-eqz v4, :cond_67

    goto :goto_6f

    .line 228
    :cond_67
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "At least one of color/depth/heic configurations must not be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 232
    :cond_6f
    :goto_6f
    const/4 v8, 0x0

    if-nez v1, :cond_83

    .line 234
    new-array v9, v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 235
    new-array v9, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 236
    new-array v9, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    goto :goto_a5

    .line 238
    :cond_83
    const-string v9, "configurations"

    invoke-static {v1, v9}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 239
    const-string v9, "minFrameDurations"

    move-object/from16 v10, p2

    invoke-static {v10, v9}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 240
    const-string v9, "stallDurations"

    move-object/from16 v11, p3

    invoke-static {v11, v9}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 243
    :goto_a5
    move/from16 v9, p21

    iput-boolean v9, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    .line 245
    if-nez v2, :cond_bc

    .line 246
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 247
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 248
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    goto :goto_de

    .line 250
    :cond_bc
    const-string v12, "depthConfigurations"

    invoke-static {v2, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 252
    const-string v12, "depthMinFrameDurations"

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 254
    const-string v12, "depthStallDurations"

    move-object/from16 v14, p6

    invoke-static {v14, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 258
    :goto_de
    if-nez v3, :cond_f1

    .line 259
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 260
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 261
    new-array v12, v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v15, p8

    move-object/from16 v8, p9

    goto :goto_113

    .line 263
    :cond_f1
    const-string v12, "dynamicDepthConfigurations"

    invoke-static {v3, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 265
    const-string v12, "dynamicDepthMinFrameDurations"

    move-object/from16 v15, p8

    invoke-static {v15, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 267
    const-string v12, "dynamicDepthStallDurations"

    move-object/from16 v8, p9

    invoke-static {v8, v12}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v12, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 271
    :goto_113
    if-nez v4, :cond_127

    .line 272
    const/4 v12, 0x0

    new-array v1, v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 273
    new-array v1, v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 274
    new-array v1, v12, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v12, p11

    move-object/from16 v2, p12

    goto :goto_149

    .line 276
    :cond_127
    const-string v1, "heicConfigurations"

    invoke-static {v4, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 278
    const-string v1, "heicMinFrameDurations"

    move-object/from16 v12, p11

    invoke-static {v12, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 280
    const-string v1, "heicStallDurations"

    move-object/from16 v2, p12

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 284
    :goto_149
    if-eqz v6, :cond_178

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-nez v1, :cond_154

    move-object/from16 v2, p18

    goto :goto_17a

    .line 289
    :cond_154
    const-string v1, "heicUltraHDRConfigurations"

    invoke-static {v6, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 291
    const-string v1, "heicUltraHDRMinFrameDurations"

    move-object/from16 v2, p17

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 293
    const-string v1, "heicUltraHDRStallDurations"

    move-object/from16 v2, p18

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v1, 0x0

    goto :goto_187

    .line 284
    :cond_178
    move-object/from16 v2, p18

    .line 285
    :goto_17a
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 286
    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 287
    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 297
    :goto_187
    if-nez v5, :cond_198

    .line 298
    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 299
    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 300
    new-array v2, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v2, p15

    goto :goto_1ba

    .line 302
    :cond_198
    const-string v1, "jpegRConfigurations"

    invoke-static {v5, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 304
    const-string v1, "jpegRFrameDurations"

    move-object/from16 v2, p14

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 306
    const-string v1, "jpegRStallDurations"

    move-object/from16 v2, p15

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 310
    :goto_1ba
    if-nez v7, :cond_1c2

    .line 311
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    goto :goto_1cc

    .line 313
    :cond_1c2
    const-string v1, "highSpeedVideoConfigurations"

    invoke-static {v7, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 318
    :goto_1cc
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_1d2
    if-ge v1, v2, :cond_25f

    aget-object v18, v17, v1

    .line 319
    .local v18, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    move/from16 v19, v1

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v1

    .line 320
    .local v1, "fmt":I
    const/16 v20, 0x0

    .line 321
    .local v20, "map":Landroid/util/SparseIntArray;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v21

    if-eqz v21, :cond_24a

    .line 322
    move/from16 v21, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    const-wide/16 v2, 0x0

    .line 324
    .local v2, "duration":J
    move-wide/from16 v22, v2

    .end local v2    # "duration":J
    .local v22, "duration":J
    iget-boolean v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v2, :cond_237

    .line 325
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    array-length v3, v2

    move-object/from16 v24, v2

    const/4 v2, 0x0

    :goto_201
    if-ge v2, v3, :cond_237

    aget-object v25, v24, v2

    .line 326
    .local v25, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move/from16 v26, v2

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v2

    if-ne v2, v1, :cond_230

    .line 327
    invoke-virtual/range {v25 .. v25}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v27

    move/from16 v28, v3

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_232

    .line 328
    invoke-virtual/range {v25 .. v25}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_232

    .line 329
    invoke-virtual/range {v25 .. v25}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v2

    .line 330
    .end local v22    # "duration":J
    .restart local v2    # "duration":J
    goto :goto_239

    .line 326
    .end local v2    # "duration":J
    .restart local v22    # "duration":J
    :cond_230
    move/from16 v28, v3

    .line 325
    .end local v25    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_232
    add-int/lit8 v2, v26, 0x1

    move/from16 v3, v28

    goto :goto_201

    .line 334
    :cond_237
    move-wide/from16 v2, v22

    .end local v22    # "duration":J
    .restart local v2    # "duration":J
    :goto_239
    const-wide/32 v22, 0x2faf080

    cmp-long v22, v2, v22

    if-gtz v22, :cond_245

    .line 335
    move-wide/from16 v22, v2

    .end local v2    # "duration":J
    .restart local v22    # "duration":J
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_249

    .end local v22    # "duration":J
    .restart local v2    # "duration":J
    :cond_245
    move-wide/from16 v22, v2

    .end local v2    # "duration":J
    .restart local v22    # "duration":J
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    .line 336
    .end local v20    # "map":Landroid/util/SparseIntArray;
    .end local v22    # "duration":J
    .local v2, "map":Landroid/util/SparseIntArray;
    :goto_249
    goto :goto_24e

    .line 337
    .end local v2    # "map":Landroid/util/SparseIntArray;
    .restart local v20    # "map":Landroid/util/SparseIntArray;
    :cond_24a
    move/from16 v21, v2

    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    .line 339
    .end local v20    # "map":Landroid/util/SparseIntArray;
    .restart local v2    # "map":Landroid/util/SparseIntArray;
    :goto_24e
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    .end local v1    # "fmt":I
    .end local v2    # "map":Landroid/util/SparseIntArray;
    .end local v18    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v3, p7

    move/from16 v2, v21

    goto/16 :goto_1d2

    .line 343
    :cond_25f
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_263
    if-ge v3, v2, :cond_298

    aget-object v17, v1, v3

    .line 344
    .local v17, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v18

    if-nez v18, :cond_274

    .line 346
    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_28f

    .line 349
    :cond_274
    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    move/from16 v19, v2

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    move/from16 v20, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 350
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 349
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    .end local v17    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_28f
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v4, p10

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_263

    .line 352
    :cond_298
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_29c
    if-ge v3, v2, :cond_2d1

    aget-object v4, v1, v3

    .line 353
    .local v4, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v17

    if-nez v17, :cond_2ad

    .line 355
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_2ca

    .line 358
    :cond_2ad
    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    move/from16 v18, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    move/from16 v19, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    .line 359
    move-object/from16 v20, v4

    .end local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .local v20, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 358
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    .end local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_2ca
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_29c

    .line 363
    :cond_2d1
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d5
    if-ge v3, v2, :cond_30a

    aget-object v4, v1, v3

    .line 364
    .restart local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v17

    if-nez v17, :cond_2e6

    .line 366
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_303

    .line 369
    :cond_2e6
    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    move/from16 v18, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    move/from16 v19, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    .line 370
    move-object/from16 v20, v4

    .end local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    .end local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_303
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_2d5

    .line 373
    :cond_30a
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_349

    .line 375
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_314
    if-ge v3, v2, :cond_349

    aget-object v4, v1, v3

    .line 376
    .restart local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v17

    if-nez v17, :cond_325

    .line 378
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_342

    .line 381
    :cond_325
    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    move/from16 v18, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    move/from16 v19, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 382
    move-object/from16 v20, v4

    .end local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    .end local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_342
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_314

    .line 387
    :cond_349
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_34d
    if-ge v3, v2, :cond_382

    aget-object v4, v1, v3

    .line 388
    .restart local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v17

    if-nez v17, :cond_35e

    .line 390
    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_37b

    .line 393
    :cond_35e
    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    move/from16 v18, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v2

    move/from16 v19, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    .line 394
    move-object/from16 v20, v4

    .end local v4    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 393
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 387
    .end local v20    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_37b
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_34d

    .line 397
    :cond_382
    if-eqz p1, :cond_399

    if-eqz p22, :cond_399

    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    .line 398
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_391

    goto :goto_399

    .line 399
    :cond_391
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 404
    :cond_399
    :goto_399
    iget-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_39d
    if-ge v3, v2, :cond_3fd

    aget-object v4, v1, v3

    .line 405
    .local v4, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    move-object/from16 v17, v1

    invoke-virtual {v4}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 406
    .local v1, "size":Landroid/util/Size;
    move/from16 v18, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 407
    .local v2, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move/from16 v19, v3

    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 408
    .local v3, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v3, :cond_3bf

    .line 409
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 411
    :cond_3bf
    move-object/from16 v20, v3

    .end local v3    # "fpsRangeCount":Ljava/lang/Integer;
    .local v20, "fpsRangeCount":Ljava/lang/Integer;
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v4

    .end local v4    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .local v22, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 413
    .local v3, "sizeCount":Ljava/lang/Integer;
    if-nez v3, :cond_3e3

    .line 414
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3e5

    .line 413
    :cond_3e3
    const/16 v16, 0x0

    .line 416
    :goto_3e5
    iget-object v4, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v23, v1

    .end local v1    # "size":Landroid/util/Size;
    .local v23, "size":Landroid/util/Size;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .end local v2    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "sizeCount":Ljava/lang/Integer;
    .end local v20    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v22    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v23    # "size":Landroid/util/Size;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_39d

    .line 419
    :cond_3fd
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 420
    return-void
.end method

.method private greylist-max-o appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .registers 24
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1995
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "HighResolutionOutputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1997
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_5c

    aget v6, v2, v5

    .line 1998
    .local v6, "format":I
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 1999
    .local v7, "sizes":[Landroid/util/Size;
    if-nez v7, :cond_1a

    goto :goto_59

    .line 2000
    :cond_1a
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v8, :cond_59

    aget-object v10, v7, v9

    .line 2001
    .local v10, "size":Landroid/util/Size;
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v11

    .line 2002
    .local v11, "minFrameDuration":J
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 2003
    .local v13, "stallDuration":J
    nop

    .line 2004
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    .line 2005
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v15

    .line 2003
    const-string v4, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    .end local v10    # "size":Landroid/util/Size;
    .end local v11    # "minFrameDuration":J
    .end local v13    # "stallDuration":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 1997
    .end local v6    # "format":I
    .end local v7    # "sizes":[Landroid/util/Size;
    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2009
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_77

    .line 2010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2012
    :cond_77
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    return-void
.end method

.method private greylist-max-o appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2055
    const-string v0, "HighSpeedVideoConfigurations("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    .line 2057
    .local v0, "sizes":[Landroid/util/Size;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 2058
    .local v4, "size":Landroid/util/Size;
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    .line 2059
    .local v5, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v6, v5

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_42

    aget-object v8, v5, v7

    .line 2060
    .local v8, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2061
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 2060
    const-string v10, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    .end local v8    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2057
    .end local v4    # "size":Landroid/util/Size;
    .end local v5    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2065
    :cond_45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_60

    .line 2066
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2068
    :cond_60
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    return-void
.end method

.method private greylist-max-o appendInputsString(Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2016
    const-string v0, "Inputs("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 2018
    .local v0, "formats":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_45

    aget v4, v0, v3

    .line 2019
    .local v4, "format":I
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 2020
    .local v5, "sizes":[Landroid/util/Size;
    array-length v6, v5

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_42

    aget-object v8, v5, v7

    .line 2021
    .local v8, "size":Landroid/util/Size;
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2022
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 2021
    const-string v10, "[w:%d, h:%d, format:%s(%d)], "

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    .end local v8    # "size":Landroid/util/Size;
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 2018
    .end local v4    # "format":I
    .end local v5    # "sizes":[Landroid/util/Size;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2026
    :cond_45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_60

    .line 2027
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2029
    :cond_60
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    return-void
.end method

.method private greylist-max-o appendOutputsString(Ljava/lang/StringBuilder;)V
    .registers 24
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1975
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Outputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v2

    .line 1977
    .local v2, "formats":[I
    array-length v3, v2

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_59

    aget v6, v2, v5

    .line 1978
    .local v6, "format":I
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v7

    .line 1979
    .local v7, "sizes":[Landroid/util/Size;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v8, :cond_56

    aget-object v10, v7, v9

    .line 1980
    .local v10, "size":Landroid/util/Size;
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v11

    .line 1981
    .local v11, "minFrameDuration":J
    invoke-virtual {v0, v6, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 1982
    .local v13, "stallDuration":J
    nop

    .line 1983
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v18

    .line 1984
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v15

    .line 1982
    const-string v4, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    .end local v10    # "size":Landroid/util/Size;
    .end local v11    # "minFrameDuration":J
    .end local v13    # "stallDuration":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 1977
    .end local v6    # "format":I
    .end local v7    # "sizes":[Landroid/util/Size;
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1988
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_74

    .line 1989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1991
    :cond_74
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    return-void
.end method

.method private greylist-max-o appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 2033
    const-string v0, "ValidOutputFormatsForInput("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    .line 2035
    .local v0, "inputFormats":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_5a

    aget v3, v0, v2

    .line 2036
    .local v3, "inputFormat":I
    invoke-static {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "[in:%s(%d), out:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v4

    .line 2038
    .local v4, "outputFormats":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_29
    array-length v6, v4

    if-ge v5, v6, :cond_52

    .line 2039
    aget v6, v4, v5

    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v4, v5

    .line 2040
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 2039
    const-string v7, "%s(%d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4f

    .line 2042
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 2045
    .end local v5    # "i":I
    :cond_52
    const-string v5, "], "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    .end local v3    # "inputFormat":I
    .end local v4    # "outputFormats":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2048
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_75

    .line 2049
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2051
    :cond_75
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    return-void
.end method

.method private static greylist-max-o arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1874
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1875
    return v0

    .line 1878
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 1879
    .local v3, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1880
    const/4 v0, 0x1

    return v0

    .line 1878
    .end local v3    # "el":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1884
    :cond_15
    return v0
.end method

.method static greylist-max-o checkArgumentFormat(I)I
    .registers 4
    .param p0, "format"    # I

    .line 1371
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_21

    .line 1372
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1373
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1372
    const-string v2, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_21
    :goto_21
    return p0
.end method

.method static greylist-max-o checkArgumentFormatInternal(I)I
    .registers 4
    .param p0, "format"    # I

    .line 1335
    sparse-switch p0, :sswitch_data_22

    .line 1346
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result v0

    return v0

    .line 1343
    :sswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An unknown internal format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :sswitch_21
    return p0

    :sswitch_data_22
    .sparse-switch
        0x21 -> :sswitch_21
        0x22 -> :sswitch_21
        0x24 -> :sswitch_21
        0x100 -> :sswitch_8
        0x20363159 -> :sswitch_21
        0x48454946 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o checkArgumentFormatSupported(IZ)I
    .registers 8
    .param p1, "format"    # I
    .param p2, "output"    # Z

    .line 1273
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 1275
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1276
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1278
    .local v1, "internalDataspace":I
    if-eqz p2, :cond_5d

    .line 1279
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1280
    const/16 v2, 0x1006

    if-ne v1, v2, :cond_20

    .line 1281
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_20

    .line 1282
    return p1

    .line 1286
    :cond_20
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2d

    .line 1287
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1288
    return p1

    .line 1290
    :cond_2d
    const/16 v2, 0x1002

    if-ne v1, v2, :cond_3a

    .line 1291
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1292
    return p1

    .line 1294
    :cond_3a
    const/16 v2, 0x1004

    if-ne v1, v2, :cond_47

    .line 1295
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1296
    return p1

    .line 1298
    :cond_47
    const/16 v2, 0x1005

    if-ne v1, v2, :cond_54

    .line 1299
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1300
    return p1

    .line 1303
    :cond_54
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1304
    return p1

    .line 1308
    :cond_5d
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_66

    .line 1309
    return p1

    .line 1313
    :cond_66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1313
    const-string v4, "format %x is not supported by this stream configuration map"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist compareSizes(IIII)I
    .registers 10
    .param p0, "widthA"    # I
    .param p1, "heightA"    # I
    .param p2, "widthB"    # I
    .param p3, "heightB"    # I

    .line 1965
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 1966
    .local v0, "left":J
    int-to-long v2, p2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    .line 1967
    .local v2, "right":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 1968
    int-to-long v0, p0

    .line 1969
    int-to-long v2, p2

    .line 1971
    :cond_c
    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    const/4 v4, -0x1

    goto :goto_19

    :cond_12
    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    return v4
.end method

.method public static greylist-max-o depthFormatToPublic(I)I
    .registers 4
    .param p0, "format"    # I

    .line 1455
    sparse-switch p0, :sswitch_data_3a

    .line 1471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DATASPACE_DEPTH format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :sswitch_1c
    const v0, 0x44363159

    return v0

    .line 1465
    :sswitch_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :sswitch_28
    const/16 v0, 0x1003

    return v0

    .line 1468
    :sswitch_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :sswitch_33
    const/16 v0, 0x101

    return v0

    .line 1461
    :sswitch_36
    const/16 v0, 0x1002

    return v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x20 -> :sswitch_36
        0x21 -> :sswitch_33
        0x22 -> :sswitch_2b
        0x25 -> :sswitch_28
        0x100 -> :sswitch_20
        0x20363159 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o formatToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "format"    # I

    .line 2075
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2076
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_d

    .line 2077
    const-string v0, "HEIC_ULTRAHDR"

    return-object v0

    .line 2080
    :cond_d
    sparse-switch p0, :sswitch_data_58

    .line 2128
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2116
    :sswitch_13
    const-string v0, "DEPTH_JPEG"

    return-object v0

    .line 2124
    :sswitch_16
    const-string v0, "HEIC"

    return-object v0

    .line 2112
    :sswitch_19
    const-string v0, "DEPTH16"

    return-object v0

    .line 2082
    :sswitch_1c
    const-string v0, "YV12"

    return-object v0

    .line 2104
    :sswitch_1f
    const-string v0, "Y16"

    return-object v0

    .line 2102
    :sswitch_22
    const-string v0, "Y8"

    return-object v0

    .line 2126
    :sswitch_25
    const-string v0, "JPEG/R"

    return-object v0

    .line 2120
    :sswitch_28
    const-string v0, "RAW_DEPTH10"

    return-object v0

    .line 2118
    :sswitch_2b
    const-string v0, "RAW_DEPTH"

    return-object v0

    .line 2114
    :sswitch_2e
    const-string v0, "DEPTH_POINT_CLOUD"

    return-object v0

    .line 2098
    :sswitch_31
    const-string v0, "JPEG"

    return-object v0

    .line 2110
    :sswitch_34
    const-string v0, "RAW10"

    return-object v0

    .line 2108
    :sswitch_37
    const-string v0, "RAW_PRIVATE"

    return-object v0

    .line 2084
    :sswitch_3a
    const-string v0, "YUV_420_888"

    return-object v0

    .line 2122
    :sswitch_3d
    const-string v0, "PRIVATE"

    return-object v0

    .line 2106
    :sswitch_40
    const-string v0, "RAW_SENSOR"

    return-object v0

    .line 2100
    :sswitch_43
    const-string v0, "YUY2"

    return-object v0

    .line 2086
    :sswitch_46
    const-string v0, "NV21"

    return-object v0

    .line 2088
    :sswitch_49
    const-string v0, "NV16"

    return-object v0

    .line 2090
    :sswitch_4c
    const-string v0, "RGB_565"

    return-object v0

    .line 2096
    :sswitch_4f
    const-string v0, "RGB_888"

    return-object v0

    .line 2094
    :sswitch_52
    const-string v0, "RGBX_8888"

    return-object v0

    .line 2092
    :sswitch_55
    const-string v0, "RGBA_8888"

    return-object v0

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_52
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4c
        0x10 -> :sswitch_49
        0x11 -> :sswitch_46
        0x14 -> :sswitch_43
        0x20 -> :sswitch_40
        0x22 -> :sswitch_3d
        0x23 -> :sswitch_3a
        0x24 -> :sswitch_37
        0x25 -> :sswitch_34
        0x100 -> :sswitch_31
        0x101 -> :sswitch_2e
        0x1002 -> :sswitch_2b
        0x1003 -> :sswitch_28
        0x1005 -> :sswitch_25
        0x20203859 -> :sswitch_22
        0x20363159 -> :sswitch_1f
        0x32315659 -> :sswitch_1c
        0x44363159 -> :sswitch_19
        0x48454946 -> :sswitch_16
        0x69656963 -> :sswitch_13
    .end sparse-switch
.end method

.method private greylist-max-o getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .registers 8
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    .line 1830
    const/4 v0, 0x0

    .line 1831
    .local v0, "isDataSpaceHeifUltraHDR":Z
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1832
    const/16 v1, 0x1006

    if-ne p2, v1, :cond_c

    .line 1833
    const/4 v0, 0x1

    .line 1836
    :cond_c
    const/16 v1, 0x1005

    const/16 v2, 0x1004

    const/16 v3, 0x1002

    const/16 v4, 0x1000

    packed-switch p1, :pswitch_data_58

    .line 1854
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duration was invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1847
    :pswitch_1f
    if-ne p2, v4, :cond_24

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3a

    .line 1848
    :cond_24
    if-ne p2, v3, :cond_29

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3a

    .line 1849
    :cond_29
    if-ne p2, v2, :cond_2e

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3a

    .line 1850
    :cond_2e
    if-eqz v0, :cond_33

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3a

    .line 1851
    :cond_33
    if-ne p2, v1, :cond_38

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_3a

    .line 1852
    :cond_38
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1847
    :goto_3a
    return-object v1

    .line 1838
    :pswitch_3b
    if-ne p2, v4, :cond_40

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1839
    :cond_40
    if-ne p2, v3, :cond_45

    .line 1840
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1841
    :cond_45
    if-ne p2, v2, :cond_4a

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1842
    :cond_4a
    if-eqz v0, :cond_4f

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1843
    :cond_4f
    if-ne p2, v1, :cond_54

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1844
    :cond_54
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1838
    :goto_56
    return-object v1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method

.method private greylist-max-o getFormatsMap(Z)Landroid/util/SparseIntArray;
    .registers 3
    .param p1, "output"    # Z

    .line 1800
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    :goto_7
    return-object v0
.end method

.method private greylist-max-o getInternalFormatDuration(IILandroid/util/Size;I)J
    .registers 11
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    .line 1806
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1810
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-result-object v0

    .line 1812
    .local v0, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    .line 1813
    .local v3, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v4

    if-ne v4, p1, :cond_2f

    .line 1814
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2f

    .line 1815
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_2f

    .line 1816
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v1

    return-wide v1

    .line 1812
    .end local v3    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1820
    :cond_32
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1807
    .end local v0    # "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .registers 26
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    .line 1661
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/16 v6, 0x1000

    if-ne v2, v6, :cond_14

    if-eqz v4, :cond_14

    .line 1662
    new-array v5, v5, [Landroid/util/Size;

    return-object v5

    .line 1666
    :cond_14
    const/16 v7, 0x1005

    const/16 v8, 0x1004

    const/16 v9, 0x1002

    if-nez v3, :cond_1f

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1667
    :cond_1f
    if-ne v2, v6, :cond_24

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1668
    :cond_24
    if-ne v2, v9, :cond_29

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1669
    :cond_29
    if-ne v2, v8, :cond_2e

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1670
    :cond_2e
    if-ne v2, v7, :cond_33

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1671
    :cond_33
    if-eqz v4, :cond_38

    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    goto :goto_3a

    .line 1672
    :cond_38
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    :goto_3a
    nop

    .line 1673
    .local v10, "formatsMap":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .line 1674
    .local v11, "isDataSpaceHeifUltraHDR":Z
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v12

    if-eqz v12, :cond_49

    .line 1675
    const/16 v12, 0x1006

    if-ne v2, v12, :cond_49

    .line 1676
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    .line 1677
    const/4 v11, 0x1

    .line 1680
    :cond_49
    invoke-virtual {v10, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 1681
    .local v12, "sizesCount":I
    if-eqz v3, :cond_59

    if-eq v2, v6, :cond_59

    if-eq v2, v7, :cond_59

    if-eq v2, v9, :cond_59

    if-eq v2, v8, :cond_59

    if-eqz v11, :cond_5b

    :cond_59
    if-eqz v12, :cond_199

    :cond_5b
    if-eqz v3, :cond_71

    if-eq v2, v6, :cond_71

    if-eq v2, v7, :cond_71

    if-eq v2, v9, :cond_71

    if-nez v11, :cond_71

    if-eq v2, v8, :cond_71

    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    .line 1689
    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_71

    goto/16 :goto_199

    .line 1693
    :cond_71
    new-array v13, v12, [Landroid/util/Size;

    .line 1694
    .local v13, "sizes":[Landroid/util/Size;
    const/4 v14, 0x0

    .line 1697
    .local v14, "sizeIndex":I
    if-ne v2, v6, :cond_79

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_8f

    .line 1698
    :cond_79
    if-ne v2, v9, :cond_7e

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_8f

    .line 1699
    :cond_7e
    if-ne v2, v8, :cond_83

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_8f

    .line 1700
    :cond_83
    if-ne v2, v7, :cond_88

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_8f

    .line 1701
    :cond_88
    if-eqz v11, :cond_8d

    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_8f

    .line 1702
    :cond_8d
    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_8f
    nop

    .line 1704
    .local v15, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    if-ne v2, v6, :cond_95

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1705
    :cond_95
    if-ne v2, v9, :cond_9a

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1706
    :cond_9a
    if-ne v2, v8, :cond_9f

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1707
    :cond_9f
    if-ne v2, v7, :cond_a4

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1708
    :cond_a4
    if-eqz v11, :cond_a9

    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_ab

    .line 1709
    :cond_a9
    iget-object v5, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    :goto_ab
    nop

    .line 1711
    .local v5, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    array-length v7, v15

    const/4 v8, 0x0

    :goto_ae
    if-ge v8, v7, :cond_127

    aget-object v16, v15, v8

    .line 1712
    .local v16, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v9

    .line 1713
    .local v9, "fmt":I
    if-ne v9, v1, :cond_11c

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v6

    if-ne v6, v3, :cond_119

    .line 1714
    if-eqz v3, :cond_10d

    iget-boolean v6, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-eqz v6, :cond_10d

    .line 1717
    const-wide/16 v17, 0x0

    .line 1718
    .local v17, "duration":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c7
    array-length v0, v5

    if-ge v6, v0, :cond_fc

    .line 1719
    aget-object v0, v5, v6

    .line 1720
    .local v0, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    move-object/from16 v19, v0

    .end local v0    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v19, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    move-result v0

    if-ne v0, v9, :cond_f5

    .line 1721
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_f5

    .line 1722
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_f5

    .line 1723
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    move-result-wide v17

    .line 1724
    goto :goto_fc

    .line 1718
    .end local v19    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_c7

    .line 1727
    .end local v6    # "i":I
    :cond_fc
    :goto_fc
    const/16 v0, 0x1000

    if-eq v2, v0, :cond_10f

    const-wide/32 v19, 0x2faf080

    cmp-long v1, v17, v19

    if-lez v1, :cond_109

    const/4 v1, 0x1

    goto :goto_10a

    :cond_109
    const/4 v1, 0x0

    :goto_10a
    if-eq v4, v1, :cond_10f

    .line 1729
    goto :goto_11d

    .line 1714
    .end local v17    # "duration":J
    :cond_10d
    const/16 v0, 0x1000

    .line 1732
    :cond_10f
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "sizeIndex":I
    .local v1, "sizeIndex":I
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v6

    aput-object v6, v13, v14

    move v14, v1

    goto :goto_11d

    .line 1713
    .end local v1    # "sizeIndex":I
    .restart local v14    # "sizeIndex":I
    :cond_119
    const/16 v0, 0x1000

    goto :goto_11d

    :cond_11c
    move v0, v6

    .line 1711
    .end local v9    # "fmt":I
    .end local v16    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_11d
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x1002

    move/from16 v1, p1

    move v6, v0

    move-object/from16 v0, p0

    goto :goto_ae

    .line 1737
    :cond_127
    const-string v0, ")"

    const-string v1, ", actual "

    if-eq v14, v12, :cond_135

    const/16 v6, 0x1002

    if-eq v2, v6, :cond_164

    const/16 v6, 0x1004

    if-eq v2, v6, :cond_164

    :cond_135
    const/16 v6, 0x1005

    if-eq v2, v6, :cond_164

    if-eqz v11, :cond_13c

    goto :goto_164

    .line 1752
    :cond_13c
    if-ne v14, v12, :cond_13f

    goto :goto_173

    .line 1753
    :cond_13f
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too few sizes (expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1741
    :cond_164
    :goto_164
    if-gt v14, v12, :cond_174

    .line 1747
    if-gtz v14, :cond_16c

    .line 1748
    const/4 v0, 0x0

    new-array v13, v0, [Landroid/util/Size;

    goto :goto_173

    .line 1750
    :cond_16c
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Landroid/util/Size;

    .line 1757
    :goto_173
    return-object v13

    .line 1742
    :cond_174
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many dynamic depth sizes (expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1690
    .end local v5    # "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v13    # "sizes":[Landroid/util/Size;
    .end local v14    # "sizeIndex":I
    .end local v15    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_199
    :goto_199
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getPublicFormatCount(Z)I
    .registers 5
    .param p1, "output"    # Z

    .line 1860
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1861
    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1862
    .local v1, "size":I
    if-eqz p1, :cond_2d

    .line 1863
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1864
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1865
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1866
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1867
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1870
    :cond_2d
    return v1
.end method

.method private greylist-max-o getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .registers 7
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    .line 1647
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_11

    .line 1650
    nop

    .line 1652
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1653
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1655
    .local v1, "dataspace":I
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v2

    return-object v2

    .line 1648
    .end local v0    # "internalFormat":I
    .end local v1    # "dataspace":I
    :catch_11
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getPublicFormats(Z)[I
    .registers 9
    .param p1, "output"    # Z

    .line 1762
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    move-result v0

    new-array v0, v0, [I

    .line 1764
    .local v0, "formats":[I
    const/4 v1, 0x0

    .line 1766
    .local v1, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1767
    .local v2, "map":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 1768
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1769
    .local v4, "format":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v6

    aput v6, v0, v1

    .line 1767
    .end local v4    # "format":I
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_c

    .line 1771
    .end local v3    # "j":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_22
    if-eqz p1, :cond_83

    .line 1772
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_25
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 1773
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    iget-object v5, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v5

    aput v5, v0, v1

    .line 1772
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_25

    .line 1775
    .end local v3    # "j":I
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_3f
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_4f

    .line 1777
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const v4, 0x69656963

    aput v4, v0, v1

    move v1, v3

    .line 1779
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_4f
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_5f

    .line 1780
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    const v4, 0x48454946

    aput v4, v0, v1

    move v1, v3

    .line 1782
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_5f
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1783
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_74

    .line 1784
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    const/16 v4, 0x1006

    aput v4, v0, v1

    move v1, v3

    .line 1787
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_74
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_83

    .line 1788
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    const/16 v4, 0x1005

    aput v4, v0, v1

    move v1, v3

    .line 1791
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_83
    array-length v3, v0

    if-ne v3, v1, :cond_87

    .line 1795
    return-object v0

    .line 1792
    :cond_87
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too few formats "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method static greylist-max-o imageFormatToDataspace(I)I
    .registers 2
    .param p0, "format"    # I

    .line 1592
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1593
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_b

    .line 1594
    return v0

    .line 1597
    :cond_b
    const/high16 v0, 0x8c20000

    sparse-switch p0, :sswitch_data_22

    .line 1619
    const/4 v0, 0x0

    return v0

    .line 1606
    :sswitch_12
    const/16 v0, 0x1002

    return v0

    .line 1608
    :sswitch_15
    const/16 v0, 0x1004

    return v0

    .line 1610
    :sswitch_18
    const/16 v0, 0x1005

    return v0

    .line 1604
    :sswitch_1b
    const/16 v0, 0x1000

    return v0

    .line 1599
    :sswitch_1e
    return v0

    .line 1612
    :sswitch_1f
    return v0

    .line 1617
    :sswitch_20
    const/4 v0, 0x1

    return v0

    :sswitch_data_22
    .sparse-switch
        0x20 -> :sswitch_20
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_20
        0x25 -> :sswitch_20
        0x26 -> :sswitch_20
        0x100 -> :sswitch_1e
        0x101 -> :sswitch_1b
        0x1002 -> :sswitch_1b
        0x1003 -> :sswitch_1b
        0x1005 -> :sswitch_18
        0x44363159 -> :sswitch_1b
        0x48454946 -> :sswitch_15
        0x69656963 -> :sswitch_12
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToInternal(I)I
    .registers 3
    .param p0, "format"    # I

    .line 1529
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_d

    .line 1530
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_d

    .line 1531
    return v1

    .line 1534
    :cond_d
    sparse-switch p0, :sswitch_data_1c

    .line 1548
    return p0

    .line 1542
    :sswitch_11
    const v0, 0x20363159

    return v0

    .line 1546
    :sswitch_15
    const/16 v0, 0x25

    return v0

    .line 1544
    :sswitch_18
    const/16 v0, 0x20

    return v0

    .line 1540
    :sswitch_1b
    return v1

    :sswitch_data_1c
    .sparse-switch
        0x100 -> :sswitch_1b
        0x101 -> :sswitch_1b
        0x1002 -> :sswitch_18
        0x1003 -> :sswitch_15
        0x1005 -> :sswitch_1b
        0x44363159 -> :sswitch_11
        0x48454946 -> :sswitch_1b
        0x69656963 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static greylist-max-o imageFormatToInternal([I)[I
    .registers 3
    .param p0, "formats"    # [I

    .line 1634
    if-nez p0, :cond_4

    .line 1635
    const/4 v0, 0x0

    return-object v0

    .line 1638
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1639
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    aput v1, p0, v0

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1642
    .end local v0    # "i":I
    :cond_13
    return-object p0
.end method

.method public static greylist-max-o imageFormatToPublic(I)I
    .registers 3
    .param p0, "format"    # I

    .line 1411
    sparse-switch p0, :sswitch_data_10

    .line 1418
    return p0

    .line 1415
    :sswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageFormat.JPEG is an unknown internal format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :sswitch_c
    const/16 v0, 0x100

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x21 -> :sswitch_c
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method static greylist-max-o imageFormatToPublic([I)[I
    .registers 3
    .param p0, "formats"    # [I

    .line 1485
    if-nez p0, :cond_4

    .line 1486
    const/4 v0, 0x0

    return-object v0

    .line 1489
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1490
    aget v1, p0, v0

    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v1

    aput v1, p0, v0

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1493
    .end local v0    # "i":I
    :cond_13
    return-object p0
.end method

.method public static whitelist isOutputSupportedFor(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 588
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    const-class v0, Landroid/media/ImageReader;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_b

    .line 591
    return v1

    .line 592
    :cond_b
    const-class v0, Landroid/media/MediaRecorder;

    if-ne p0, v0, :cond_10

    .line 593
    return v1

    .line 594
    :cond_10
    const-class v0, Landroid/media/MediaCodec;

    if-ne p0, v0, :cond_15

    .line 595
    return v1

    .line 596
    :cond_15
    const-class v0, Landroid/renderscript/Allocation;

    if-ne p0, v0, :cond_1a

    .line 597
    return v1

    .line 598
    :cond_1a
    const-class v0, Landroid/view/SurfaceHolder;

    if-ne p0, v0, :cond_1f

    .line 599
    return v1

    .line 600
    :cond_1f
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_24

    .line 601
    return v1

    .line 604
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .registers 8
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    .line 1888
    const/4 v0, 0x0

    .line 1889
    .local v0, "isDataSpaceHeifUltraHDR":Z
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1890
    const/16 v1, 0x1006

    if-ne p2, v1, :cond_c

    .line 1891
    const/4 v0, 0x1

    .line 1895
    :cond_c
    const/16 v1, 0x1000

    if-ne p2, v1, :cond_13

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_2f

    .line 1896
    :cond_13
    const/16 v1, 0x1002

    if-ne p2, v1, :cond_1a

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_2f

    .line 1897
    :cond_1a
    const/16 v1, 0x1004

    if-ne p2, v1, :cond_21

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_2f

    .line 1898
    :cond_21
    const/16 v1, 0x1005

    if-ne p2, v1, :cond_28

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_2f

    .line 1899
    :cond_28
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_2f

    .line 1900
    :cond_2d
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_2f
    nop

    .line 1902
    .local v1, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    array-length v3, v1

    if-ge v2, v3, :cond_4d

    .line 1903
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v3

    if-ne v3, p1, :cond_4a

    aget-object v3, v1, v2

    .line 1904
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1905
    const/4 v3, 0x1

    return v3

    .line 1902
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1909
    .end local v2    # "i":I
    :cond_4d
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1219
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1220
    return v0

    .line 1222
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1223
    return v1

    .line 1225
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_d1

    .line 1226
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1228
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1229
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1230
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1231
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1232
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1233
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1234
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1235
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1237
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1238
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1239
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1240
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1241
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1242
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1244
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1245
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1246
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1247
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    iget-object v4, v2, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1248
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    move v0, v1

    goto :goto_d0

    :cond_cf
    nop

    .line 1228
    :goto_d0
    return v0

    .line 1251
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_d1
    return v0
.end method

.method public whitelist getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .registers 3
    .param p1, "format"    # I

    .line 975
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 977
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 919
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    return-object v1
.end method

.method public whitelist getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .registers 11
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 851
    .local v0, "fpsRangeCount":Ljava/lang/Integer;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_36

    .line 857
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    .line 858
    .local v1, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 859
    .local v2, "i":I
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    .line 860
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 861
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v8

    aput-object v8, v1, v2

    move v2, v7

    .line 859
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 864
    :cond_35
    return-object v1

    .line 852
    .end local v1    # "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Size %s does not support high speed video recording"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getHighSpeedVideoSizes()[Landroid/util/Size;
    .registers 3

    .line 823
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 824
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    return-object v1
.end method

.method public whitelist getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 936
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 937
    .local v0, "sizeCount":Ljava/lang/Integer;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_36

    .line 942
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v1, v1, [Landroid/util/Size;

    .line 943
    .local v1, "sizes":[Landroid/util/Size;
    const/4 v2, 0x0

    .line 944
    .local v2, "i":I
    iget-object v3, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    .line 945
    .local v6, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 946
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    move-result-object v8

    aput-object v8, v1, v2

    move v2, v7

    .line 944
    .end local v6    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 949
    :cond_35
    return-object v1

    .line 938
    .end local v1    # "sizes":[Landroid/util/Size;
    .end local v2    # "i":I
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "FpsRange %s does not support high speed video recording"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getInputFormats()[I
    .registers 2

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputSizes(I)[Landroid/util/Size;
    .registers 3
    .param p1, "format"    # I

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputFormats()[I
    .registers 2

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputMinFrameDuration(ILandroid/util/Size;)J
    .registers 6
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 1018
    const-string v0, "size must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1019
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 1021
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 1022
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 1021
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 5
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 1071
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1075
    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 1072
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOutputSizes(I)[Landroid/util/Size;
    .registers 4
    .param p1, "format"    # I

    .line 781
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 749
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 750
    const/4 v0, 0x0

    return-object v0

    .line 753
    :cond_8
    const/16 v0, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputStallDuration(ILandroid/util/Size;)J
    .registers 6
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    .line 1164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    .line 1166
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v1

    .line 1167
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    .line 1166
    invoke-direct {p0, v1, v2, p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .registers 6
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    .line 1201
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1205
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x22

    invoke-direct {p0, v2, v0, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    move-result-wide v0

    return-wide v0

    .line 1202
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "klass was not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValidOutputFormatsForInput(I)[I
    .registers 6
    .param p1, "inputFormat"    # I

    .line 461
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    if-nez v0, :cond_8

    .line 462
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 465
    :cond_8
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v0

    .line 466
    .local v0, "outputs":[I
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 468
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 469
    .local v1, "outputsWithHeic":[I
    array-length v2, v0

    const v3, 0x48454946

    aput v3, v1, v2

    .line 470
    return-object v1

    .line 472
    .end local v1    # "outputsWithHeic":[I
    :cond_24
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1260
    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isOutputSupportedFor(I)Z
    .registers 7
    .param p1, "format"    # I

    .line 529
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    .line 531
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 532
    .local v0, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 533
    .local v1, "dataspace":I
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_21

    .line 534
    const/16 v2, 0x1006

    if-ne v1, v2, :cond_21

    .line 535
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_20

    move v3, v4

    :cond_20
    return v3

    .line 538
    :cond_21
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2f

    .line 539
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2e

    move v3, v4

    :cond_2e
    return v3

    .line 540
    :cond_2f
    const/16 v2, 0x1002

    if-ne v1, v2, :cond_3d

    .line 541
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3c

    move v3, v4

    :cond_3c
    return v3

    .line 542
    :cond_3d
    const/16 v2, 0x1004

    if-ne v1, v2, :cond_4b

    .line 543
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicOutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4a

    move v3, v4

    :cond_4a
    return v3

    .line 544
    :cond_4b
    const/16 v2, 0x1005

    if-ne v1, v2, :cond_59

    .line 545
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegROutputFormats:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_58

    move v3, v4

    :cond_58
    return v3

    .line 547
    :cond_59
    invoke-direct {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_64

    move v3, v4

    :cond_64
    return v3
.end method

.method public blacklist isOutputSupportedFor(Landroid/util/Size;I)Z
    .registers 11
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "format"    # I

    .line 697
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 698
    .local v0, "internalFormat":I
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v1

    .line 701
    .local v1, "dataspace":I
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_f

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 702
    :cond_f
    const/16 v2, 0x1002

    if-ne v1, v2, :cond_16

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 703
    :cond_16
    const/16 v2, 0x1004

    if-ne v1, v2, :cond_1d

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 704
    :cond_1d
    const/16 v2, 0x1005

    if-ne v1, v2, :cond_24

    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_26

    .line 705
    :cond_24
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_26
    nop

    .line 706
    .local v2, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 707
    const/16 v3, 0x1006

    if-ne v1, v3, :cond_33

    .line 708
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 711
    :cond_33
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_36
    if-ge v5, v3, :cond_55

    aget-object v6, v2, v5

    .line 712
    .local v6, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v7

    if-ne v7, v0, :cond_52

    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 713
    invoke-virtual {v6}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 714
    const/4 v3, 0x1

    return v3

    .line 711
    .end local v6    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 718
    :cond_55
    return v4
.end method

.method public whitelist isOutputSupportedFor(Landroid/view/Surface;)Z
    .registers 14
    .param p1, "surface"    # Landroid/view/Surface;

    .line 647
    const-string v0, "surface must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 649
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 650
    .local v0, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    .line 651
    .local v1, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    .line 654
    .local v2, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    move-result v3

    .line 657
    .local v3, "isFlexible":Z
    const/16 v4, 0x1000

    if-ne v2, v4, :cond_1c

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 658
    :cond_1c
    const/16 v4, 0x1002

    if-ne v2, v4, :cond_23

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDynamicDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 659
    :cond_23
    const/16 v4, 0x1004

    if-ne v2, v4, :cond_2a

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 660
    :cond_2a
    const/16 v4, 0x1005

    if-ne v2, v4, :cond_31

    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mJpegRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    goto :goto_33

    .line 661
    :cond_31
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    :goto_33
    nop

    .line 662
    .local v4, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 663
    const/16 v5, 0x1006

    if-ne v2, v5, :cond_40

    .line 664
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHeicUltraHDRConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 667
    :cond_40
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_43
    if-ge v7, v5, :cond_71

    aget-object v8, v4, v7

    .line 668
    .local v8, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v9

    if-ne v9, v1, :cond_6e

    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 671
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_5f

    .line 672
    return v10

    .line 673
    :cond_5f
    if-eqz v3, :cond_6e

    .line 674
    invoke-virtual {v8}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    const/16 v11, 0x780

    if-gt v9, v11, :cond_6e

    .line 675
    return v10

    .line 667
    .end local v8    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 679
    :cond_71
    return v6
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamConfiguration("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1945
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    .line 1946
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    .line 1948
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    .line 1950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    .line 1952
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    .line 1954
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
