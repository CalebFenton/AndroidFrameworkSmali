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


# static fields
.field public static final COLOR_Format12bitRGB444:I = 0x3

.field public static final COLOR_Format16bitARGB1555:I = 0x5

.field public static final COLOR_Format16bitARGB4444:I = 0x4

.field public static final COLOR_Format16bitBGR565:I = 0x7

.field public static final COLOR_Format16bitRGB565:I = 0x6

.field public static final COLOR_Format18BitBGR666:I = 0x29

.field public static final COLOR_Format18bitARGB1665:I = 0x9

.field public static final COLOR_Format18bitRGB666:I = 0x8

.field public static final COLOR_Format19bitARGB1666:I = 0xa

.field public static final COLOR_Format24BitABGR6666:I = 0x2b

.field public static final COLOR_Format24BitARGB6666:I = 0x2a

.field public static final COLOR_Format24bitARGB1887:I = 0xd

.field public static final COLOR_Format24bitBGR888:I = 0xc

.field public static final COLOR_Format24bitRGB888:I = 0xb

.field public static final COLOR_Format25bitARGB1888:I = 0xe

.field public static final COLOR_Format32bitABGR8888:I = 0x7f00a000

.field public static final COLOR_Format32bitARGB8888:I = 0x10

.field public static final COLOR_Format32bitBGRA8888:I = 0xf

.field public static final COLOR_Format8bitRGB332:I = 0x2

.field public static final COLOR_FormatCbYCrY:I = 0x1b

.field public static final COLOR_FormatCrYCbY:I = 0x1c

.field public static final COLOR_FormatL16:I = 0x24

.field public static final COLOR_FormatL2:I = 0x21

.field public static final COLOR_FormatL24:I = 0x25

.field public static final COLOR_FormatL32:I = 0x26

.field public static final COLOR_FormatL4:I = 0x22

.field public static final COLOR_FormatL8:I = 0x23

.field public static final COLOR_FormatMonochrome:I = 0x1

.field public static final COLOR_FormatRGBAFlexible:I = 0x7f36a888

.field public static final COLOR_FormatRGBFlexible:I = 0x7f36b888

.field public static final COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final COLOR_FormatSurface:I = 0x7f000789

.field public static final COLOR_FormatYCbYCr:I = 0x19

.field public static final COLOR_FormatYCrYCb:I = 0x1a

.field public static final COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final COLOR_FormatYUV411Planar:I = 0x11

.field public static final COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final COLOR_FormatYUV420Planar:I = 0x13

.field public static final COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final COLOR_FormatYUV422Flexible:I = 0x7f422888

.field public static final COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final COLOR_FormatYUV422Planar:I = 0x16

.field public static final COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final COLOR_FormatYUV444Flexible:I = 0x7f444888

.field public static final COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field public static final FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final TAG:Ljava/lang/String; = "CodecCapabilities"

