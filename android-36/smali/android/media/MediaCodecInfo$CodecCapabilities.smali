.class public final Landroid/media/MediaCodecInfo$CodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_Format12bitRGB444:I = 0x3

.field public static final whitelist COLOR_Format16bitARGB1555:I = 0x5

.field public static final whitelist COLOR_Format16bitARGB4444:I = 0x4

.field public static final whitelist COLOR_Format16bitBGR565:I = 0x7

.field public static final whitelist COLOR_Format16bitRGB565:I = 0x6

.field public static final whitelist COLOR_Format18BitBGR666:I = 0x29

.field public static final whitelist COLOR_Format18bitARGB1665:I = 0x9

.field public static final whitelist COLOR_Format18bitRGB666:I = 0x8

.field public static final whitelist COLOR_Format19bitARGB1666:I = 0xa

.field public static final whitelist COLOR_Format24BitABGR6666:I = 0x2b

.field public static final whitelist COLOR_Format24BitARGB6666:I = 0x2a

.field public static final whitelist COLOR_Format24bitARGB1887:I = 0xd

.field public static final whitelist COLOR_Format24bitBGR888:I = 0xc

.field public static final whitelist COLOR_Format24bitRGB888:I = 0xb

.field public static final whitelist COLOR_Format25bitARGB1888:I = 0xe

.field public static final whitelist COLOR_Format32bitABGR2101010:I = 0x7f00aaa2

.field public static final whitelist COLOR_Format32bitABGR8888:I = 0x7f00a000

.field public static final whitelist COLOR_Format32bitARGB8888:I = 0x10

.field public static final whitelist COLOR_Format32bitBGRA8888:I = 0xf

.field public static final whitelist COLOR_Format64bitABGRFloat:I = 0x7f000f16

.field public static final whitelist COLOR_Format8bitRGB332:I = 0x2

.field public static final whitelist COLOR_FormatCbYCrY:I = 0x1b

.field public static final whitelist COLOR_FormatCrYCbY:I = 0x1c

.field public static final whitelist COLOR_FormatL16:I = 0x24

.field public static final whitelist COLOR_FormatL2:I = 0x21

.field public static final whitelist COLOR_FormatL24:I = 0x25

.field public static final whitelist COLOR_FormatL32:I = 0x26

.field public static final whitelist COLOR_FormatL4:I = 0x22

.field public static final whitelist COLOR_FormatL8:I = 0x23

.field public static final whitelist COLOR_FormatMonochrome:I = 0x1

.field public static final whitelist COLOR_FormatRGBAFlexible:I = 0x7f36a888

.field public static final whitelist COLOR_FormatRGBFlexible:I = 0x7f36b888

.field public static final whitelist COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final whitelist COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final whitelist COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final whitelist COLOR_FormatSurface:I = 0x7f000789

.field public static final whitelist COLOR_FormatYCbYCr:I = 0x19

.field public static final whitelist COLOR_FormatYCrYCb:I = 0x1a

.field public static final whitelist COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final whitelist COLOR_FormatYUV411Planar:I = 0x11

.field public static final whitelist COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final whitelist COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final whitelist COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final whitelist COLOR_FormatYUV420Planar:I = 0x13

.field public static final whitelist COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final whitelist COLOR_FormatYUV422Flexible:I = 0x7f422888

.field public static final whitelist COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final whitelist COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final whitelist COLOR_FormatYUV422Planar:I = 0x16

.field public static final whitelist COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final whitelist COLOR_FormatYUV444Flexible:I = 0x7f444888

.field public static final whitelist COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final whitelist COLOR_FormatYUVP010:I = 0x36

.field public static final whitelist COLOR_FormatYUVP210:I = 0x3c

.field public static final whitelist COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final whitelist COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final whitelist FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final whitelist FEATURE_DetachedSurface:Ljava/lang/String; = "detached-surface"

.field public static final whitelist FEATURE_DynamicColorAspects:Ljava/lang/String; = "dynamic-color-aspects"

.field public static final whitelist FEATURE_DynamicTimestamp:Ljava/lang/String; = "dynamic-timestamp"

.field public static final whitelist FEATURE_EncodingStatistics:Ljava/lang/String; = "encoding-statistics"

.field public static final whitelist FEATURE_FrameParsing:Ljava/lang/String; = "frame-parsing"

.field public static final whitelist FEATURE_HdrEditing:Ljava/lang/String; = "hdr-editing"

.field public static final whitelist FEATURE_HlgEditing:Ljava/lang/String; = "hlg-editing"

