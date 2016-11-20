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

.field public static final FEATURE_IntraRefresh:Ljava/lang/String; = "intra-refresh"

.field public static final FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field public static final FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final TAG:Ljava/lang/String; = "CodecCapabilities"

.field private static final decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

.field private static final encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


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
.method static synthetic -wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 1
    .param p0, "bitrateRange"    # Landroid/util/Range;
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 488
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    #@6
    .line 489
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@8
    const-string/jumbo v2, "adaptive-playback"

    #@b
    invoke-direct {v1, v2, v5, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@e
    aput-object v1, v0, v4

    #@10
    .line 490
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@12
    const-string/jumbo v2, "secure-playback"

    #@15
    invoke-direct {v1, v2, v6, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@18
    aput-object v1, v0, v5

    #@1a
    .line 491
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@1c
    const-string/jumbo v2, "tunneled-playback"

    #@1f
    const/4 v3, 0x4

    #@20
    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@23
    aput-object v1, v0, v6

    #@25
    .line 488
    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@27
    .line 494
    new-array v0, v5, [Landroid/media/MediaCodecInfo$Feature;

    #@29
    .line 495
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@2b
    const-string/jumbo v2, "intra-refresh"

    #@2e
    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@31
    aput-object v1, v0, v4

    #@33
    .line 494
    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@35
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
    .locals 13
    .param p1, "profLevs"    # [Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .param p2, "colFmts"    # [I
    .param p3, "encoder"    # Z
    .param p4, "flags"    # I
    .param p5, "defaultFormat"    # Landroid/media/MediaFormat;
    .param p6, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 876
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@6
    move-result-object v4

    #@7
    .line 877
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    #@9
    .line 878
    move/from16 v0, p4

    #@b
    iput v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    #@d
    .line 879
    move-object/from16 v0, p5

    #@f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@11
    .line 880
    move-object/from16 v0, p6

    #@13
    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    #@15
    .line 881
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@17
    const-string/jumbo v9, "mime"

    #@1a
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@20
    .line 885
    array-length v8, p1

    #@21
    if-nez v8, :cond_0

    #@23
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@25
    const-string/jumbo v9, "video/x-vnd.on2.vp9"

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_0

    #@2e
    .line 886
    new-instance v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@30
    invoke-direct {v6}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    #@33
    .line 887
    .local v6, "profLev":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x1

    #@34
    iput v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@36
    .line 888
    invoke-static/range {p6 .. p6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->equivalentVP9Level(Landroid/media/MediaFormat;)I

    #@39
    move-result v8

    #@3a
    iput v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@3c
    .line 889
    const/4 v8, 0x1

    #@3d
    new-array p1, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@3f
    .end local p1    # "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x0

    #@40
    aput-object v6, p1, v8

    #@42
    .line 891
    .end local v6    # "profLev":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local p1    # "profLevs":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_0
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@44
    .line 893
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@46
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    const-string/jumbo v9, "audio/"

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_3

    #@53
    .line 894
    move-object/from16 v0, p6

    #@55
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@58
    move-result-object v8

    #@59
    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@5b
    .line 895
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@5d
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@5f
    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo$AudioCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    #@62
    .line 899
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    #@64
    .line 900
    move-object/from16 v0, p6

    #@66
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@69
    move-result-object v8

    #@6a
    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@6c
    .line 901
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@6e
    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@70
    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    #@73
    .line 904
    :cond_2
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    #@76
    move-result-object v2

    #@77
    .line 906
    .local v2, "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "max-concurrent-instances"

    #@7a
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v8

    #@7e
    const/16 v9, 0x20

    #@80
    .line 905
    invoke-static {v8, v9}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    #@83
    move-result v8

    #@84
    iput v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@86
    .line 909
    const-string/jumbo v8, "max-concurrent-instances"

    #@89
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    move-result-object v8

    #@8d
    iget v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@8f
    .line 908
    invoke-static {v8, v9}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    #@92
    move-result v5

    #@93
    .line 911
    .local v5, "maxInstances":I
    const/4 v8, 0x1

    #@94
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v8

    #@98
    const/16 v9, 0x100

    #@9a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v9

    #@9e
    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a1
    move-result-object v8

    #@a2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {v8, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    #@a9
    move-result-object v8

    #@aa
    check-cast v8, Ljava/lang/Integer;

    #@ac
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@af
    move-result v8

    #@b0
    .line 910
    iput v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@b2
    .line 913
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@b5
    move-result-object v9

    #@b6
    const/4 v8, 0x0

    #@b7
    array-length v10, v9

    #@b8
    :goto_1
    if-ge v8, v10, :cond_6

    #@ba
    aget-object v1, v9, v8

    #@bc
    .line 914
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v11, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v12, "feature-"

    #@c4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v11

    #@c8
    iget-object v12, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@ca
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v11

    #@ce
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v3

    #@d2
    .line 915
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    move-result-object v7

    #@d6
    check-cast v7, Ljava/lang/Integer;

    #@d8
    .line 916
    .local v7, "yesNo":Ljava/lang/Integer;
    if-nez v7, :cond_4

    #@da
    .line 913
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@dc
    goto :goto_1

    #@dd
    .line 896
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v2    # "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "maxInstances":I
    .end local v7    # "yesNo":Ljava/lang/Integer;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@df
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@e2
    move-result-object v8

    #@e3
    const-string/jumbo v9, "video/"

    #@e6
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e9
    move-result v8

    #@ea
    if-eqz v8, :cond_1

    #@ec
    .line 897
    move-object/from16 v0, p6

    #@ee
    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@f1
    move-result-object v8

    #@f2
    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@f4
    goto/16 :goto_0

    #@f6
    .line 919
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .restart local v2    # "global":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "maxInstances":I
    .restart local v7    # "yesNo":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@f9
    move-result v11

    #@fa
    if-lez v11, :cond_5

    #@fc
    .line 920
    iget v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    #@fe
    iget v12, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@100
    or-int/2addr v11, v12

    #@101
    iput v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    #@103
    .line 922
    :cond_5
    iget v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@105
    iget v12, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@107
    or-int/2addr v11, v12

    #@108
    iput v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@10a
    .line 923
    iget-object v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@10c
    const/4 v12, 0x1

    #@10d
    invoke-virtual {v11, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@110
    goto :goto_2

    #@111
    .line 875
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "yesNo":Ljava/lang/Integer;
    :cond_6
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
    .line 867
    .local p5, "defaultFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "capabilitiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Landroid/media/MediaFormat;

    #@2
    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@5
    .line 868
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
    .line 866
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@12
    .line 865
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
    .line 516
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
    .line 517
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    .line 518
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
    .line 516
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 521
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
    .line 846
    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@4
    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    #@7
    .line 847
    .local v7, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iput p1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@9
    .line 848
    iput p2, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@b
    .line 849
    new-instance v5, Landroid/media/MediaFormat;

    #@d
    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    #@10
    .line 850
    .local v5, "defaultFormat":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    #@13
    invoke-virtual {v5, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 852
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@18
    .line 853
    new-array v1, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@1a
    aput-object v7, v1, v4

    #@1c
    new-array v2, v4, [I

    #@1e
    .line 854
    new-instance v6, Landroid/media/MediaFormat;

    #@20
    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    #@23
    .line 852
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@26
    .line 855
    .local v0, "ret":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 856
    const/4 v1, 0x0

    #@2b
    return-object v1

    #@2c
    .line 858
    :cond_0
    return-object v0
.end method

.method private getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    #@0
    .prologue
    .line 509
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 510
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@8
    return-object v0

    #@9
    .line 512
    :cond_0
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    #@b
    return-object v0
.end method

.method private isAudio()Z
    .locals 1

    #@0
    .prologue
    .line 792
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
    .line 803
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
    .line 814
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

.method private static supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 683
    .local p0, "bitrateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    .line 686
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "max-bitrate"

    #@7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/Integer;

    #@d
    .line 687
    .local v2, "maxBitrate":Ljava/lang/Integer;
    const-string/jumbo v3, "bitrate"

    #@10
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Integer;

    #@16
    .line 688
    .local v0, "bitrate":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@18
    .line 689
    move-object v0, v2

    #@19
    .line 694
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v3

    #@1f
    if-lez v3, :cond_2

    #@21
    .line 695
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 690
    :cond_1
    if-eqz v2, :cond_0

    #@28
    .line 691
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v4

    #@30
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v3

    #@34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v0

    #@38
    goto :goto_0

    #@39
    .line 698
    :cond_2
    const/4 v3, 0x1

    #@3a
    return v3
.end method

.method private supportsProfileLevel(ILjava/lang/Integer;)Z
    .locals 11
    .param p1, "profile"    # I
    .param p2, "level"    # Ljava/lang/Integer;

    #@0
    .prologue
    const v10, 0x2aaaaaa

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 702
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@7
    array-length v7, v6

    #@8
    move v5, v4

    #@9
    :goto_0
    if-ge v5, v7, :cond_b

    #@b
    aget-object v1, v6, v5

    #@d
    .line 703
    .local v1, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@f
    if-eq v8, p1, :cond_1

    #@11
    .line 702
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@13
    goto :goto_0

    #@14
    .line 708
    :cond_1
    if-eqz p2, :cond_2

    #@16
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@18
    const-string/jumbo v9, "audio/mp4a-latm"

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_3

    #@21
    .line 709
    :cond_2
    return v3

    #@22
    .line 714
    :cond_3
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@24
    const-string/jumbo v9, "video/3gpp"

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v8

    #@2b
    if-eqz v8, :cond_4

    #@2d
    .line 715
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@32
    move-result v9

    #@33
    if-eq v8, v9, :cond_4

    #@35
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@37
    const/16 v9, 0x10

    #@39
    if-ne v8, v9, :cond_4

    #@3b
    .line 716
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v8

    #@3f
    if-gt v8, v3, :cond_0

    #@41
    .line 723
    :cond_4
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@43
    const-string/jumbo v9, "video/mp4v-es"

    #@46
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_5

    #@4c
    .line 724
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@4e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@51
    move-result v9

    #@52
    if-eq v8, v9, :cond_5

    #@54
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@56
    const/4 v9, 0x4

    #@57
    if-ne v8, v9, :cond_5

    #@59
    .line 725
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v8

    #@5d
    if-gt v8, v3, :cond_0

    #@5f
    .line 731
    :cond_5
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@61
    const-string/jumbo v9, "video/hevc"

    #@64
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_6

    #@6a
    .line 733
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@6c
    and-int/2addr v8, v10

    #@6d
    if-eqz v8, :cond_7

    #@6f
    const/4 v2, 0x1

    #@70
    .line 734
    .local v2, "supportsHighTier":Z
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v8

    #@74
    and-int/2addr v8, v10

    #@75
    if-eqz v8, :cond_8

    #@77
    move v0, v3

    #@78
    .line 736
    .local v0, "checkingHighTier":Z
    :goto_2
    if-eqz v0, :cond_6

    #@7a
    if-eqz v2, :cond_0

    #@7c
    .line 741
    .end local v0    # "checkingHighTier":Z
    .end local v2    # "supportsHighTier":Z
    :cond_6
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@7e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@81
    move-result v9

    #@82
    if-lt v8, v9, :cond_0

    #@84
    .line 744
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@86
    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@88
    invoke-static {v5, p1, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@8b
    move-result-object v5

    #@8c
    if-eqz v5, :cond_a

    #@8e
    .line 745
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@93
    move-result v6

    #@94
    invoke-static {v5, p1, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@97
    move-result-object v5

    #@98
    if-eqz v5, :cond_9

    #@9a
    :goto_3
    return v3

    #@9b
    .line 733
    :cond_7
    const/4 v2, 0x0

    #@9c
    .restart local v2    # "supportsHighTier":Z
    goto :goto_1

    #@9d
    :cond_8
    move v0, v4

    #@9e
    .line 734
    goto :goto_2

    #@9f
    .end local v2    # "supportsHighTier":Z
    :cond_9
    move v3, v4

    #@a0
    .line 745
    goto :goto_3

    #@a1
    .line 747
    :cond_a
    return v3

    #@a2
    .line 750
    .end local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_b
    return v4
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 7

    #@0
    .prologue
    .line 826
    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    .line 828
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
    .line 829
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
    .line 830
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    #@19
    move-result v3

    #@1a
    .line 831
    iget v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    #@1c
    .line 832
    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@1e
    .line 833
    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    #@20
    .line 826
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    #@23
    return-object v0
.end method

.method public getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@2
    return-object v0
.end method

.method public getDefaultFormat()Landroid/media/MediaFormat;
    .locals 1

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    #@2
    return-object v0
.end method

.method public getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@2
    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .locals 1

    #@0
    .prologue
    .line 788
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    #@2
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@2
    return-object v0
.end method

.method public final isFeatureRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
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
    .line 475
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    #@2
    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isFormatSupported(Landroid/media/MediaFormat;)Z
    .locals 17
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v5

    #@4
    .line 618
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v12, "mime"

    #@7
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v8

    #@b
    check-cast v8, Ljava/lang/String;

    #@d
    .line 621
    .local v8, "mime":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@13
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v12

    #@17
    if-eqz v12, :cond_2

    #@19
    .line 626
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@1c
    move-result-object v13

    #@1d
    const/4 v12, 0x0

    #@1e
    array-length v14, v13

    #@1f
    :goto_0
    if-ge v12, v14, :cond_6

    #@21
    aget-object v1, v13, v12

    #@23
    .line 627
    .local v1, "feat":Landroid/media/MediaCodecInfo$Feature;
    new-instance v15, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v16, "feature-"

    #@2b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v15

    #@2f
    iget-object v0, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@31
    move-object/from16 v16, v0

    #@33
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v15

    #@37
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v15

    #@3b
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v11

    #@3f
    check-cast v11, Ljava/lang/Integer;

    #@41
    .line 628
    .local v11, "yesNo":Ljava/lang/Integer;
    if-nez v11, :cond_3

    #@43
    .line 626
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@45
    goto :goto_0

    #@46
    .line 622
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v11    # "yesNo":Ljava/lang/Integer;
    :cond_2
    const/4 v12, 0x0

    #@47
    return v12

    #@48
    .line 631
    .restart local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .restart local v11    # "yesNo":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v15

    #@4c
    const/16 v16, 0x1

    #@4e
    move/from16 v0, v16

    #@50
    if-ne v15, v0, :cond_4

    #@52
    iget-object v15, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@54
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v15}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    #@59
    move-result v15

    #@5a
    if-eqz v15, :cond_5

    #@5c
    .line 632
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@5f
    move-result v15

    #@60
    if-nez v15, :cond_1

    #@62
    iget-object v15, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@64
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v0, v15}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    #@69
    move-result v15

    #@6a
    .line 631
    if-eqz v15, :cond_1

    #@6c
    .line 633
    :cond_5
    const/4 v12, 0x0

    #@6d
    return v12

    #@6e
    .line 637
    .end local v1    # "feat":Landroid/media/MediaCodecInfo$Feature;
    .end local v11    # "yesNo":Ljava/lang/Integer;
    :cond_6
    const-string/jumbo v12, "profile"

    #@71
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v10

    #@75
    check-cast v10, Ljava/lang/Integer;

    #@77
    .line 638
    .local v10, "profile":Ljava/lang/Integer;
    const-string/jumbo v12, "level"

    #@7a
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v3

    #@7e
    check-cast v3, Ljava/lang/Integer;

    #@80
    .line 640
    .local v3, "level":Ljava/lang/Integer;
    if-eqz v10, :cond_a

    #@82
    .line 641
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@85
    move-result v12

    #@86
    move-object/from16 v0, p0

    #@88
    invoke-direct {v0, v12, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsProfileLevel(ILjava/lang/Integer;)Z

    #@8b
    move-result v12

    #@8c
    if-nez v12, :cond_7

    #@8e
    .line 642
    const/4 v12, 0x0

    #@8f
    return v12

    #@90
    .line 652
    :cond_7
    const/4 v4, 0x0

    #@91
    .line 653
    .local v4, "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v7, 0x0

    #@92
    .line 654
    .local v7, "maxLevel":I
    move-object/from16 v0, p0

    #@94
    iget-object v13, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@96
    const/4 v12, 0x0

    #@97
    array-length v14, v13

    #@98
    :goto_1
    if-ge v12, v14, :cond_9

    #@9a
    aget-object v9, v13, v12

    #@9c
    .line 655
    .local v9, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v15, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@9e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@a1
    move-result v16

    #@a2
    move/from16 v0, v16

    #@a4
    if-ne v15, v0, :cond_8

    #@a6
    iget v15, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@a8
    if-le v15, v7, :cond_8

    #@aa
    .line 656
    iget v7, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@ac
    .line 654
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@ae
    goto :goto_1

    #@af
    .line 659
    .end local v9    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_9
    move-object/from16 v0, p0

    #@b1
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    #@b3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@b6
    move-result v13

    #@b7
    invoke-static {v12, v13, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@ba
    move-result-object v4

    #@bb
    .line 662
    .local v4, "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    new-instance v6, Ljava/util/HashMap;

    #@bd
    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@c0
    .line 663
    .local v6, "mapWithoutProfile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v12, "profile"

    #@c3
    invoke-interface {v6, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    .line 664
    new-instance v2, Landroid/media/MediaFormat;

    #@c8
    invoke-direct {v2, v6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@cb
    .line 665
    .local v2, "formatWithoutProfile":Landroid/media/MediaFormat;
    if-eqz v4, :cond_a

    #@cd
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    #@d0
    move-result v12

    #@d1
    if-eqz v12, :cond_e

    #@d3
    .line 669
    .end local v2    # "formatWithoutProfile":Landroid/media/MediaFormat;
    .end local v4    # "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "mapWithoutProfile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "maxLevel":I
    :cond_a
    move-object/from16 v0, p0

    #@d5
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@d7
    if-eqz v12, :cond_b

    #@d9
    move-object/from16 v0, p0

    #@db
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@dd
    move-object/from16 v0, p1

    #@df
    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@e2
    move-result v12

    #@e3
    if-eqz v12, :cond_f

    #@e5
    .line 672
    :cond_b
    move-object/from16 v0, p0

    #@e7
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@e9
    if-eqz v12, :cond_c

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@ef
    move-object/from16 v0, p1

    #@f1
    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@f4
    move-result v12

    #@f5
    if-eqz v12, :cond_10

    #@f7
    .line 675
    :cond_c
    move-object/from16 v0, p0

    #@f9
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@fb
    if-eqz v12, :cond_d

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@101
    move-object/from16 v0, p1

    #@103
    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    #@106
    move-result v12

    #@107
    if-eqz v12, :cond_11

    #@109
    .line 678
    :cond_d
    const/4 v12, 0x1

    #@10a
    return v12

    #@10b
    .line 666
    .restart local v2    # "formatWithoutProfile":Landroid/media/MediaFormat;
    .restart local v4    # "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v6    # "mapWithoutProfile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "maxLevel":I
    :cond_e
    const/4 v12, 0x0

    #@10c
    return v12

    #@10d
    .line 670
    .end local v2    # "formatWithoutProfile":Landroid/media/MediaFormat;
    .end local v4    # "levelCaps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "mapWithoutProfile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "maxLevel":I
    :cond_f
    const/4 v12, 0x0

    #@10e
    return v12

    #@10f
    .line 673
    :cond_10
    const/4 v12, 0x0

    #@110
    return v12

    #@111
    .line 676
    :cond_11
    const/4 v12, 0x0

    #@112
    return v12
.end method

.method public isRegular()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 527
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
    .line 528
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
    .line 529
    return v2

    #@18
    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 532
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
    .line 500
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    #@3
    move-result-object v0

    #@4
    .line 501
    .local v0, "features":[Landroid/media/MediaCodecInfo$Feature;
    array-length v3, v0

    #@5
    new-array v2, v3, [Ljava/lang/String;

    #@7
    .line 502
    .local v2, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@9
    if-ge v1, v3, :cond_0

    #@b
    .line 503
    aget-object v3, v0, v1

    #@d
    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@f
    aput-object v3, v2, v1

    #@11
    .line 502
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 505
    :cond_0
    return-object v2
.end method