.field private static final decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field public colorFormats:[I

.field private mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private mDefaultFormat:Landroid/media/MediaFormat;

.field private mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field mError:I

.field private mFlagsRequired:I

.field private mFlagsSupported:I

.field private mFlagsVerified:I

.field private mMaxSupportedInstances:I

.field private mMime:Ljava/lang/String;

.field private mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 483
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    #@6
    .line 484
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@8
    const-string/jumbo v2, "adaptive-playback"

    #@b
    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@e
    aput-object v1, v0, v4

    #@10
    .line 485
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@12
    const-string/jumbo v2, "secure-playback"

    #@15
    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@18
    aput-object v1, v0, v3

    #@1a
    .line 486
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@1c
    const-string/jumbo v2, "tunneled-playback"

    #@1f
    const/4 v3, 0x4

    #@20
    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@23
    aput-object v1, v0, v5

    #@25
    .line 483
    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@27
    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 12
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "flags"    # I
    .param p5, "defaultFormat"    # Landroid/media/MediaFormat;
    .param p6, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 693
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@6
    move-result-object v4

    #@7
    .line 694
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@9
    .line 695
    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    #@b
    .line 696
    move/from16 v0, p4

    #@d
    iput v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    #@f
    .line 697
    move-object/from16 v0, p5

    #@11
    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@13
    .line 698
    move-object/from16 v0, p6

    #@15
    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    #@17
    .line 699
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@19
    const-string/jumbo v8, "mime"

    #@1c
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@22
    .line 701
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@24
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    const-string/jumbo v8, "audio/"

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 702
    move-object/from16 v0, p6

    #@33
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@36
    move-result-object v7

    #@37
    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@39
    .line 703
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@3b
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@3d
    invoke-virtual {v7, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    #@40
    .line 707
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    #@42
    .line 708
    move-object/from16 v0, p6

    #@44
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@47
    move-result-object v7

    #@48
    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@4a
    .line 709
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@4c
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@4e
    invoke-virtual {v7, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    #@51
    .line 712
    :cond_1
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    #@54
    move-result-object v2

    #@55
    .line 714
    .local v2, "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "max-concurrent-instances"

    #@58
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v7

    #@5c
    const/16 v8, 0x20

    #@5e
    .line 713
    invoke-static {v7, v8}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    #@61
    move-result v7

    #@62
    iput v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@64
    .line 717
    const-string/jumbo v7, "max-concurrent-instances"

    #@67
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    iget v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@6d
    .line 716
    invoke-static {v7, v8}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    #@70
    move-result v5

    #@71
    .line 719
    .local v5, "maxInstances":I
    const/4 v7, 0x1

    #@72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v7

    #@76
    const/16 v8, 0x100

    #@78
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v8

    #@7c
    invoke-static {v7, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@7f
    move-result-object v7

    #@80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v7, v8}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    #@87
    move-result-object v7

    #@88
    check-cast v7, Ljava/lang/Integer;

    #@8a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@8d
    move-result v7

    #@8e
    .line 718
    iput v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@90
    .line 721
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@93
    move-result-object v8

    #@94
    const/4 v7, 0x0

    #@95
    array-length v9, v8

    #@96
    :goto_1
    if-ge v7, v9, :cond_5

    #@98
    aget-object v1, v8, v7

    #@9a
    .line 722
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v10, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v11, "feature-"

    #@a2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v10

    #@a6
    iget-object v11, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@a8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    .line 723
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    move-result-object v6

    #@b4
    check-cast v6, Ljava/lang/Integer;

    #@b6
    .line 724
    .local v6, "yesNo":Ljava/lang/Integer;
    if-nez v6, :cond_3

    #@b8
    .line 721
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@ba
    goto :goto_1

    #@bb
    .line 704
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v2    # "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "maxInstances":I
    .end local v6    # "yesNo":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@bd
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    const-string/jumbo v8, "video/"

    #@c4
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c7
    move-result v7

    #@c8
    if-eqz v7, :cond_0

    #@ca
    .line 705
    move-object/from16 v0, p6

    #@cc
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@cf
    move-result-object v7

    #@d0
    iput-object v7, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@d2
    goto/16 :goto_0

    #@d4
    .line 727
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .restart local v2    # "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "maxInstances":I
    .restart local v6    # "yesNo":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@d7
    move-result v10

    #@d8
    if-lez v10, :cond_4

    #@da
    .line 728
    iget v10, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    #@dc
    iget v11, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@de
    or-int/2addr v10, v11

    #@df
    iput v10, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    #@e1
    .line 730
    :cond_4
    iget v10, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@e3
    iget v11, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@e5
    or-int/2addr v10, v11

    #@e6
    iput v10, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@e8
    .line 731
    iget-object v10, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@ea
    const/4 v11, 0x1

    #@eb
    invoke-virtual {v10, v3, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@ee
    goto :goto_2

    #@ef
    .line 692
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "yesNo":Ljava/lang/Integer;
    :cond_5
    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 684
    .local p5, "defaultFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "capabilitiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Landroid/media/MediaFormat;

    #@2
    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@5
    .line 685
    new-instance v6, Landroid/media/MediaFormat;

    #@7
    invoke-direct {v6, p6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move-object v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    .line 683
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@12
    .line 682
    return-void
.end method

.method private checkFeature(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 507
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@4
    move-result-object v3

    #@5
    array-length v4, v3

    #@6
    move v2, v1

    #@7
    :goto_0
    if-ge v2, v4, :cond_2

    #@9
    aget-object v0, v3, v2

    #@b
    .line 508
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    .line 509
    iget v2, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@15
    and-int/2addr v2, p2

    #@16
    if-eqz v2, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1

    #@1a
    .line 507
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 512
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return v1
.end method

.method public static createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 8
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "profile"    # I
    .param p2, "level"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 663
    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@4
    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    #@7
    .line 664
    .local v7, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput p1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@9
    .line 665
    iput p2, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@b
    .line 666
    new-instance v5, Landroid/media/MediaFormat;

    #@d
    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    #@10
    .line 667
    .local v5, "defaultFormat":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    #@13
    invoke-virtual {v5, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 669
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@18
    .line 670
    new-array v1, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@1a
    aput-object v7, v1, v4

    #@1c
    new-array v2, v4, [I

    #@1e
    .line 671
    new-instance v6, Landroid/media/MediaFormat;

    #@20
    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    #@23
    .line 669
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@26
    .line 672
    .local v0, "ret":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 673
    const/4 v1, 0x0

    #@2b
    return-object v1

    #@2c
    .line 675
    :cond_0
    return-object v0
.end method

.method private getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    #@0
    .prologue
    .line 500
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 501
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@8
    return-object v0

    #@9
    .line 503
    :cond_0
    const/4 v0, 0x0

    #@a
    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    #@c
    return-object v0
.end method

.method private isAudio()Z
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isEncoder()Z
    .locals 1

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isVideo()Z
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 7

    #@0
    .prologue
    .line 646
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    .line 648
    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@4
    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@6
    array-length v2, v2

    #@7
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@d
    .line 649
    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    #@f
    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    #@11
    array-length v3, v3

    #@12
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    #@15
    move-result-object v2

    #@16
    .line 650
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    #@19
    move-result v3

    #@1a
    .line 651
    iget v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    #@1c
    .line 652
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@1e
    .line 653
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    #@20
    .line 646
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@23
    return-object v0
.end method

.method public getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@2
    return-object v0
.end method

.method public getDefaultFormat()Landroid/media/MediaFormat;
    .locals 1

    #@0
    .prologue
    .line 589
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@2
    return-object v0
.end method

.method public getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@2
    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .locals 1

    #@0
    .prologue
    .line 608
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@2
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@2
    return-object v0
.end method

.method public final isFeatureRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 480
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    #@2
    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@2
    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isFormatSupported(Landroid/media/MediaFormat;)Z
    .locals 11
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 542
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    .line 543
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "mime"

    #@9
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/String;

    #@f
    .line 546
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@11
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@13
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@1c
    move-result-object v6

    #@1d
    array-length v7, v6

    #@1e
    move v4, v5

    #@1f
    :goto_0
    if-ge v4, v7, :cond_6

    #@21
    aget-object v0, v6, v4

    #@23
    .line 552
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v8, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v9, "feature-"

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    iget-object v9, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@31
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Ljava/lang/Integer;

    #@3f
    .line 553
    .local v3, "yesNo":Ljava/lang/Integer;
    if-nez v3, :cond_3

    #@41
    .line 551
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_0

    #@44
    .line 547
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v3    # "yesNo":Ljava/lang/Integer;
    :cond_2
    return v5

    #@45
    .line 556
    .restart local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .restart local v3    # "yesNo":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v8

    #@49
    if-ne v8, v10, :cond_4

    #@4b
    iget-object v8, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@4d
    invoke-virtual {p0, v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_5

    #@53
    .line 557
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v8

    #@57
    if-nez v8, :cond_1

    #@59
    iget-object v8, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@5b
    invoke-virtual {p0, v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    #@5e
    move-result v8

    #@5f
    .line 556
    if-eqz v8, :cond_1

    #@61
    .line 558
    :cond_5
    return v5

    #@62
    .line 561
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v3    # "yesNo":Ljava/lang/Integer;
    :cond_6
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@64
    if-eqz v4, :cond_7

    #@66
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@68
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_a

    #@6e
    .line 564
    :cond_7
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@70
    if-eqz v4, :cond_8

    #@72
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@74
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_b

    #@7a
    .line 567
    :cond_8
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@7c
    if-eqz v4, :cond_9

    #@7e
    iget-object v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@80
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_c

    #@86
    .line 570
    :cond_9
    return v10

    #@87
    .line 562
    :cond_a
    return v5

    #@88
    .line 565
    :cond_b
    return v5

    #@89
    .line 568
    :cond_c
    return v5
.end method

.method public isRegular()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 518
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@4
    move-result-object v3

    #@5
    array-length v4, v3

    #@6
    move v1, v2

    #@7
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    aget-object v0, v3, v1

    #@b
    .line 519
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-boolean v5, v0, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    #@d
    if-nez v5, :cond_0

    #@f
    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@11
    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 520
    return v2

    #@18
    .line 518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 523
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public validFeatures()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 491
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@3
    move-result-object v0

    #@4
    .line 492
    .local v0, "features":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    #@5
    new-array v2, v3, [Ljava/lang/String;

    #@7
    .line 493
    .local v2, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@9
    if-ge v1, v3, :cond_0

    #@b
    .line 494
    aget-object v3, v0, v1

    #@d
    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@f
    aput-object v3, v2, v1

    #@11
    .line 493
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 496
    :cond_0
    return-object v2
.end method