.field public static final whitelist FEATURE_IntraRefresh:Ljava/lang/String; = "intra-refresh"

.field public static final whitelist FEATURE_LowLatency:Ljava/lang/String; = "low-latency"

.field public static final whitelist FEATURE_MultipleFrames:Ljava/lang/String; = "multiple-frames"

.field public static final whitelist FEATURE_PartialFrame:Ljava/lang/String; = "partial-frame"

.field public static final whitelist FEATURE_QpBounds:Ljava/lang/String; = "qp-bounds"

.field public static final whitelist FEATURE_Roi:Ljava/lang/String; = "region-of-interest"

.field public static final whitelist FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field private static final blacklist FEATURE_SpecialCodec:Ljava/lang/String; = "special-codec"

.field public static final whitelist FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CodecCapabilities"


# instance fields
.field public whitelist colorFormats:[I

.field private greylist-max-o mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private greylist-max-o mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private greylist-max-o mDefaultFormat:Landroid/media/MediaFormat;

.field private greylist-max-o mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field greylist-max-o mError:I

.field private greylist-max-o mFlagsRequired:I

.field private greylist-max-o mFlagsSupported:I

.field private greylist-max-o mFlagsVerified:I

.field private greylist-max-o mMaxSupportedInstances:I

.field private greylist-max-o mMime:Ljava/lang/String;

.field private greylist-max-o mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public whitelist profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method constructor blacklist <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .registers 22
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "defaultFormat"    # Landroid/media/MediaFormat;
    .param p5, "info"    # Landroid/media/MediaFormat;

    .line 1362
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1363
    invoke-virtual {v1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 1364
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 1365
    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    .line 1366
    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 1367
    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    .line 1368
    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const-string v7, "mime"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 1372
    move-object/from16 v6, p1

    array-length v7, v6

    const/4 v8, 0x1

    if-nez v7, :cond_44

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1373
    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 1374
    .local v7, "profLev":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1375
    invoke-static {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->equivalentVP9Level(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1376
    new-array v9, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v7, v9, v4

    move-object v6, v9

    .line 1378
    .end local v7    # "profLev":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p1    # "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v6, "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_44
    iput-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1380
    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "audio/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1381
    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v7

    iput-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 1382
    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v7, v9}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    goto :goto_80

    .line 1383
    :cond_62
    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "video/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7a

    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 1384
    const-string v9, "image/vnd.android.heic"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 1385
    :cond_7a
    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    iput-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 1387
    :cond_80
    :goto_80
    if-eqz p3, :cond_8f

    .line 1388
    invoke-static {v1, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v7

    iput-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 1389
    iget-object v7, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v9, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v7, v9}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getDefaultFormat(Landroid/media/MediaFormat;)V

    .line 1392
    :cond_8f
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    move-result-object v7

    .line 1393
    .local v7, "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1394
    const-string v9, "max-concurrent-instances"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1393
    const/16 v11, 0x20

    invoke-static {v10, v11}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v10

    iput v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    .line 1396
    nop

    .line 1397
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    .line 1396
    invoke-static {v9, v10}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v9

    .line 1398
    .local v9, "maxInstances":I
    nop

    .line 1399
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    .line 1401
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v10

    array-length v11, v10

    :goto_d1
    if-ge v4, v11, :cond_118

    aget-object v12, v10, v4

    .line 1402
    .local v12, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "feature-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1403
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1404
    .local v14, "yesNo":Ljava/lang/Integer;
    if-nez v14, :cond_f4

    .line 1405
    move v15, v8

    goto :goto_114

    .line 1407
    :cond_f4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_101

    .line 1408
    iget v15, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iget v8, v12, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v8, v15

    iput v8, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    .line 1410
    :cond_101
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget v15, v12, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v8, v15

    iput v8, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    .line 1411
    iget-boolean v8, v12, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-nez v8, :cond_113

    .line 1412
    iget-object v8, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const/4 v15, 0x1

    invoke-virtual {v8, v13, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_114

    .line 1411
    :cond_113
    const/4 v15, 0x1

    .line 1401
    .end local v12    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "yesNo":Ljava/lang/Integer;
    :goto_114
    add-int/lit8 v4, v4, 0x1

    move v8, v15

    goto :goto_d1

    .line 1416
    :cond_118
    return-void
.end method

.method constructor blacklist <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLjava/util/Map;Ljava/util/Map;)V
    .registers 12
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1353
    .local p4, "defaultFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "capabilitiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4, p4}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p2    # "colFmts":[I
    .end local p3    # "encoder":Z
    .local v1, "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v2, "colFmts":[I
    .local v3, "encoder":Z
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1356
    return-void
.end method

.method private greylist-max-o checkFeature(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 926
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 927
    .local v4, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 928
    iget v0, v4, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2

    .line 926
    .end local v4    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 931
    :cond_1d
    return v2
.end method

.method public static whitelist createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .registers 11
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "level"    # I

    .line 1333
    new-instance v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 1334
    .local v0, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput p1, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1335
    iput p2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1336
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    move-object v6, v1

    .line 1337
    .local v6, "defaultFormat":Landroid/media/MediaFormat;
    const-string v1, "mime"

    invoke-virtual {v6, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    new-instance v2, Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    new-array v4, v1, [I

    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZLandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1342
    .local v2, "ret":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget v1, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    if-eqz v1, :cond_2d

    .line 1343
    const/4 v1, 0x0

    return-object v1

    .line 1345
    :cond_2d
    return-object v2
.end method

.method private greylist-max-o getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .registers 2

    .line 922
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities$FeatureList;->getFeatures(Z)[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o isAudio()Z
    .registers 2

    .line 1266
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isEncoder()Z
    .registers 2

    .line 1278
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isVideo()Z
    .registers 2

    .line 1290
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static greylist-max-o supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .registers 7
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")Z"
        }
    .end annotation

    .line 1139
    .local p0, "bitrateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1142
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "max-bitrate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1143
    .local v1, "maxBitrate":Ljava/lang/Integer;
    const-string v2, "bitrate"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1144
    .local v2, "bitrate":Ljava/lang/Integer;
    if-nez v2, :cond_18

    .line 1145
    move-object v2, v1

    goto :goto_2a

    .line 1146
    :cond_18
    if-eqz v1, :cond_2a

    .line 1147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1150
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_37

    .line 1151
    invoke-virtual {p0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    return v3

    .line 1154
    :cond_37
    const/4 v3, 0x1

    return v3
.end method

.method private greylist-max-o supportsProfileLevel(ILjava/lang/Integer;)Z
    .registers 12
    .param p1, "profile"    # I
    .param p2, "level"    # Ljava/lang/Integer;

    .line 1158
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_c6

    aget-object v4, v0, v3

    .line 1159
    .local v4, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v5, p1, :cond_f

    .line 1160
    goto/16 :goto_c1

    .line 1164
    :cond_f
    const/4 v5, 0x1

    if-nez p2, :cond_13

    .line 1165
    return v5

    .line 1169
    :cond_13
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1170
    return v5

    .line 1174
    :cond_1e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "audio/vnd.dts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c5

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 1175
    const-string v7, "audio/vnd.dts.hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c5

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 1176
    const-string v7, "audio/vnd.dts.uhd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto/16 :goto_c5

    .line 1182
    :cond_3e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "video/3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1183
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_5e

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5e

    .line 1184
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_5e

    .line 1185
    goto/16 :goto_c1

    .line 1191
    :cond_5e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "video/mp4v-es"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1192
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_7c

    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7c

    .line 1193
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_7c

    .line 1194
    goto :goto_c1

    .line 1199
    :cond_7c
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1200
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const v7, 0x2aaaaaa

    and-int/2addr v6, v7

    if-eqz v6, :cond_90

    move v6, v5

    goto :goto_91

    :cond_90
    move v6, v2

    .line 1202
    .local v6, "supportsHighTier":Z
    :goto_91
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_9a

    move v7, v5

    goto :goto_9b

    :cond_9a
    move v7, v2

    .line 1204
    .local v7, "checkingHighTier":Z
    :goto_9b
    if-eqz v7, :cond_a0

    if-nez v6, :cond_a0

    .line 1205
    goto :goto_c1

    .line 1209
    .end local v6    # "supportsHighTier":Z
    .end local v7    # "checkingHighTier":Z
    :cond_a0
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v6, v7, :cond_c1

    .line 1212
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iget v1, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 1213
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-eqz v0, :cond_bf

    move v2, v5

    :cond_bf
    return v2

    .line 1215
    :cond_c0
    return v5

    .line 1158
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c1
    :goto_c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 1177
    .restart local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c5
    :goto_c5
    return v5

    .line 1218
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c6
    return v2
.end method


# virtual methods
.method public greylist-max-o dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .registers 4

    .line 1303
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>()V

    .line 1306
    .local v0, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1307
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 1309
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    .line 1310
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    .line 1311
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    .line 1312
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    .line 1313
    iget v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    iput v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    .line 1314
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 1315
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 1316
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 1317
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    .line 1318
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    iput-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    .line 1320
    return-object v0
.end method

.method public whitelist getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 2

    .line 1274
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public whitelist getDefaultFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 1243
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .registers 2

    .line 1286
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public whitelist getMaxSupportedInstances()I
    .registers 2

    .line 1262
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 1250
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 2

    .line 1298
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public final whitelist isFeatureRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 845
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isFeatureSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 835
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isFormatSupported(Landroid/media/MediaFormat;)Z
    .registers 16
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1051
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1052
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "mime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "mime":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1056
    return v2

    .line 1060
    :cond_18
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1e
    const/4 v6, 0x1

    if-ge v5, v4, :cond_66

    aget-object v7, v3, v5

    .line 1061
    .local v7, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-boolean v8, v7, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-eqz v8, :cond_28

    .line 1062
    goto :goto_63

    .line 1065
    :cond_28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "feature-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1066
    .local v8, "yesNo":Ljava/lang/Integer;
    if-nez v8, :cond_46

    .line 1067
    goto :goto_63

    .line 1069
    :cond_46
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_54

    iget-object v6, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1070
    :cond_54
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_63

    iget-object v6, v7, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1071
    :cond_62
    return v2

    .line 1060
    .end local v7    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v8    # "yesNo":Ljava/lang/Integer;
    :cond_63
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 1075
    :cond_66
    const-string v3, "profile"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1076
    .local v3, "profile":Ljava/lang/Integer;
    const-string v4, "level"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1078
    .local v4, "level":Ljava/lang/Integer;
    if-eqz v3, :cond_f0

    .line 1079
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsProfileLevel(ILjava/lang/Integer;)Z

    move-result v5

    if-nez v5, :cond_83

    .line 1080
    return v2

    .line 1090
    :cond_83
    const/4 v5, 0x0

    .line 1091
    .local v5, "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v7, 0x0

    .line 1092
    .local v7, "maxLevel":I
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v9, v8

    move v10, v2

    :goto_89
    if-ge v10, v9, :cond_b0

    aget-object v11, v8, v10

    .line 1093
    .local v11, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_ad

    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v12, v7, :cond_ad

    .line 1096
    iget-object v12, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string v13, "video/3gpp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ab

    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_ab

    if-ne v7, v6, :cond_ad

    .line 1099
    :cond_ab
    iget v7, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1092
    .end local v11    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_ad
    add-int/lit8 v10, v10, 0x1

    goto :goto_89

    .line 1103
    :cond_b0
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 1108
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1110
    .local v8, "levelCriticalFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_c8

    sget-object v9, Landroid/media/MediaCodecInfo$VideoCapabilities;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    goto :goto_d2

    .line 1111
    :cond_c8
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isAudio()Z

    move-result v9

    if-eqz v9, :cond_d1

    sget-object v9, Landroid/media/MediaCodecInfo$AudioCapabilities;->AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    goto :goto_d2

    .line 1112
    :cond_d1
    const/4 v9, 0x0

    :goto_d2
    nop

    .line 1116
    .local v9, "criticalKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_f0

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    if-le v10, v6, :cond_f0

    if-eqz v5, :cond_f0

    .line 1117
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1119
    new-instance v10, Landroid/media/MediaFormat;

    invoke-direct {v10, v8}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    .line 1120
    .local v10, "levelCriticalFormat":Landroid/media/MediaFormat;
    invoke-virtual {v5, v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v11

    if-nez v11, :cond_f0

    .line 1121
    return v2

    .line 1125
    .end local v5    # "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v7    # "maxLevel":I
    .end local v8    # "levelCriticalFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "criticalKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "levelCriticalFormat":Landroid/media/MediaFormat;
    :cond_f0
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v5, :cond_fd

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_fd

    .line 1126
    return v2

    .line 1128
    :cond_fd
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v5, :cond_10a

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_10a

    .line 1129
    return v2

    .line 1131
    :cond_10a
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v5, :cond_117

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    invoke-virtual {v5, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 1132
    return v2

    .line 1134
    :cond_117
    return v6
.end method

.method public greylist-max-o isRegular()Z
    .registers 7

    .line 937
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_1b

    aget-object v4, v0, v3

    .line 938
    .local v4, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-boolean v5, v4, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    if-nez v5, :cond_18

    iget-object v5, v4, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 939
    return v2

    .line 937
    .end local v4    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 942
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o validFeatures()[Ljava/lang/String;
    .registers 5

    .line 911
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    .line 912
    .local v0, "features":[Landroid/media/MediaCodecInfo$Feature;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 914
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/media/MediaCodecInfo$Feature;->mInternal:Z

    if-nez v3, :cond_1a

    .line 915
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 918
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method
