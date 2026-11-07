.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "VideoCapabilities"

.field static final blacklist VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAllowMbOverride:Z

.field private greylist-max-o mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockHeight:I

.field private greylist-max-o mBlockWidth:I

.field private greylist-max-o mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeightAlignment:I

.field private greylist-max-o mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private blacklist mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSmallerDimensionUpperLimit:I

.field private greylist-max-o mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWidthAlignment:I

.field private greylist-max-o mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 2611
    const-string v0, "bitrate"

    const-string v1, "mime"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "frame-rate"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o applyAlignment(II)V
    .registers 10
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .line 3054
    const-string v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3055
    const-string v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3057
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_15

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_13

    goto :goto_15

    :cond_13
    move-object v1, p0

    goto :goto_31

    .line 3059
    :cond_15
    :goto_15
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3060
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3061
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v6

    .line 3059
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3065
    :goto_31
    iget v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 3066
    iget v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 3068
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3069
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 3070
    return-void
.end method

.method private greylist-max-o applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .registers 13
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .line 3016
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v0, "blockWidth must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3017
    const-string v0, "blockHeight must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3019
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3020
    .local v0, "newBlockWidth":I
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3023
    .local v1, "newBlockHeight":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, v3

    .line 3025
    .local v2, "factor":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_5a

    .line 3026
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v4, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3027
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3029
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3033
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3035
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3038
    :cond_5a
    mul-int v4, v0, v1

    div-int/2addr v4, p1

    div-int/2addr v4, p2

    .line 3039
    .end local v2    # "factor":I
    .local v4, "factor":I
    if-eq v4, v3, :cond_71

    .line 3040
    invoke-static {p3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 3041
    int-to-long v2, v4

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 3042
    div-int v2, v1, p2

    div-int v3, v0, p1

    invoke-static {p5, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 3046
    :cond_71
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3047
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3048
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3049
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3050
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3051
    return-void
.end method

.method private greylist-max-o applyLevelLimits()V
    .registers 39

    .line 3160
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 3161
    .local v1, "maxBlocksPerSecond":J
    const/4 v3, 0x0

    .line 3162
    .local v3, "maxBlocks":I
    const/4 v4, 0x0

    .line 3163
    .local v4, "maxBps":I
    const/4 v12, 0x0

    .line 3165
    .local v12, "maxDPBBlocks":I
    const/4 v5, 0x4

    .line 3166
    .local v5, "errors":I
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v13, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 3167
    .local v13, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 3169
    .local v14, "mime":Ljava/lang/String;
    const-string v6, "video/avc"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Unsupported profile "

    const-string v8, "Unrecognized level "

    const-string v9, "Unrecognized profile "

    const-string v11, " for "

    const-string v15, "VideoCapabilities"

    .line 3992
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3169
    if-eqz v6, :cond_32f

    .line 3170
    const/16 v3, 0x63

    .line 3171
    const-wide/16 v1, 0x5cd

    .line 3172
    const v4, 0xfa00

    .line 3173
    const/16 v6, 0x18c

    .line 3174
    .end local v12    # "maxDPBBlocks":I
    .local v6, "maxDPBBlocks":I
    array-length v12, v13

    move/from16 v16, v5

    move-wide/from16 v36, v1

    move v1, v4

    move-wide/from16 v4, v36

    const/4 v2, 0x0

    .end local v5    # "errors":I
    .local v1, "maxBps":I
    .local v4, "maxBlocksPerSecond":J
    .local v16, "errors":I
    :goto_3c
    if-ge v2, v12, :cond_305

    aget-object v0, v13, v2

    .line 3175
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v17, 0x0

    .local v17, "MBPS":I
    const/16 v18, 0x0

    .local v18, "FS":I
    const/16 v19, 0x0

    .local v19, "BR":I
    const/16 v20, 0x0

    .line 3176
    .local v20, "DPB":I
    const/16 v21, 0x1

    .line 3177
    .local v21, "supported":Z
    move/from16 v22, v2

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_1680

    .line 3219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v23, v10

    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    or-int/lit8 v16, v16, 0x1

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3217
    :sswitch_81
    const/high16 v17, 0xff0000

    const v18, 0x22000

    const v19, 0xc3500

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3215
    :sswitch_9c
    const v17, 0x7f8000

    const v18, 0x22000

    const v19, 0x75300

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3213
    :sswitch_b8
    const v17, 0x3fc000

    const v18, 0x22000

    const v19, 0x3a980

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3211
    :sswitch_d4
    const v17, 0x1fa400

    const v18, 0x9000

    const v19, 0x3a980

    const v20, 0x2d000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3209
    :sswitch_f0
    const/high16 v17, 0xf0000

    const v18, 0x9000

    const v19, 0x3a980

    const v20, 0x2d000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3207
    :sswitch_10b
    const/high16 v17, 0x90000

    const/16 v18, 0x5640

    const v19, 0x20f58

    const v20, 0x1af40

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3205
    :sswitch_125
    const v17, 0x7f800

    const/16 v18, 0x2200

    const v19, 0xc350

    const v20, 0x8800

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3203
    :sswitch_140
    const v17, 0x3c000

    const/16 v18, 0x2000

    const v19, 0xc350

    const v20, 0x8000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3201
    :sswitch_15b
    const v17, 0x3c000

    const/16 v18, 0x2000

    const/16 v19, 0x4e20

    const v20, 0x8000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3199
    :sswitch_175
    const v17, 0x34bc0

    const/16 v18, 0x1400

    const/16 v19, 0x4e20

    const/16 v20, 0x5000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3197
    :sswitch_18e
    const v17, 0x1a5e0

    const/16 v18, 0xe10

    const/16 v19, 0x36b0

    const/16 v20, 0x4650

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3195
    :sswitch_1a7
    const v17, 0x9e34

    const/16 v18, 0x654

    const/16 v19, 0x2710

    const/16 v20, 0x1fa4

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3193
    :sswitch_1c0
    const/16 v17, 0x4f1a

    const/16 v18, 0x654

    const/16 v19, 0xfa0

    const/16 v20, 0x1fa4

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3191
    :sswitch_1d8
    const/16 v17, 0x4d58

    const/16 v18, 0x318

    const/16 v19, 0xfa0

    const/16 v20, 0x1290

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3189
    :sswitch_1f0
    const/16 v17, 0x2e68

    const/16 v18, 0x18c

    const/16 v19, 0x7d0

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3187
    :sswitch_208
    const/16 v17, 0x2e68

    const/16 v18, 0x18c

    const/16 v19, 0x300

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_27b

    .line 3185
    :sswitch_220
    const/16 v17, 0x1770

    const/16 v18, 0x18c

    const/16 v19, 0x180

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_27b

    .line 3183
    :sswitch_237
    const/16 v17, 0xbb8

    const/16 v18, 0x18c

    const/16 v19, 0xc0

    const/16 v20, 0x384

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_27b

    .line 3181
    :sswitch_24e
    const/16 v17, 0x5cd

    const/16 v18, 0x63

    const/16 v19, 0x80

    const/16 v20, 0x18c

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_27b

    .line 3179
    :sswitch_265
    const/16 v17, 0x5cd

    const/16 v18, 0x63

    const/16 v19, 0x40

    const/16 v20, 0x18c

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    .line 3223
    .end local v17    # "MBPS":I
    .end local v18    # "FS":I
    .end local v19    # "BR":I
    .end local v20    # "DPB":I
    .local v2, "MBPS":I
    .local v8, "DPB":I
    .local v10, "FS":I
    .local v12, "BR":I
    :goto_27b
    move-object/from16 v19, v13

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v19, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v13, :sswitch_data_16d2

    .line 3242
    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    or-int/lit8 v16, v16, 0x1

    .line 3245
    mul-int/lit16 v12, v12, 0x3e8

    goto :goto_2da

    .line 3228
    :sswitch_2a7
    mul-int/lit16 v12, v12, 0xbb8

    move-object/from16 v20, v7

    goto :goto_2da

    .line 3226
    :sswitch_2ac
    mul-int/lit16 v12, v12, 0x4e2

    move-object/from16 v20, v7

    goto :goto_2da

    .line 3232
    :sswitch_2b1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v20, v7

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    or-int/lit8 v16, v16, 0x2

    .line 3235
    const/16 v21, 0x0

    goto :goto_2d8

    .line 3223
    :sswitch_2d6
    move-object/from16 v20, v7

    .line 3240
    :goto_2d8
    mul-int/lit16 v12, v12, 0x3e8

    .line 3247
    :goto_2da
    if-eqz v21, :cond_2e0

    .line 3248
    and-int/lit8 v7, v16, -0x5

    move/from16 v16, v7

    .line 3250
    :cond_2e0
    move-object/from16 v24, v14

    .end local v14    # "mime":Ljava/lang/String;
    .local v24, "mime":Ljava/lang/String;
    int-to-long v13, v2

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3251
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3252
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3253
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3174
    .end local v0    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v2    # "MBPS":I
    .end local v8    # "DPB":I
    .end local v10    # "FS":I
    .end local v12    # "BR":I
    .end local v21    # "supported":Z
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v17

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v23

    move-object/from16 v14, v24

    goto/16 :goto_3c

    .line 3256
    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v24    # "mime":Ljava/lang/String;
    .restart local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "mime":Ljava/lang/String;
    :cond_305
    move-object/from16 v23, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "mime":Ljava/lang/String;
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v24    # "mime":Ljava/lang/String;
    mul-int/lit8 v0, v3, 0x8

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 3257
    .local v0, "maxLengthInBlocks":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    move v2, v6

    .end local v6    # "maxDPBBlocks":I
    .local v2, "maxDPBBlocks":I
    const/16 v6, 0x10

    const/16 v7, 0x10

    move v10, v2

    .end local v2    # "maxDPBBlocks":I
    .local v10, "maxDPBBlocks":I
    move v2, v0

    move v11, v10

    move v10, v1

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    .local v10, "maxBps":I
    .local v11, "maxDPBBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3262
    .end local v1    # "maxLengthInBlocks":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v30, v11

    move-object/from16 v12, v19

    move-object/from16 v13, v24

    goto/16 :goto_166b

    .end local v10    # "maxBps":I
    .end local v11    # "maxDPBBlocks":I
    .end local v16    # "errors":I
    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v24    # "mime":Ljava/lang/String;
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .local v12, "maxDPBBlocks":I
    .restart local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "mime":Ljava/lang/String;
    :cond_32f
    move-object/from16 v20, v7

    move-object/from16 v18, v8

    move-object/from16 v23, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "mime":Ljava/lang/String;
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v24    # "mime":Ljava/lang/String;
    const-string v0, "video/mpeg2"

    move-object/from16 v13, v24

    .end local v24    # "mime":Ljava/lang/String;
    .local v13, "mime":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "/"

    const-string v7, "Unrecognized profile/level "

    if-eqz v0, :cond_5b1

    .line 3263
    const/16 v0, 0xb

    .local v0, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v14, 0xf

    .line 3264
    .local v14, "maxRate":I
    const/16 v3, 0x63

    .line 3265
    const-wide/16 v1, 0x5cd

    .line 3266
    const v4, 0xfa00

    .line 3267
    move/from16 v17, v8

    move-object/from16 v8, v19

    const/16 v19, 0xc

    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v8, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v17, "maxHeight":I
    array-length v10, v8

    move/from16 v16, v5

    move-wide/from16 v36, v1

    move v1, v0

    move/from16 v2, v17

    const/4 v0, 0x0

    move-object/from16 v17, v8

    move v8, v14

    move v14, v4

    move-wide/from16 v4, v36

    .end local v0    # "maxWidth":I
    .end local v5    # "errors":I
    .local v1, "maxWidth":I
    .local v2, "maxHeight":I
    .local v4, "maxBlocksPerSecond":J
    .local v8, "maxRate":I
    .local v14, "maxBps":I
    .restart local v16    # "errors":I
    .local v17, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_369
    if-ge v0, v10, :cond_58c

    move/from16 v18, v0

    aget-object v0, v17, v18

    .line 3268
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v21, 0x0

    .local v21, "MBPS":I
    const/16 v22, 0x0

    .local v22, "FS":I
    const/16 v24, 0x0

    .local v24, "BR":I
    const/16 v25, 0x0

    .local v25, "FR":I
    const/16 v26, 0x0

    .local v26, "W":I
    const/16 v27, 0x0

    .line 3269
    .local v27, "H":I
    const/16 v28, 0x1

    .line 3270
    .local v28, "supported":Z
    move/from16 v29, v10

    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v10, :pswitch_data_16f8

    .line 3311
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .local v30, "maxDPBBlocks":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    or-int/lit8 v16, v16, 0x1

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3305
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_3bc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v12

    move-object/from16 v12, v20

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    or-int/lit8 v16, v16, 0x2

    .line 3308
    const/16 v28, 0x0

    .line 3309
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3283
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_3f8
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v10, :pswitch_data_1708

    .line 3295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    or-int/lit8 v16, v16, 0x1

    .line 3300
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3293
    :pswitch_43f
    const/16 v25, 0x3c

    const/16 v26, 0x78

    const/16 v27, 0x44

    const v21, 0x77880

    const/16 v22, 0x1fe0

    const v24, 0x13880

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3291
    :pswitch_463
    const/16 v25, 0x3c

    const/16 v26, 0x78

    const/16 v27, 0x44

    const v21, 0x3bc40

    const/16 v22, 0x1fe0

    const v24, 0x13880

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3289
    :pswitch_487
    const/16 v25, 0x3c

    const/16 v26, 0x5a

    const/16 v27, 0x44

    const v21, 0x2cd30

    const/16 v22, 0x17e8

    const v24, 0xea60

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3287
    :pswitch_4ab
    const/16 v25, 0x1e

    const/16 v26, 0x2d

    const/16 v27, 0x24

    const v21, 0x9e34

    const/16 v22, 0x654

    const/16 v24, 0x3a98

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3285
    :pswitch_4ce
    const/16 v25, 0x1e

    const/16 v26, 0x16

    const/16 v27, 0x12

    const/16 v21, 0x2e68

    const/16 v22, 0x18c

    const/16 v24, 0xfa0

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_557

    .line 3272
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_4f0
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v10, :pswitch_data_1716

    .line 3276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    or-int/lit8 v16, v16, 0x1

    .line 3281
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto :goto_557

    .line 3274
    :pswitch_536
    const/16 v25, 0x1e

    const/16 v26, 0x2d

    const/16 v27, 0x24

    const v21, 0x9e34

    const/16 v22, 0x654

    const/16 v24, 0x3a98

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    .line 3315
    .end local v22    # "FS":I
    .end local v24    # "BR":I
    .end local v25    # "FR":I
    .end local v26    # "W":I
    .end local v27    # "H":I
    .local v0, "BR":I
    .local v9, "FR":I
    .local v10, "MBPS":I
    .local v11, "H":I
    .local v12, "FS":I
    .local v15, "W":I
    .local v21, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_557
    if-eqz v28, :cond_55b

    .line 3316
    and-int/lit8 v16, v16, -0x5

    .line 3318
    :cond_55b
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    int-to-long v6, v10

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3319
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3320
    mul-int/lit16 v6, v0, 0x3e8

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3321
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3322
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3323
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3267
    .end local v0    # "BR":I
    .end local v9    # "FR":I
    .end local v10    # "MBPS":I
    .end local v11    # "H":I
    .end local v12    # "FS":I
    .end local v15    # "W":I
    .end local v21    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v28    # "supported":Z
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v9, v22

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v10, v29

    move/from16 v12, v30

    goto/16 :goto_369

    .line 3325
    .end local v30    # "maxDPBBlocks":I
    .local v12, "maxDPBBlocks":I
    :cond_58c
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    move v0, v8

    .end local v8    # "maxRate":I
    .local v0, "maxRate":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v10, v0

    move-object/from16 v12, v17

    move-object/from16 v0, p0

    .end local v0    # "maxRate":I
    .end local v17    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v10, "maxRate":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3329
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3330
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v10    # "maxRate":I
    move-object v6, v0

    move v1, v14

    goto/16 :goto_166b

    .end local v14    # "maxBps":I
    .end local v16    # "errors":I
    .end local v30    # "maxDPBBlocks":I
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .local v12, "maxDPBBlocks":I
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5b1
    move-object/from16 v0, p0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v22, v9

    move-object/from16 v25, v11

    move/from16 v30, v12

    move-object/from16 v24, v15

    move-object/from16 v12, v19

    const/16 v19, 0xc

    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v30    # "maxDPBBlocks":I
    const-string v6, "video/mp4v-es"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9ad

    .line 3331
    const/16 v6, 0xb

    .local v6, "maxWidth":I
    const/16 v7, 0x9

    .local v7, "maxHeight":I
    const/16 v8, 0xf

    .line 3332
    .restart local v8    # "maxRate":I
    const/16 v3, 0x63

    .line 3333
    const-wide/16 v1, 0x5cd

    .line 3334
    const v4, 0xfa00

    .line 3335
    array-length v9, v12

    move v10, v4

    move v11, v5

    move v14, v8

    move-wide v4, v1

    move v1, v6

    move v2, v7

    const/4 v6, 0x0

    .end local v5    # "errors":I
    .end local v6    # "maxWidth":I
    .end local v7    # "maxHeight":I
    .end local v8    # "maxRate":I
    .local v1, "maxWidth":I
    .restart local v2    # "maxHeight":I
    .local v4, "maxBlocksPerSecond":J
    .local v10, "maxBps":I
    .local v11, "errors":I
    .local v14, "maxRate":I
    :goto_5e0
    if-ge v6, v9, :cond_986

    aget-object v7, v12, v6

    .line 3336
    .local v7, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x0

    .local v8, "MBPS":I
    const/4 v15, 0x0

    .local v15, "FS":I
    const/16 v16, 0x0

    .local v16, "BR":I
    const/16 v17, 0x0

    .local v17, "FR":I
    const/16 v18, 0x0

    .local v18, "W":I
    const/16 v21, 0x0

    .line 3337
    .local v21, "H":I
    const/16 v28, 0x0

    .line 3338
    .local v28, "strict":Z
    const/16 v29, 0x1

    .line 3339
    .local v29, "supported":Z
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_171c

    .line 3414
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    move/from16 v24, v15

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .end local v15    # "FS":I
    .local v24, "FS":I
    .local v25, "errors":I
    .local v27, "MBPS":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    or-int/lit8 v0, v25, 0x1

    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    .end local v25    # "errors":I
    .local v0, "errors":I
    goto/16 :goto_92c

    .line 3368
    .end local v0    # "errors":I
    .end local v24    # "FS":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    .restart local v15    # "FS":I
    :sswitch_644
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_175e

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v6

    move-object/from16 v6, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v27, v8

    .end local v8    # "MBPS":I
    .restart local v27    # "MBPS":I
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v26, v9

    iget v9, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v11

    move-object/from16 v11, v24

    .end local v11    # "errors":I
    .restart local v25    # "errors":I
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    or-int/lit8 v0, v25, 0x1

    .line 3388
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move/from16 v25, v0

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v0, v27

    move-object/from16 v27, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3381
    .end local v0    # "errors":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    :sswitch_69b
    const/16 v17, 0x1e

    const/16 v18, 0x2d

    const/16 v21, 0x24

    const v8, 0xbdd8

    const/16 v15, 0x654

    const/16 v16, 0x1f40

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3379
    :sswitch_6c2
    const/16 v17, 0x1e

    const/16 v18, 0x2c

    const/16 v21, 0x24

    const/16 v8, 0x5cd0

    const/16 v15, 0x318

    const/16 v16, 0xbb8

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3377
    :sswitch_6e8
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x2e68

    const/16 v15, 0x18c

    const/16 v16, 0x5dc

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3375
    :sswitch_70e
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x2e68

    const/16 v15, 0x18c

    const/16 v16, 0x300

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3373
    :sswitch_734
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x1734

    const/16 v15, 0x18c

    const/16 v16, 0x180

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3371
    :sswitch_75a
    const/16 v17, 0x1e

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v8, 0xb9a

    const/16 v15, 0x63

    const/16 v16, 0x80

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3408
    :sswitch_780
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .restart local v25    # "errors":I
    .restart local v27    # "MBPS":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v15

    move-object/from16 v15, v20

    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    or-int/lit8 v0, v25, 0x2

    .line 3411
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    const/16 v29, 0x0

    .line 3412
    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3341
    .end local v0    # "errors":I
    .end local v24    # "FS":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    .restart local v15    # "FS":I
    :sswitch_7cf
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    move/from16 v24, v15

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v25    # "errors":I
    .restart local v27    # "MBPS":I
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_177c

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    or-int/lit8 v0, v25, 0x1

    .line 3366
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3359
    .end local v0    # "errors":I
    .restart local v25    # "errors":I
    :sswitch_829
    const/16 v17, 0x1e

    const/16 v18, 0x50

    const/16 v21, 0x2d

    const v0, 0x1a5e0

    .end local v27    # "MBPS":I
    .local v0, "MBPS":I
    const/16 v15, 0xe10

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x2ee0

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3357
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_84a
    const/16 v17, 0x1e

    const/16 v18, 0x2d

    const/16 v21, 0x24

    const v0, 0x9e34

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x654

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x1f40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3355
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_86b
    const/16 v17, 0x1e

    const/16 v18, 0x28

    const/16 v21, 0x1e

    const v0, 0x8ca0

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x4b0

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0xfa0

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3353
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_88c
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v0, 0x2e68

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x18c

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x180

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3351
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_8ac
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v0, 0x1734

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x18c

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x80

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_92c

    .line 3346
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_8cc
    const/16 v17, 0x1e

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto :goto_92c

    .line 3348
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_8eb
    const/16 v28, 0x1

    .line 3349
    const/16 v17, 0xf

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x80

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto :goto_92c

    .line 3343
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_90c
    const/16 v28, 0x1

    .line 3344
    const/16 v17, 0xf

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    .line 3418
    .end local v17    # "FR":I
    .end local v18    # "W":I
    .end local v21    # "H":I
    .local v7, "BR":I
    .local v8, "H":I
    .local v9, "W":I
    .local v11, "FR":I
    .local v16, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_92c
    if-eqz v29, :cond_931

    .line 3419
    and-int/lit8 v17, v25, -0x5

    .end local v25    # "errors":I
    .local v17, "errors":I
    goto :goto_933

    .line 3418
    .end local v17    # "errors":I
    .restart local v25    # "errors":I
    :cond_931
    move/from16 v17, v25

    .line 3421
    .end local v25    # "errors":I
    .restart local v17    # "errors":I
    :goto_933
    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .local v32, "mime":Ljava/lang/String;
    .local v33, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    int-to-long v12, v0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3422
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3423
    mul-int/lit16 v12, v7, 0x3e8

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3424
    if-eqz v28, :cond_956

    .line 3425
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3426
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3427
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v14, v12

    .end local v14    # "maxRate":I
    .local v12, "maxRate":I
    goto :goto_971

    .line 3430
    .end local v12    # "maxRate":I
    .restart local v14    # "maxRate":I
    :cond_956
    mul-int/lit8 v12, v15, 0x2

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 3431
    .local v12, "maxDim":I
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3432
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3433
    const/16 v13, 0x3c

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v13

    .line 3335
    .end local v0    # "MBPS":I
    .end local v7    # "BR":I
    .end local v8    # "H":I
    .end local v9    # "W":I
    .end local v11    # "FR":I
    .end local v12    # "maxDim":I
    .end local v15    # "FS":I
    .end local v16    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v28    # "strict":Z
    .end local v29    # "supported":Z
    :goto_971
    add-int/lit8 v0, v31, 0x1

    move/from16 v11, v17

    move-object/from16 v25, v21

    move/from16 v9, v26

    move-object/from16 v26, v27

    move-object/from16 v13, v32

    move-object/from16 v12, v33

    move-object/from16 v27, v6

    move v6, v0

    move-object/from16 v0, p0

    goto/16 :goto_5e0

    .line 3436
    .end local v17    # "errors":I
    .end local v32    # "mime":Ljava/lang/String;
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v11, "errors":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v13    # "mime":Ljava/lang/String;
    :cond_986
    move/from16 v25, v11

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .restart local v25    # "errors":I
    .restart local v32    # "mime":Ljava/lang/String;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3440
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3441
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v14    # "maxRate":I
    move-object v6, v0

    move v1, v10

    move/from16 v16, v25

    goto/16 :goto_166b

    .end local v10    # "maxBps":I
    .end local v25    # "errors":I
    .end local v32    # "mime":Ljava/lang/String;
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v13    # "mime":Ljava/lang/String;
    :cond_9ad
    move-object/from16 v33, v12

    move-object/from16 v32, v13

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move-object/from16 v27, v26

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .restart local v32    # "mime":Ljava/lang/String;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v7, "video/3gpp"

    .end local v32    # "mime":Ljava/lang/String;
    .restart local v13    # "mime":Ljava/lang/String;
    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c9d

    .line 3442
    const/16 v7, 0xb

    .local v7, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v9, 0xf

    .line 3443
    .local v9, "maxRate":I
    move v10, v7

    .local v10, "minWidth":I
    move v11, v8

    .line 3444
    .local v11, "minHeight":I
    const/16 v12, 0x10

    .line 3445
    .local v12, "minAlignment":I
    const/16 v3, 0x63

    .line 3446
    const-wide/16 v1, 0x5cd

    .line 3447
    const v4, 0xfa00

    .line 3448
    move-object/from16 v14, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v15, v14

    move/from16 v18, v12

    move v12, v4

    move v4, v8

    move/from16 v8, v18

    move/from16 v18, v5

    move v5, v3

    move v3, v7

    move v7, v9

    const/4 v9, 0x0

    .end local v9    # "maxRate":I
    .local v3, "maxWidth":I
    .local v4, "maxHeight":I
    .local v5, "maxBlocks":I
    .local v7, "maxRate":I
    .local v8, "minAlignment":I
    .local v12, "maxBps":I
    .local v18, "errors":I
    :goto_9df
    if-ge v9, v15, :cond_c5a

    move/from16 v19, v8

    .end local v8    # "minAlignment":I
    .local v19, "minAlignment":I
    aget-object v8, v14, v9

    .line 3449
    .local v8, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v20, 0x0

    .local v20, "MBPS":I
    const/16 v25, 0x0

    .local v25, "BR":I
    const/16 v26, 0x0

    .local v26, "FR":I
    const/16 v28, 0x0

    .local v28, "W":I
    const/16 v29, 0x0

    .local v29, "H":I
    move/from16 v31, v10

    .local v31, "minW":I
    move/from16 v32, v11

    .line 3450
    .local v32, "minH":I
    const/16 v33, 0x0

    .line 3451
    .local v33, "strict":Z
    move/from16 v34, v9

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v9, :sswitch_data_179e

    .line 3486
    move/from16 v35, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v15, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v15, v27

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v27, v6

    iget v6, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v9, v21

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v15

    move-object/from16 v15, v24

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    or-int/lit8 v18, v18, 0x1

    move/from16 v6, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3483
    :sswitch_a46
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3484
    .end local v19    # "minAlignment":I
    .local v9, "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x2d

    const/16 v29, 0x24

    const/16 v25, 0x100

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3479
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_a77
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3480
    .end local v19    # "minAlignment":I
    .restart local v9    # "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x2d

    const/16 v29, 0x12

    const/16 v25, 0x80

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3475
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_aa8
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3476
    .end local v19    # "minAlignment":I
    .restart local v9    # "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x40

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3466
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_ad9
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v35, v15

    move/from16 v15, v17

    if-eq v9, v15, :cond_ae9

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v15, 0x4

    if-ne v9, v15, :cond_ae7

    goto :goto_ae9

    :cond_ae7
    const/4 v15, 0x0

    goto :goto_aea

    :cond_ae9
    :goto_ae9
    const/4 v15, 0x1

    :goto_aea
    move/from16 v33, v15

    .line 3469
    if-nez v33, :cond_af5

    .line 3470
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    move/from16 v19, v9

    .line 3472
    :cond_af5
    const/16 v26, 0xf

    const/16 v28, 0xb

    const/16 v29, 0x9

    const/16 v25, 0x2

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3462
    :sswitch_b1d
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3463
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x20

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_bc9

    .line 3459
    :sswitch_b49
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3460
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x6

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto :goto_bc9

    .line 3456
    :sswitch_b74
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3457
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x2

    mul-int v9, v28, v29

    mul-int/lit8 v20, v9, 0xf

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto :goto_bc9

    .line 3453
    :sswitch_b9f
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3454
    const/16 v26, 0xf

    const/16 v28, 0xb

    const/16 v29, 0x9

    const/16 v25, 0x1

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    .line 3490
    .end local v28    # "W":I
    .end local v29    # "H":I
    .local v6, "MBPS":I
    .local v10, "H":I
    .local v11, "W":I
    .local v14, "FR":I
    .local v20, "minHeight":I
    .local v24, "minWidth":I
    .local v26, "strict":Z
    .local v33, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_bc9
    move/from16 v28, v7

    .end local v7    # "maxRate":I
    .local v28, "maxRate":I
    iget v7, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v7, :sswitch_data_17c0

    .line 3502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v14

    move-object/from16 v14, v22

    .end local v14    # "FR":I
    .local v29, "FR":I
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v14, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    or-int/lit8 v18, v18, 0x1

    goto :goto_bf7

    .line 3500
    .end local v29    # "FR":I
    .restart local v14    # "FR":I
    :sswitch_bf5
    move/from16 v29, v14

    .line 3506
    .end local v14    # "FR":I
    .restart local v29    # "FR":I
    :goto_bf7
    if-eqz v26, :cond_c02

    .line 3511
    const/16 v31, 0xb

    const/16 v32, 0x9

    move/from16 v14, v31

    move/from16 v7, v32

    goto :goto_c09

    .line 3516
    :cond_c02
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    move/from16 v14, v31

    move/from16 v7, v32

    .line 3518
    .end local v31    # "minW":I
    .end local v32    # "minH":I
    .local v7, "minH":I
    .local v14, "minW":I
    :goto_c09
    and-int/lit8 v18, v18, -0x5

    .line 3519
    move-object/from16 v31, v8

    move-object/from16 v32, v9

    .end local v8    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v31, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    int-to-long v8, v6

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3520
    mul-int v8, v11, v10

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3521
    const v8, 0xfa00

    mul-int v8, v8, v25

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3522
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3523
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3524
    move/from16 v9, v28

    move/from16 v8, v29

    .end local v28    # "maxRate":I
    .end local v29    # "FR":I
    .local v8, "FR":I
    .local v9, "maxRate":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3525
    move-wide/from16 v28, v1

    move/from16 v1, v24

    .end local v24    # "minWidth":I
    .local v1, "minWidth":I
    .local v28, "maxBlocksPerSecond":J
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3526
    move/from16 v2, v20

    .end local v20    # "minHeight":I
    .local v2, "minHeight":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3448
    .end local v2    # "minHeight":I
    .end local v6    # "MBPS":I
    .end local v7    # "minH":I
    .end local v8    # "FR":I
    .end local v10    # "H":I
    .end local v14    # "minW":I
    .end local v25    # "BR":I
    .end local v26    # "strict":Z
    .end local v31    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v11, "minHeight":I
    add-int/lit8 v2, v34, 0x1

    move v10, v1

    move v7, v9

    move-object/from16 v24, v15

    move/from16 v8, v19

    move-object/from16 v6, v27

    move-object/from16 v14, v33

    move/from16 v15, v35

    const/16 v17, 0x1

    move v9, v2

    move-object/from16 v27, v21

    move-wide/from16 v1, v28

    move-object/from16 v21, v32

    goto/16 :goto_9df

    .line 3530
    .end local v9    # "maxRate":I
    .end local v19    # "minAlignment":I
    .end local v28    # "maxBlocksPerSecond":J
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v7, "maxRate":I
    .local v8, "minAlignment":I
    .local v10, "minWidth":I
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c5a
    move v9, v7

    move/from16 v19, v8

    move-object/from16 v33, v14

    move-wide v6, v1

    move v1, v10

    move v2, v11

    .end local v7    # "maxRate":I
    .end local v8    # "minAlignment":I
    .end local v10    # "minWidth":I
    .end local v11    # "minHeight":I
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "minWidth":I
    .restart local v2    # "minHeight":I
    .local v6, "maxBlocksPerSecond":J
    .restart local v9    # "maxRate":I
    .restart local v19    # "minAlignment":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v8, :cond_c7a

    .line 3531
    new-instance v8, Landroid/util/Rational;

    const/16 v10, 0xb

    const/16 v11, 0x9

    invoke-direct {v8, v10, v11}, Landroid/util/Rational;-><init>(II)V

    new-instance v14, Landroid/util/Rational;

    invoke-direct {v14, v10, v11}, Landroid/util/Rational;-><init>(II)V

    .line 3532
    invoke-static {v8, v14}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3534
    :cond_c7a
    const/16 v8, 0x10

    move/from16 v28, v9

    .end local v9    # "maxRate":I
    .local v28, "maxRate":I
    const/16 v9, 0x10

    move/from16 v11, v19

    move/from16 v10, v19

    move-object/from16 v14, v23

    .end local v19    # "minAlignment":I
    .local v10, "minAlignment":I
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3540
    .end local v10    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3541
    .end local v1    # "minWidth":I
    .end local v2    # "minHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v19    # "minAlignment":I
    .end local v28    # "maxRate":I
    move v3, v5

    move-wide v4, v6

    move v1, v12

    move/from16 v16, v18

    move-object/from16 v12, v33

    move-object v6, v0

    goto/16 :goto_166b

    .end local v6    # "maxBlocksPerSecond":J
    .end local v12    # "maxBps":I
    .end local v18    # "errors":I
    .local v1, "maxBlocksPerSecond":J
    .local v3, "maxBlocks":I
    .local v4, "maxBps":I
    .local v5, "errors":I
    :cond_c9d
    move-object/from16 v32, v21

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    const-string v6, "video/x-vnd.on2.vp8"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d44

    .line 3542
    const v3, 0x7fffffff

    .line 3543
    move v6, v4

    move v7, v5

    .end local v4    # "maxBps":I
    .end local v5    # "errors":I
    .local v6, "maxBps":I
    .local v7, "errors":I
    const-wide/32 v4, 0x7fffffff

    .line 3546
    .end local v1    # "maxBlocksPerSecond":J
    .local v4, "maxBlocksPerSecond":J
    const v10, 0x5f5e100

    .line 3550
    .end local v6    # "maxBps":I
    .local v10, "maxBps":I
    move-object/from16 v12, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v1, v12

    move v11, v7

    const/4 v2, 0x0

    .end local v7    # "errors":I
    .local v11, "errors":I
    :goto_cbb
    if-ge v2, v1, :cond_d2a

    aget-object v6, v12, v2

    .line 3551
    .local v6, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v7, :sswitch_data_17e6

    .line 3558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v18

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v9, v32

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    or-int/lit8 v11, v11, 0x1

    goto :goto_ced

    .line 3556
    :sswitch_ce9
    move-object/from16 v8, v18

    move-object/from16 v9, v32

    .line 3562
    :goto_ced
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v7, :pswitch_data_17f8

    .line 3566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v17, v1

    iget v1, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    or-int/lit8 v11, v11, 0x1

    goto :goto_d1b

    .line 3564
    :pswitch_d17
    move/from16 v17, v1

    move-object/from16 v0, v22

    .line 3570
    :goto_d1b
    and-int/lit8 v11, v11, -0x5

    .line 3550
    .end local v6    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v0

    move-object/from16 v18, v8

    move-object/from16 v32, v9

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_cbb

    .line 3573
    :cond_d2a
    const/16 v15, 0x10

    .line 3574
    .local v15, "blockSize":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3577
    .end local v15    # "blockSize":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v16, v11

    move-object/from16 v23, v14

    goto/16 :goto_166b

    .end local v10    # "maxBps":I
    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v1    # "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_d44
    move v6, v4

    move v7, v5

    move-object/from16 v8, v18

    move-object/from16 v0, v22

    move-object/from16 v9, v32

    move-object/from16 v12, v33

    .end local v4    # "maxBps":I
    .end local v5    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v6, "maxBps":I
    .restart local v7    # "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ff1

    .line 3578
    const-wide/32 v1, 0xca800

    .line 3579
    const v3, 0x9000

    .line 3580
    const v4, 0x30d40

    .line 3581
    .end local v6    # "maxBps":I
    .restart local v4    # "maxBps":I
    const/16 v6, 0x200

    .line 3583
    .local v6, "maxDim":I
    array-length v11, v12

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    move/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "errors":I
    .local v3, "maxBps":I
    .local v4, "maxBlocks":I
    .local v16, "errors":I
    :goto_d6a
    if-ge v7, v11, :cond_fbb

    aget-object v5, v12, v7

    .line 3584
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v20, 0x0

    .line 3585
    .local v20, "SR":J
    const/16 v22, 0x0

    .line 3586
    .restart local v22    # "FS":I
    const/16 v23, 0x0

    .line 3587
    .local v23, "BR":I
    const/16 v24, 0x0

    .line 3588
    .local v24, "D":I
    iget v10, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v10, :sswitch_data_17fe

    .line 3618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v26, v7

    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    or-int/lit8 v16, v16, 0x1

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v7, v23

    move-object/from16 v23, v14

    move v14, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3616
    :sswitch_db0
    const-wide v20, 0x118800000L

    const/high16 v22, 0x2200000

    const v23, 0x75300

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3614
    :sswitch_dd2
    const-wide v20, 0x8c400000L

    const/high16 v22, 0x2200000

    const v23, 0x3a980

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3612
    :sswitch_df4
    const-wide/32 v20, 0x46200000

    const/high16 v22, 0x2200000

    const v23, 0x2bf20

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3610
    :sswitch_e14
    const-wide/32 v20, 0x46200000

    const/high16 v22, 0x880000

    const v23, 0x2bf20

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3608
    :sswitch_e34
    const-wide/32 v20, 0x23100000

    const/high16 v22, 0x880000

    const v23, 0x1d4c0

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3606
    :sswitch_e54
    const-wide/32 v20, 0x12980000

    const/high16 v22, 0x880000

    const v23, 0xea60

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3604
    :sswitch_e74
    const-wide/32 v20, 0x9900000

    const/high16 v22, 0x220000

    const/16 v23, 0x7530

    const/16 v24, 0x1040

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3602
    :sswitch_e93
    const-wide/32 v20, 0x4fb0000

    const/high16 v22, 0x220000

    const/16 v23, 0x4650

    const/16 v24, 0x1040

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3600
    :sswitch_eb2
    const-wide/32 v20, 0x2328000

    const/high16 v22, 0xf0000

    const/16 v23, 0x2ee0

    const/16 v24, 0xac0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3598
    :sswitch_ed1
    const-wide/32 v20, 0x13c6800

    const v22, 0x87000

    const/16 v23, 0x1c20

    const/16 v24, 0x800

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3596
    :sswitch_ef1
    const-wide/32 v20, 0x8ca000

    const v22, 0x3c000

    const/16 v23, 0xe10

    const/16 v24, 0x540

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_f6d

    .line 3594
    :sswitch_f11
    const-wide/32 v20, 0x465000

    const v22, 0x1e000

    const/16 v23, 0x708

    const/16 v24, 0x3c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto :goto_f6d

    .line 3592
    :sswitch_f30
    const-wide/32 v20, 0x2a3000

    const v22, 0x12000

    const/16 v23, 0x320

    const/16 v24, 0x300

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto :goto_f6d

    .line 3590
    :sswitch_f4f
    const-wide/32 v20, 0xca800

    const v22, 0x9000

    const/16 v23, 0xc8

    const/16 v24, 0x200

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    .line 3622
    .end local v20    # "SR":J
    .end local v22    # "FS":I
    .end local v23    # "BR":I
    .end local v24    # "D":I
    .local v7, "FS":I
    .local v8, "D":I
    .local v10, "SR":J
    .local v14, "BR":I
    :goto_f6d
    move-object/from16 v33, v12

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v12, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v12, :sswitch_data_1838

    .line 3633
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v22, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    or-int/lit8 v16, v16, 0x1

    goto :goto_f99

    .line 3631
    :sswitch_f97
    move-object/from16 v22, v0

    .line 3637
    :goto_f99
    and-int/lit8 v16, v16, -0x5

    .line 3638
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3639
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3640
    mul-int/lit16 v0, v14, 0x3e8

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3641
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3583
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v7    # "FS":I
    .end local v8    # "D":I
    .end local v10    # "SR":J
    .end local v14    # "BR":I
    add-int/lit8 v7, v26, 0x1

    move/from16 v11, v20

    move-object/from16 v8, v21

    move-object/from16 v0, v22

    move-object/from16 v14, v23

    move-object/from16 v12, v33

    goto/16 :goto_d6a

    .line 3644
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_fbb
    move-object/from16 v33, v12

    move-object/from16 v23, v14

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v10, 0x8

    .line 3645
    .local v10, "blockSize":I
    const/16 v0, 0x8

    invoke-static {v6, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 3646
    .local v0, "maxLengthInBlocks":I
    const/16 v5, 0x40

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 3647
    const-wide/16 v7, 0x40

    invoke-static {v1, v2, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v1

    .line 3649
    const/4 v8, 0x1

    const/4 v9, 0x1

    move v5, v6

    .end local v6    # "maxDim":I
    .local v5, "maxDim":I
    const/16 v6, 0x8

    const/16 v7, 0x8

    move v11, v3

    move v3, v4

    move-wide/from16 v36, v1

    move v1, v5

    move-wide/from16 v4, v36

    .end local v5    # "maxDim":I
    .local v1, "maxDim":I
    .local v3, "maxBlocks":I
    .local v4, "maxBlocksPerSecond":J
    .local v11, "maxBps":I
    move v2, v0

    move v12, v11

    move v11, v1

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    .local v11, "maxDim":I
    .local v12, "maxBps":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3654
    .end local v1    # "maxLengthInBlocks":I
    .end local v10    # "blockSize":I
    .end local v11    # "maxDim":I
    move-object/from16 v6, p0

    move v1, v12

    move-object/from16 v12, v33

    goto/16 :goto_166b

    .end local v4    # "maxBlocksPerSecond":J
    .end local v16    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v6, "maxBps":I
    .local v7, "errors":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_ff1
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v33, v12

    move-object/from16 v23, v14

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v0, "video/hevc"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11ba

    .line 3656
    const/16 v0, 0x240

    .line 3657
    .end local v3    # "maxBlocks":I
    .local v0, "maxBlocks":I
    mul-int/lit8 v3, v0, 0xf

    int-to-long v1, v3

    .line 3658
    const v3, 0x1f400

    .line 3659
    .end local v6    # "maxBps":I
    .local v3, "maxBps":I
    move-object/from16 v12, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v4, v12

    move v10, v3

    move v11, v7

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "maxBlocks":I
    .end local v7    # "errors":I
    .local v3, "maxBlocks":I
    .local v10, "maxBps":I
    .local v11, "errors":I
    :goto_1010
    if-ge v0, v4, :cond_119d

    aget-object v5, v12, v0

    .line 3660
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v6, 0x0

    .line 3661
    .local v6, "FR":D
    const/4 v8, 0x0

    .line 3662
    .local v8, "FS":I
    const/4 v14, 0x0

    .line 3663
    .restart local v14    # "BR":I
    move/from16 v16, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_185a

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v18, v6

    .end local v6    # "FR":D
    .local v18, "FR":D
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    or-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v18

    goto/16 :goto_114e

    .line 3714
    .end local v18    # "FR":D
    .restart local v6    # "FR":D
    :sswitch_1049
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x2200000

    const v14, 0xc3500

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3712
    :sswitch_1056
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x2200000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3710
    :sswitch_1063
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x2200000

    const v14, 0x75300

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3708
    :sswitch_1070
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x2200000

    const v14, 0x1d4c0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3706
    :sswitch_107d
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x2200000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3704
    :sswitch_108a
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x2200000

    const v14, 0xea60

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3702
    :sswitch_1097
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x880000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3700
    :sswitch_10a4
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x880000

    const v14, 0xea60

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3698
    :sswitch_10b1
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x880000

    const v14, 0x27100

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3696
    :sswitch_10be
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x880000

    const v14, 0x9c40

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3694
    :sswitch_10cb
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x880000

    const v14, 0x186a0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3692
    :sswitch_10d8
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x880000

    const/16 v14, 0x61a8

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_114e

    .line 3690
    :sswitch_10e4
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x220000

    const v14, 0xc350

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3688
    :sswitch_10f0
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x220000

    const/16 v14, 0x4e20

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3686
    :sswitch_10fb
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x220000

    const/16 v14, 0x7530

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3684
    :sswitch_1106
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x220000

    const/16 v14, 0x2ee0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3682
    :sswitch_1111
    const-wide v6, 0x4040e00000000000L    # 33.75

    const/high16 v8, 0xf0000

    const/16 v14, 0x2710

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3679
    :sswitch_111f
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x87000

    const/16 v14, 0x1770

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3676
    :sswitch_112b
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x3c000

    const/16 v14, 0xbb8

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3673
    :sswitch_1137
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x1e000

    const/16 v14, 0x5dc

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_114e

    .line 3670
    :sswitch_1143
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    const v8, 0x9000

    const/16 v14, 0x80

    move/from16 v17, v4

    move-object/from16 v4, v21

    .line 3720
    :goto_114e
    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_18c4

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    move-object/from16 v6, v22

    .end local v6    # "FR":D
    .restart local v18    # "FR":D
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    or-int/lit8 v11, v11, 0x1

    goto :goto_117c

    .line 3726
    .end local v18    # "FR":D
    .restart local v6    # "FR":D
    :sswitch_1178
    move-wide/from16 v18, v6

    move-object/from16 v6, v22

    .line 3740
    .end local v6    # "FR":D
    .restart local v18    # "FR":D
    :goto_117c
    shr-int/lit8 v0, v8, 0x6

    .line 3741
    .end local v8    # "FS":I
    .local v0, "FS":I
    and-int/lit8 v11, v11, -0x5

    .line 3742
    int-to-double v7, v0

    mul-double v7, v7, v18

    double-to-int v7, v7

    int-to-long v7, v7

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3743
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3744
    mul-int/lit16 v7, v14, 0x3e8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3659
    .end local v0    # "FS":I
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "BR":I
    .end local v18    # "FR":D
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v4, v17

    goto/16 :goto_1010

    .line 3747
    :cond_119d
    mul-int/lit8 v0, v3, 0x8

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 3748
    .local v0, "maxLengthInBlocks":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-wide v4, v1

    .end local v1    # "maxBlocksPerSecond":J
    .restart local v4    # "maxBlocksPerSecond":J
    move v2, v0

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3753
    .end local v1    # "maxLengthInBlocks":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v16, v11

    goto/16 :goto_166b

    .end local v4    # "maxBlocksPerSecond":J
    .end local v10    # "maxBps":I
    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v6, "maxBps":I
    .restart local v7    # "errors":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_11ba
    move v0, v6

    move-object/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v12, v33

    .end local v6    # "maxBps":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBps":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v5, "video/av01"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13e5

    .line 3754
    const-wide/32 v1, 0xca800

    .line 3755
    const v3, 0x9000

    .line 3756
    const v0, 0x30d40

    .line 3757
    const/16 v5, 0x200

    .line 3763
    .local v5, "maxDim":I
    array-length v8, v12

    move v10, v0

    move v11, v5

    move v14, v7

    const/4 v0, 0x0

    .end local v0    # "maxBps":I
    .end local v5    # "maxDim":I
    .end local v7    # "errors":I
    .restart local v10    # "maxBps":I
    .local v11, "maxDim":I
    .local v14, "errors":I
    :goto_11d9
    if-ge v0, v8, :cond_13b8

    aget-object v5, v12, v0

    .line 3764
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v20, 0x0

    .line 3765
    .restart local v20    # "SR":J
    const/4 v7, 0x0

    .line 3766
    .local v7, "FS":I
    const/16 v16, 0x0

    .line 3767
    .local v16, "BR":I
    const/16 v22, 0x0

    .line 3768
    .local v22, "D":I
    move/from16 v24, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_18da

    .line 3809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v26, v7

    .end local v7    # "FS":I
    .local v26, "FS":I
    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    or-int/lit8 v14, v14, 0x1

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v7, v26

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3806
    .end local v26    # "FS":I
    .restart local v7    # "FS":I
    :sswitch_121d
    const-wide v20, 0x118800000L

    const/high16 v7, 0x2200000

    const v16, 0x27100

    const/16 v22, 0x4000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3804
    :sswitch_1237
    const-wide v20, 0x105090000L

    const/high16 v7, 0x2200000

    const v16, 0x27100

    const/16 v22, 0x4000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3802
    :sswitch_1251
    const-wide v20, 0x82848000L

    const/high16 v7, 0x2200000

    const v16, 0x186a0

    const/16 v22, 0x4000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3800
    :sswitch_126b
    const-wide/32 v20, 0x46200000

    const/high16 v7, 0x2200000

    const v16, 0xea60

    const/16 v22, 0x4000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3797
    :sswitch_1283
    const-wide/32 v20, 0x46200000

    const/high16 v7, 0x880000

    const v16, 0xea60

    const/16 v22, 0x2000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3795
    :sswitch_129b
    const-wide/32 v20, 0x41424000

    const/high16 v7, 0x880000

    const v16, 0xea60

    const/16 v22, 0x2000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3793
    :sswitch_12b3
    const-wide/32 v20, 0x20a12000

    const/high16 v7, 0x880000

    const v16, 0x9c40

    const/16 v22, 0x2000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3791
    :sswitch_12cb
    const-wide/32 v20, 0x10509000

    const/high16 v7, 0x880000

    const/16 v16, 0x7530

    const/16 v22, 0x2000

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3788
    :sswitch_12e2
    const-wide/32 v20, 0x9480000

    const/high16 v7, 0x240000

    const/16 v16, 0x4e20

    const/16 v22, 0x1800

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto/16 :goto_136a

    .line 3784
    :sswitch_12f9
    const-wide/32 v20, 0x4a40000

    const/high16 v7, 0x240000

    const/16 v16, 0x2ee0

    const/16 v22, 0x1800

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto :goto_136a

    .line 3781
    :sswitch_130f
    const-wide/32 v20, 0x2616960

    const v7, 0x104040

    const/16 v16, 0x2710

    const/16 v22, 0x1580

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto :goto_136a

    .line 3777
    :sswitch_1326
    const-wide/32 v20, 0x17d0180

    const v7, 0xa2900

    const/16 v16, 0x1770

    const/16 v22, 0x1100

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto :goto_136a

    .line 3774
    :sswitch_133d
    const-wide/32 v20, 0x9f8580

    const v7, 0x44100

    const/16 v16, 0xbb8

    const/16 v22, 0xb00

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    goto :goto_136a

    .line 3770
    :sswitch_1354
    const-wide/32 v20, 0x546000

    const v7, 0x24000

    const/16 v16, 0x5dc

    const/16 v22, 0x800

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v16, v11

    move-wide/from16 v11, v20

    move/from16 v20, v8

    move/from16 v8, v22

    .line 3813
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v20    # "SR":J
    .end local v22    # "D":I
    .local v0, "BR":I
    .local v8, "D":I
    .local v11, "SR":J
    .local v16, "maxDim":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_136a
    move/from16 v21, v14

    .end local v14    # "errors":I
    .local v21, "errors":I
    iget v14, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v14, :sswitch_data_192c

    .line 3820
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v22, v6

    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    or-int/lit8 v14, v21, 0x1

    .end local v21    # "errors":I
    .restart local v14    # "errors":I
    goto :goto_1398

    .line 3818
    .end local v14    # "errors":I
    .restart local v21    # "errors":I
    :sswitch_1394
    move-object/from16 v22, v6

    move/from16 v14, v21

    .line 3824
    .end local v21    # "errors":I
    .restart local v14    # "errors":I
    :goto_1398
    and-int/lit8 v14, v14, -0x5

    .line 3825
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3826
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3827
    mul-int/lit16 v6, v0, 0x3e8

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3828
    move/from16 v6, v16

    .end local v16    # "maxDim":I
    .local v6, "maxDim":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 3763
    .end local v0    # "BR":I
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v6    # "maxDim":I
    .end local v7    # "FS":I
    .end local v8    # "D":I
    .local v11, "maxDim":I
    add-int/lit8 v0, v24, 0x1

    move/from16 v8, v20

    move-object/from16 v6, v22

    move-object/from16 v12, v33

    goto/16 :goto_11d9

    .line 3831
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_13b8
    move v6, v11

    move-object/from16 v33, v12

    .end local v11    # "maxDim":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v6    # "maxDim":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v11, 0x8

    .line 3832
    .local v11, "blockSize":I
    const/16 v0, 0x8

    invoke-static {v6, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 3833
    .local v0, "maxLengthInBlocks":I
    const/16 v5, 0x40

    invoke-static {v3, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 3834
    const-wide/16 v7, 0x40

    invoke-static {v1, v2, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 3835
    .end local v1    # "maxBlocksPerSecond":J
    .restart local v4    # "maxBlocksPerSecond":J
    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v16, v6

    .end local v6    # "maxDim":I
    .restart local v16    # "maxDim":I
    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v0

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3840
    .end local v1    # "maxLengthInBlocks":I
    .end local v11    # "blockSize":I
    .end local v16    # "maxDim":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v16, v14

    goto/16 :goto_166b

    .end local v4    # "maxBlocksPerSecond":J
    .end local v10    # "maxBps":I
    .end local v14    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBps":I
    .local v1, "maxBlocksPerSecond":J
    .local v7, "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_13e5
    move-object/from16 v22, v6

    move-object/from16 v33, v12

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    new-instance v5, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v5}, Landroid/media/MediaCodec;->GetFlag(Ljava/util/function/Supplier;)Z

    move-result v5

    if-eqz v5, :cond_1646

    .line 3841
    const-string v5, "video/apv"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_163f

    .line 3842
    const-wide/16 v1, 0x2e68

    .line 3843
    const v0, 0x6acfc0

    .line 3849
    move-object/from16 v12, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v5, v12

    move v10, v0

    move v11, v7

    const/4 v0, 0x0

    .end local v0    # "maxBps":I
    .end local v7    # "errors":I
    .restart local v10    # "maxBps":I
    .local v11, "errors":I
    :goto_1407
    if-ge v0, v5, :cond_1608

    aget-object v6, v12, v0

    .line 3850
    .local v6, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v7, 0x0

    .line 3851
    .local v7, "SR":J
    const/4 v14, 0x0

    .line 3852
    .local v14, "BR":I
    move/from16 v16, v0

    iget v0, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_193e

    .line 3954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v17, v3

    .end local v3    # "maxBlocks":I
    .local v17, "maxBlocks":I
    iget v3, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_15cf

    .line 3952
    .end local v17    # "maxBlocks":I
    .restart local v3    # "maxBlocks":I
    :sswitch_1439
    const-wide v7, 0x7e9000000L

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3947
    :sswitch_1445
    const-wide v7, 0x3f4800000L

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3942
    :sswitch_1451
    const-wide v7, 0x1fa400000L

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3937
    :sswitch_145d
    const-wide v7, 0x11cc40000L

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3932
    :sswitch_1469
    const-wide/32 v7, 0x7e900000

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3927
    :sswitch_1473
    const-wide/32 v7, 0x3f480000

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3925
    :sswitch_147d
    const-wide/32 v7, 0x3f480000

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3923
    :sswitch_1487
    const-wide/32 v7, 0x3f480000

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3921
    :sswitch_1491
    const-wide/32 v7, 0x3f480000

    const v14, 0x5cfbb600

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3919
    :sswitch_149b
    const-wide/32 v7, 0x1fa40000

    const v14, 0x7fffffff

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3914
    :sswitch_14a5
    const-wide/32 v7, 0x1fa40000

    const v14, 0x5cfbb600

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3912
    :sswitch_14af
    const-wide/32 v7, 0x1fa40000

    const v14, 0x45bcc880

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3910
    :sswitch_14b9
    const-wide/32 v7, 0x1fa40000

    const v14, 0x2e7ddb00

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3908
    :sswitch_14c3
    const-wide/32 v7, 0xfd20000

    const v14, 0x45bcc880

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3906
    :sswitch_14cd
    const-wide/32 v7, 0xfd20000

    const v14, 0x2e7ddb00

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3904
    :sswitch_14d7
    const-wide/32 v7, 0xfd20000

    const v14, 0x23e1ca80

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3902
    :sswitch_14e1
    const-wide/32 v7, 0xfd20000

    const v14, 0x17e6c640

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3900
    :sswitch_14eb
    const-wide/32 v7, 0x7f80000

    const v14, 0x23e1ca80

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3898
    :sswitch_14f5
    const-wide/32 v7, 0x7f80000

    const v14, 0x17e6c640

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3896
    :sswitch_14ff
    const-wide/32 v7, 0x7f80000

    const v14, 0x11f0e540

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3894
    :sswitch_1509
    const-wide/32 v7, 0x7f80000

    const v14, 0xbfb0440

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3892
    :sswitch_1513
    const-wide/32 v7, 0x3fc0000

    const v14, 0x11f0e540

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3890
    :sswitch_151d
    const-wide/32 v7, 0x3fc0000

    const v14, 0xbfb0440

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3888
    :sswitch_1527
    const-wide/32 v7, 0x3fc0000

    const v14, 0x90013c0

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3886
    :sswitch_1531
    const-wide/32 v7, 0x3fc0000

    const v14, 0x6052340

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3884
    :sswitch_153b
    const-wide/32 v7, 0x1de2000

    const v14, 0xca2dd00

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3882
    :sswitch_1545
    const-wide/32 v7, 0x1de2000

    const v14, 0x8677d40

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3880
    :sswitch_154f
    const-wide/32 v7, 0x1de2000

    const v14, 0x6516e80

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3878
    :sswitch_1559
    const-wide/32 v7, 0x1de2000

    const v14, 0x43b5fc0

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3876
    :sswitch_1563
    const-wide/32 v7, 0xef1000

    const v14, 0x6516e80

    move/from16 v17, v3

    goto/16 :goto_15cf

    .line 3874
    :sswitch_156d
    const-wide/32 v7, 0xef1000

    const v14, 0x43b5fc0

    move/from16 v17, v3

    goto :goto_15cf

    .line 3872
    :sswitch_1576
    const-wide/32 v7, 0xef1000

    const v14, 0x328b740

    move/from16 v17, v3

    goto :goto_15cf

    .line 3870
    :sswitch_157f
    const-wide/32 v7, 0xef1000

    const v14, 0x2255100

    move/from16 v17, v3

    goto :goto_15cf

    .line 3868
    :sswitch_1588
    const-wide/32 v7, 0x5cd000

    const v14, 0x280de80

    move/from16 v17, v3

    goto :goto_15cf

    .line 3866
    :sswitch_1591
    const-wide/32 v7, 0x5cd000

    const v14, 0x1ab3f00

    move/from16 v17, v3

    goto :goto_15cf

    .line 3864
    :sswitch_159a
    const-wide/32 v7, 0x5cd000

    const v14, 0x1406f40

    move/from16 v17, v3

    goto :goto_15cf

    .line 3862
    :sswitch_15a3
    const-wide/32 v7, 0x5cd000

    const v14, 0xd59f80

    move/from16 v17, v3

    goto :goto_15cf

    .line 3860
    :sswitch_15ac
    const-wide/32 v7, 0x2e6800

    const v14, 0x1406f40

    move/from16 v17, v3

    goto :goto_15cf

    .line 3858
    :sswitch_15b5
    const-wide/32 v7, 0x2e6800

    const v14, 0xd59f80

    move/from16 v17, v3

    goto :goto_15cf

    .line 3856
    :sswitch_15be
    const-wide/32 v7, 0x2e6800

    const v14, 0xa7d8c0

    move/from16 v17, v3

    goto :goto_15cf

    .line 3854
    :sswitch_15c7
    const-wide/32 v7, 0x2e6800

    const v14, 0x6acfc0

    move/from16 v17, v3

    .line 3958
    .end local v3    # "maxBlocks":I
    .restart local v17    # "maxBlocks":I
    :goto_15cf
    iget v0, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_1a20

    .line 3964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    or-int/lit8 v11, v11, 0x1

    goto :goto_15f8

    .line 3962
    :sswitch_15f7
    nop

    .line 3968
    :goto_15f8
    and-int/lit8 v11, v11, -0x5

    .line 3969
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3970
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3849
    .end local v6    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v7    # "SR":J
    .end local v14    # "BR":I
    add-int/lit8 v0, v16, 0x1

    move/from16 v3, v17

    goto/16 :goto_1407

    .line 3973
    .end local v17    # "maxBlocks":I
    .restart local v3    # "maxBlocks":I
    :cond_1608
    move/from16 v17, v3

    .end local v3    # "maxBlocks":I
    .restart local v17    # "maxBlocks":I
    const/16 v14, 0x10

    .line 3974
    .local v14, "blockSize":I
    const v0, 0x7fffffff

    .line 3975
    .end local v17    # "maxBlocks":I
    .local v0, "maxBlocks":I
    const-wide/16 v3, 0x100

    invoke-static {v1, v2, v3, v4}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 3976
    .end local v1    # "maxBlocksPerSecond":J
    .restart local v4    # "maxBlocksPerSecond":J
    int-to-long v1, v0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v3, v1

    .line 3978
    .end local v0    # "maxBlocks":I
    .restart local v3    # "maxBlocks":I
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 3979
    .local v0, "maxLengthInBlocks":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3980
    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v2, v1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3985
    move-object v6, v0

    .end local v1    # "maxLengthInBlocks":I
    .end local v14    # "blockSize":I
    move v1, v10

    move/from16 v16, v11

    goto :goto_166b

    .line 3841
    .end local v4    # "maxBlocksPerSecond":J
    .end local v10    # "maxBps":I
    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBps":I
    .local v1, "maxBlocksPerSecond":J
    .local v7, "errors":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_163f
    move-object/from16 v6, p0

    move/from16 v17, v3

    move-object/from16 v12, v33

    .end local v3    # "maxBlocks":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v17    # "maxBlocks":I
    goto :goto_164c

    .line 3840
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v17    # "maxBlocks":I
    .restart local v3    # "maxBlocks":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1646
    move-object/from16 v6, p0

    move/from16 v17, v3

    move-object/from16 v12, v33

    .line 3986
    .end local v3    # "maxBlocks":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v17    # "maxBlocks":I
    :goto_164c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported mime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    const v0, 0xfa00

    .line 3990
    or-int/lit8 v16, v7, 0x2

    move-wide v4, v1

    move/from16 v3, v17

    move v1, v0

    .line 3992
    .end local v0    # "maxBps":I
    .end local v7    # "errors":I
    .end local v17    # "maxBlocks":I
    .local v1, "maxBps":I
    .restart local v3    # "maxBlocks":I
    .restart local v4    # "maxBlocksPerSecond":J
    .local v16, "errors":I
    :goto_166b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v14, v23

    invoke-static {v14, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 3993
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v2, v2, v16

    iput v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 3994
    return-void

    :sswitch_data_1680
    .sparse-switch
        0x1 -> :sswitch_265
        0x2 -> :sswitch_24e
        0x4 -> :sswitch_237
        0x8 -> :sswitch_220
        0x10 -> :sswitch_208
        0x20 -> :sswitch_1f0
        0x40 -> :sswitch_1d8
        0x80 -> :sswitch_1c0
        0x100 -> :sswitch_1a7
        0x200 -> :sswitch_18e
        0x400 -> :sswitch_175
        0x800 -> :sswitch_15b
        0x1000 -> :sswitch_140
        0x2000 -> :sswitch_125
        0x4000 -> :sswitch_10b
        0x8000 -> :sswitch_f0
        0x10000 -> :sswitch_d4
        0x20000 -> :sswitch_b8
        0x40000 -> :sswitch_9c
        0x80000 -> :sswitch_81
    .end sparse-switch

    :sswitch_data_16d2
    .sparse-switch
        0x1 -> :sswitch_2d6
        0x2 -> :sswitch_2d6
        0x4 -> :sswitch_2b1
        0x8 -> :sswitch_2ac
        0x10 -> :sswitch_2a7
        0x20 -> :sswitch_2b1
        0x40 -> :sswitch_2b1
        0x10000 -> :sswitch_2d6
        0x80000 -> :sswitch_2ac
    .end sparse-switch

    :pswitch_data_16f8
    .packed-switch 0x0
        :pswitch_4f0
        :pswitch_3f8
        :pswitch_3bc
        :pswitch_3bc
        :pswitch_3bc
        :pswitch_3bc
    .end packed-switch

    :pswitch_data_1708
    .packed-switch 0x0
        :pswitch_4ce
        :pswitch_4ab
        :pswitch_487
        :pswitch_463
        :pswitch_43f
    .end packed-switch

    :pswitch_data_1716
    .packed-switch 0x1
        :pswitch_536
    .end packed-switch

    :sswitch_data_171c
    .sparse-switch
        0x1 -> :sswitch_7cf
        0x2 -> :sswitch_780
        0x4 -> :sswitch_780
        0x8 -> :sswitch_780
        0x10 -> :sswitch_780
        0x20 -> :sswitch_780
        0x40 -> :sswitch_780
        0x80 -> :sswitch_780
        0x100 -> :sswitch_780
        0x200 -> :sswitch_780
        0x400 -> :sswitch_780
        0x800 -> :sswitch_780
        0x1000 -> :sswitch_780
        0x2000 -> :sswitch_780
        0x4000 -> :sswitch_780
        0x8000 -> :sswitch_644
    .end sparse-switch

    :sswitch_data_175e
    .sparse-switch
        0x1 -> :sswitch_75a
        0x4 -> :sswitch_75a
        0x8 -> :sswitch_734
        0x10 -> :sswitch_70e
        0x18 -> :sswitch_6e8
        0x20 -> :sswitch_6c2
        0x80 -> :sswitch_69b
    .end sparse-switch

    :sswitch_data_177c
    .sparse-switch
        0x1 -> :sswitch_90c
        0x2 -> :sswitch_8eb
        0x4 -> :sswitch_8cc
        0x8 -> :sswitch_8ac
        0x10 -> :sswitch_88c
        0x40 -> :sswitch_86b
        0x80 -> :sswitch_84a
        0x100 -> :sswitch_829
    .end sparse-switch

    :sswitch_data_179e
    .sparse-switch
        0x1 -> :sswitch_b9f
        0x2 -> :sswitch_b74
        0x4 -> :sswitch_b49
        0x8 -> :sswitch_b1d
        0x10 -> :sswitch_ad9
        0x20 -> :sswitch_aa8
        0x40 -> :sswitch_a77
        0x80 -> :sswitch_a46
    .end sparse-switch

    :sswitch_data_17c0
    .sparse-switch
        0x1 -> :sswitch_bf5
        0x2 -> :sswitch_bf5
        0x4 -> :sswitch_bf5
        0x8 -> :sswitch_bf5
        0x10 -> :sswitch_bf5
        0x20 -> :sswitch_bf5
        0x40 -> :sswitch_bf5
        0x80 -> :sswitch_bf5
        0x100 -> :sswitch_bf5
    .end sparse-switch

    :sswitch_data_17e6
    .sparse-switch
        0x1 -> :sswitch_ce9
        0x2 -> :sswitch_ce9
        0x4 -> :sswitch_ce9
        0x8 -> :sswitch_ce9
    .end sparse-switch

    :pswitch_data_17f8
    .packed-switch 0x1
        :pswitch_d17
    .end packed-switch

    :sswitch_data_17fe
    .sparse-switch
        0x1 -> :sswitch_f4f
        0x2 -> :sswitch_f30
        0x4 -> :sswitch_f11
        0x8 -> :sswitch_ef1
        0x10 -> :sswitch_ed1
        0x20 -> :sswitch_eb2
        0x40 -> :sswitch_e93
        0x80 -> :sswitch_e74
        0x100 -> :sswitch_e54
        0x200 -> :sswitch_e34
        0x400 -> :sswitch_e14
        0x800 -> :sswitch_df4
        0x1000 -> :sswitch_dd2
        0x2000 -> :sswitch_db0
    .end sparse-switch

    :sswitch_data_1838
    .sparse-switch
        0x1 -> :sswitch_f97
        0x2 -> :sswitch_f97
        0x4 -> :sswitch_f97
        0x8 -> :sswitch_f97
        0x1000 -> :sswitch_f97
        0x2000 -> :sswitch_f97
        0x4000 -> :sswitch_f97
        0x8000 -> :sswitch_f97
    .end sparse-switch

    :sswitch_data_185a
    .sparse-switch
        0x1 -> :sswitch_1143
        0x2 -> :sswitch_1143
        0x4 -> :sswitch_1137
        0x8 -> :sswitch_1137
        0x10 -> :sswitch_112b
        0x20 -> :sswitch_112b
        0x40 -> :sswitch_111f
        0x80 -> :sswitch_111f
        0x100 -> :sswitch_1111
        0x200 -> :sswitch_1111
        0x400 -> :sswitch_1106
        0x800 -> :sswitch_10fb
        0x1000 -> :sswitch_10f0
        0x2000 -> :sswitch_10e4
        0x4000 -> :sswitch_10d8
        0x8000 -> :sswitch_10cb
        0x10000 -> :sswitch_10be
        0x20000 -> :sswitch_10b1
        0x40000 -> :sswitch_10a4
        0x80000 -> :sswitch_1097
        0x100000 -> :sswitch_108a
        0x200000 -> :sswitch_107d
        0x400000 -> :sswitch_1070
        0x800000 -> :sswitch_1063
        0x1000000 -> :sswitch_1056
        0x2000000 -> :sswitch_1049
    .end sparse-switch

    :sswitch_data_18c4
    .sparse-switch
        0x1 -> :sswitch_1178
        0x2 -> :sswitch_1178
        0x4 -> :sswitch_1178
        0x1000 -> :sswitch_1178
        0x2000 -> :sswitch_1178
    .end sparse-switch

    :sswitch_data_18da
    .sparse-switch
        0x1 -> :sswitch_1354
        0x2 -> :sswitch_133d
        0x4 -> :sswitch_133d
        0x8 -> :sswitch_133d
        0x10 -> :sswitch_1326
        0x20 -> :sswitch_130f
        0x40 -> :sswitch_130f
        0x80 -> :sswitch_130f
        0x100 -> :sswitch_12f9
        0x200 -> :sswitch_12e2
        0x400 -> :sswitch_12e2
        0x800 -> :sswitch_12e2
        0x1000 -> :sswitch_12cb
        0x2000 -> :sswitch_12b3
        0x4000 -> :sswitch_129b
        0x8000 -> :sswitch_1283
        0x10000 -> :sswitch_126b
        0x20000 -> :sswitch_1251
        0x40000 -> :sswitch_1237
        0x80000 -> :sswitch_121d
    .end sparse-switch

    :sswitch_data_192c
    .sparse-switch
        0x1 -> :sswitch_1394
        0x2 -> :sswitch_1394
        0x1000 -> :sswitch_1394
        0x2000 -> :sswitch_1394
    .end sparse-switch

    :sswitch_data_193e
    .sparse-switch
        0x101 -> :sswitch_15c7
        0x102 -> :sswitch_15be
        0x104 -> :sswitch_15b5
        0x108 -> :sswitch_15ac
        0x201 -> :sswitch_15a3
        0x202 -> :sswitch_159a
        0x204 -> :sswitch_1591
        0x208 -> :sswitch_1588
        0x401 -> :sswitch_157f
        0x402 -> :sswitch_1576
        0x404 -> :sswitch_156d
        0x408 -> :sswitch_1563
        0x801 -> :sswitch_1559
        0x802 -> :sswitch_154f
        0x804 -> :sswitch_1545
        0x808 -> :sswitch_153b
        0x1001 -> :sswitch_1531
        0x1002 -> :sswitch_1527
        0x1004 -> :sswitch_151d
        0x1008 -> :sswitch_1513
        0x2001 -> :sswitch_1509
        0x2002 -> :sswitch_14ff
        0x2004 -> :sswitch_14f5
        0x2008 -> :sswitch_14eb
        0x4001 -> :sswitch_14e1
        0x4002 -> :sswitch_14d7
        0x4004 -> :sswitch_14cd
        0x4008 -> :sswitch_14c3
        0x8001 -> :sswitch_14b9
        0x8002 -> :sswitch_14af
        0x8004 -> :sswitch_14a5
        0x8008 -> :sswitch_149b
        0x10001 -> :sswitch_1491
        0x10002 -> :sswitch_1487
        0x10004 -> :sswitch_147d
        0x10008 -> :sswitch_1473
        0x20001 -> :sswitch_1469
        0x20002 -> :sswitch_1469
        0x20004 -> :sswitch_1469
        0x20008 -> :sswitch_1469
        0x40001 -> :sswitch_145d
        0x40002 -> :sswitch_145d
        0x40004 -> :sswitch_145d
        0x40008 -> :sswitch_145d
        0x80001 -> :sswitch_1451
        0x80002 -> :sswitch_1451
        0x80004 -> :sswitch_1451
        0x80008 -> :sswitch_1451
        0x100001 -> :sswitch_1445
        0x100002 -> :sswitch_1445
        0x100004 -> :sswitch_1445
        0x100008 -> :sswitch_1445
        0x200001 -> :sswitch_1439
        0x200002 -> :sswitch_1439
        0x200004 -> :sswitch_1439
        0x200008 -> :sswitch_1439
    .end sparse-switch

    :sswitch_data_1a20
    .sparse-switch
        0x1 -> :sswitch_15f7
        0x1000 -> :sswitch_15f7
        0x2000 -> :sswitch_15f7
    .end sparse-switch
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIIIJIIII)V
    .registers 20
    .param p1, "minHorizontalBlocks"    # I
    .param p2, "minVerticalBlocks"    # I
    .param p3, "maxHorizontalBlocks"    # I
    .param p4, "maxVerticalBlocks"    # I
    .param p5, "maxBlocks"    # I
    .param p6, "maxBlocksPerSecond"    # J
    .param p8, "blockWidth"    # I
    .param p9, "blockHeight"    # I
    .param p10, "widthAlignment"    # I
    .param p11, "heightAlignment"    # I

    .line 3142
    move/from16 v6, p10

    move/from16 v7, p11

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 3143
    nop

    .line 3144
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 3145
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, p3, v1}, Landroid/util/Rational;-><init>(II)V

    .line 3146
    invoke-static {v2, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 3143
    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3149
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v2, v2, p8

    .line 3151
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v4, p8

    div-int v4, p3, v4

    .line 3152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3150
    invoke-virtual {v1, v2, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3153
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v2, v2, p9

    .line 3155
    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v5, p9

    div-int v5, p4, v5

    .line 3156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3154
    invoke-virtual {v1, v2, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3157
    return-void
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIJIIII)V
    .registers 22
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .line 3129
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3134
    return-void
.end method

.method public static greylist-max-p create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 3
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2646
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 2647
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 2648
    return-object v0
.end method

.method public static greylist-max-o equivalentVP9Level(Landroid/media/MediaFormat;)I
    .registers 20
    .param p0, "info"    # Landroid/media/MediaFormat;

    .line 2805
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2807
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "block-size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 2808
    .local v1, "blockSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    .line 2810
    .local v2, "BS":I
    const-string v4, "block-count-range"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 2811
    .local v4, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    if-nez v4, :cond_2e

    move v7, v6

    goto :goto_39

    :cond_2e
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/2addr v7, v2

    .line 2813
    .local v7, "FS":I
    :goto_39
    nop

    .line 2814
    const-string v8, "blocks-per-second-range"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 2815
    .local v8, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v8, :cond_49

    const-wide/16 v9, 0x0

    goto :goto_55

    :cond_49
    int-to-long v9, v2

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long/2addr v9, v11

    .line 2817
    .local v9, "SR":J
    :goto_55
    nop

    .line 2818
    const-string v11, "size-range"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 2819
    .local v11, "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v11, :cond_64

    move v12, v6

    goto :goto_84

    :cond_64
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    .line 2820
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2819
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2822
    .local v12, "D":I
    :goto_84
    const-string v13, "bitrate-range"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 2823
    .local v5, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v5, :cond_91

    goto :goto_a1

    :cond_91
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v13, 0x3e8

    invoke-static {v6, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    .line 2825
    .local v6, "BR":I
    :goto_a1
    const-wide/32 v13, 0xca800

    cmp-long v13, v9, v13

    const/16 v14, 0x200

    if-gtz v13, :cond_b7

    const v13, 0x9000

    if-gt v7, v13, :cond_b7

    const/16 v13, 0xc8

    if-gt v6, v13, :cond_b7

    if-gt v12, v14, :cond_b7

    .line 2826
    const/4 v3, 0x1

    return v3

    .line 2827
    :cond_b7
    const-wide/32 v15, 0x2a3000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_cd

    const v13, 0x12000

    if-gt v7, v13, :cond_cd

    const/16 v13, 0x320

    if-gt v6, v13, :cond_cd

    const/16 v13, 0x300

    if-gt v12, v13, :cond_cd

    .line 2828
    const/4 v3, 0x2

    return v3

    .line 2829
    :cond_cd
    const-wide/32 v15, 0x465000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_e3

    const v13, 0x1e000

    if-gt v7, v13, :cond_e3

    const/16 v13, 0x708

    if-gt v6, v13, :cond_e3

    const/16 v13, 0x3c0

    if-gt v12, v13, :cond_e3

    .line 2830
    const/4 v3, 0x4

    return v3

    .line 2831
    :cond_e3
    const-wide/32 v15, 0x8ca000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_f8

    const v13, 0x3c000

    if-gt v7, v13, :cond_f8

    const/16 v13, 0xe10

    if-gt v6, v13, :cond_f8

    const/16 v13, 0x540

    if-gt v12, v13, :cond_f8

    .line 2832
    return v3

    .line 2833
    :cond_f8
    const-wide/32 v15, 0x13c6800

    cmp-long v3, v9, v15

    const/16 v13, 0x800

    if-gtz v3, :cond_10f

    const v3, 0x87000

    if-gt v7, v3, :cond_10f

    const/16 v3, 0x1c20

    if-gt v6, v3, :cond_10f

    if-gt v12, v13, :cond_10f

    .line 2834
    const/16 v3, 0x10

    return v3

    .line 2835
    :cond_10f
    const-wide/32 v15, 0x2328000

    cmp-long v3, v9, v15

    if-gtz v3, :cond_125

    const/high16 v3, 0xf0000

    if-gt v7, v3, :cond_125

    const/16 v3, 0x2ee0

    if-gt v6, v3, :cond_125

    const/16 v3, 0xac0

    if-gt v12, v3, :cond_125

    .line 2836
    const/16 v3, 0x20

    return v3

    .line 2837
    :cond_125
    const-wide/32 v15, 0x4fb0000

    cmp-long v3, v9, v15

    const/16 v15, 0x1040

    move/from16 v16, v13

    const/high16 v13, 0x220000

    if-gtz v3, :cond_13d

    if-gt v7, v13, :cond_13d

    const/16 v3, 0x4650

    if-gt v6, v3, :cond_13d

    if-gt v12, v15, :cond_13d

    .line 2838
    const/16 v3, 0x40

    return v3

    .line 2839
    :cond_13d
    const-wide/32 v17, 0x9900000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_14f

    if-gt v7, v13, :cond_14f

    const/16 v3, 0x7530

    if-gt v6, v3, :cond_14f

    if-gt v12, v15, :cond_14f

    .line 2840
    const/16 v3, 0x80

    return v3

    .line 2841
    :cond_14f
    const-wide/32 v17, 0x12980000

    cmp-long v3, v9, v17

    const/16 v13, 0x20c0

    const/high16 v15, 0x880000

    if-gtz v3, :cond_166

    if-gt v7, v15, :cond_166

    const v3, 0xea60

    if-gt v6, v3, :cond_166

    if-gt v12, v13, :cond_166

    .line 2842
    const/16 v3, 0x100

    return v3

    .line 2843
    :cond_166
    const-wide/32 v17, 0x23100000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_177

    if-gt v7, v15, :cond_177

    const v3, 0x1d4c0

    if-gt v6, v3, :cond_177

    if-gt v12, v13, :cond_177

    .line 2844
    return v14

    .line 2845
    :cond_177
    const-wide/32 v17, 0x46200000

    cmp-long v3, v9, v17

    const v14, 0x2bf20

    if-gtz v3, :cond_18a

    if-gt v7, v15, :cond_18a

    if-gt v6, v14, :cond_18a

    if-gt v12, v13, :cond_18a

    .line 2846
    const/16 v3, 0x400

    return v3

    .line 2847
    :cond_18a
    cmp-long v3, v9, v17

    const/16 v13, 0x41c0

    const/high16 v15, 0x2200000

    if-gtz v3, :cond_199

    if-gt v7, v15, :cond_199

    if-gt v6, v14, :cond_199

    if-gt v12, v13, :cond_199

    .line 2848
    return v16

    .line 2849
    :cond_199
    const-wide v16, 0x8c400000L

    cmp-long v3, v9, v16

    if-gtz v3, :cond_1ae

    if-gt v7, v15, :cond_1ae

    const v3, 0x3a980

    if-gt v6, v3, :cond_1ae

    if-gt v12, v13, :cond_1ae

    .line 2850
    const/16 v3, 0x1000

    return v3

    .line 2851
    :cond_1ae
    const-wide v16, 0x118800000L

    cmp-long v3, v9, v16

    const/16 v14, 0x2000

    if-gtz v3, :cond_1c3

    if-gt v7, v15, :cond_1c3

    const v3, 0x75300

    if-gt v6, v3, :cond_1c3

    if-gt v12, v13, :cond_1c3

    .line 2852
    return v14

    .line 2854
    :cond_1c3
    return v14
.end method

.method private greylist-max-o estimateFrameRatesFor(II)Landroid/util/Range;
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2145
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    .line 2146
    .local v0, "size":Landroid/util/Size;
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2147
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v2

    int-to-double v2, v2

    .line 2148
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 2147
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2149
    .local v2, "ratio":Ljava/lang/Double;
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o findClosestSize(II)Landroid/util/Size;
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2130
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v0

    .line 2131
    .local v0, "targetBlockCount":I
    const/4 v1, 0x0

    .line 2132
    .local v1, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    .line 2133
    .local v2, "minDiff":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 2134
    .local v4, "size":Landroid/util/Size;
    nop

    .line 2135
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    sub-int v5, v0, v5

    .line 2134
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2136
    .local v5, "diff":I
    if-ge v5, v2, :cond_35

    .line 2137
    move v2, v5

    .line 2138
    move-object v1, v4

    .line 2140
    .end local v4    # "size":Landroid/util/Size;
    .end local v5    # "diff":I
    :cond_35
    goto :goto_12

    .line 2141
    :cond_36
    return-object v1
.end method

.method private greylist-max-o getBlockCount(II)I
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2125
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2762
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2763
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string v1, "measured-frame-rate-"

    .line 2764
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2765
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2767
    .local v4, "key":Ljava/lang/String;
    const-string v5, "measured-frame-rate-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 2768
    goto :goto_f

    .line 2770
    :cond_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2771
    .local v5, "subKey":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2772
    .local v6, "temp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_37

    .line 2773
    goto :goto_f

    .line 2775
    :cond_37
    const/4 v7, 0x3

    aget-object v7, v6, v7

    .line 2776
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 2777
    .local v9, "size":Landroid/util/Size;
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-gtz v10, :cond_4d

    .line 2778
    goto :goto_f

    .line 2780
    :cond_4d
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 2781
    .local v8, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_f

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-gez v10, :cond_76

    .line 2782
    goto :goto_f

    .line 2784
    :cond_76
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "subKey":Ljava/lang/String;
    .end local v6    # "temp":[Ljava/lang/String;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v9    # "size":Landroid/util/Size;
    goto :goto_f

    .line 2786
    :cond_7a
    return-object v0
.end method

.method private blacklist getPerformancePoints(Ljava/util/Map;)Ljava/util/List;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 2704
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2705
    .local v1, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    const-string v2, "performance-point-"

    .line 2706
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2707
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2709
    .local v5, "key":Ljava/lang/String;
    const-string v7, "performance-point-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 2710
    goto :goto_11

    .line 2712
    :cond_27
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2713
    .local v7, "subKey":Ljava/lang/String;
    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_42

    .line 2717
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 2719
    :cond_42
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2720
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4d

    .line 2721
    goto :goto_11

    .line 2723
    :cond_4d
    const/4 v9, 0x2

    aget-object v9, v8, v9

    .line 2724
    .local v9, "sizeStr":Ljava/lang/String;
    invoke-static {v9, v6}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    .line 2725
    .local v10, "size":Landroid/util/Size;
    if-eqz v10, :cond_103

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    if-gtz v11, :cond_62

    .line 2726
    goto :goto_11

    .line 2728
    :cond_62
    move-object/from16 v11, p1

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 2729
    .local v6, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v6, :cond_fd

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_fd

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v14

    if-gez v12, :cond_8d

    .line 2730
    goto :goto_11

    .line 2732
    :cond_8d
    new-instance v13, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2733
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v16

    .line 2734
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v17

    new-instance v12, Landroid/util/Size;

    move-object/from16 v19, v2

    .end local v2    # "prefix":Ljava/lang/String;
    .local v19, "prefix":Ljava/lang/String;
    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v20, v3

    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v20, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2735
    .local v13, "given":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    new-instance v21, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2736
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v22

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v24

    .line 2737
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v25

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v12, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v2, v3, v12}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v26, v2

    invoke-direct/range {v21 .. v26}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    move-object/from16 v2, v21

    .line 2738
    .local v2, "rotated":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-virtual {v1, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2739
    invoke-virtual {v13, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 2740
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2742
    .end local v2    # "rotated":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v7    # "subKey":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    .end local v9    # "sizeStr":Ljava/lang/String;
    .end local v10    # "size":Landroid/util/Size;
    .end local v13    # "given":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    :cond_f7
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_11

    .line 2729
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .restart local v7    # "subKey":Ljava/lang/String;
    .restart local v8    # "temp":[Ljava/lang/String;
    .restart local v9    # "sizeStr":Ljava/lang/String;
    .restart local v10    # "size":Landroid/util/Size;
    :cond_fd
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_11

    .line 2725
    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_103
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_11

    .line 2745
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "subKey":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    .end local v9    # "sizeStr":Ljava/lang/String;
    .end local v10    # "size":Landroid/util/Size;
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10b
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_118

    .line 2746
    return-object v6

    .line 2750
    :cond_118
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->sort(Ljava/util/Comparator;)V

    .line 2758
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 3
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2652
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2653
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 2654
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 2655
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 2656
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 2657
    return-void
.end method

.method private greylist-max-o initWithPlatformLimits()V
    .registers 2

    .line 2680
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 2682
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2683
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2684
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2686
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2687
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 2690
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2691
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2693
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2694
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2696
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 2697
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 2698
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2699
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2700
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2701
    return-void
.end method

.method static synthetic blacklist lambda$applyLevelLimits$1()Ljava/lang/Boolean;
    .registers 1

    .line 3840
    invoke-static {}, Landroid/media/codec/Flags;->apvSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getPerformancePoints$0(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .registers 8
    .param p0, "a"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .param p1, "b"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2751
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_19

    .line 2752
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_4c

    :cond_17
    move v2, v3

    goto :goto_4c

    .line 2753
    :cond_19
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_34

    .line 2754
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_32

    goto :goto_4c

    :cond_32
    move v2, v3

    goto :goto_4c

    .line 2755
    :cond_34
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-eq v0, v1, :cond_4b

    .line 2756
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-ge v0, v1, :cond_49

    goto :goto_4c

    :cond_49
    move v2, v3

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    neg-int v0, v2

    .line 2751
    return v0
.end method

.method private greylist-max-o parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 24
    .param p1, "info"    # Landroid/media/MediaFormat;

    .line 2858
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v11

    .line 2859
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 2860
    .local v0, "blockSize":Landroid/util/Size;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 2861
    .local v2, "alignment":Landroid/util/Size;
    const/4 v3, 0x0

    .local v3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2862
    .local v5, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 2863
    .local v7, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 2864
    .local v8, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .local v9, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v10, 0x0

    .line 2866
    .local v10, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v12, "block-size"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 2867
    .end local v0    # "blockSize":Landroid/util/Size;
    .local v12, "blockSize":Landroid/util/Size;
    const-string v0, "alignment"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    .line 2868
    .end local v2    # "alignment":Landroid/util/Size;
    .local v13, "alignment":Landroid/util/Size;
    const-string v0, "block-count-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    .line 2869
    .end local v3    # "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v14, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    nop

    .line 2870
    const-string v0, "blocks-per-second-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 2871
    .end local v8    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local v15, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-direct {v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 2872
    invoke-direct {v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getPerformancePoints(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    .line 2873
    nop

    .line 2874
    const-string v0, "size-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 2875
    .local v3, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v3, :cond_6d

    .line 2876
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Range;

    .line 2877
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/util/Range;

    .line 2883
    :cond_6d
    const-string v0, "feature-can-swap-width-height"

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "VideoCapabilities"

    if-eqz v0, :cond_ca

    .line 2884
    if-eqz v4, :cond_9b

    .line 2885
    nop

    .line 2886
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2887
    invoke-virtual {v4, v5}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    move-object v5, v0

    move-object v4, v0

    goto :goto_ca

    .line 2889
    :cond_9b
    const-string v0, "feature can-swap-width-height is best used with size-range"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2891
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2892
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0, v2}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2896
    :cond_ca
    :goto_ca
    nop

    .line 2897
    const-string v0, "block-aspect-ratio-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2896
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    .line 2898
    nop

    .line 2899
    const-string v0, "pixel-aspect-ratio-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2898
    invoke-static {v0, v2}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v10

    .line 2900
    const-string v0, "frame-rate-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 2901
    const-string v2, ") is out of limits: "

    if-eqz v6, :cond_11f

    .line 2903
    :try_start_ef
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_f7} :catch_f9

    move-object v6, v0

    .line 2908
    goto :goto_11f

    .line 2904
    :catch_f9
    move-exception v0

    .line 2905
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame rate range ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const/4 v6, 0x0

    .line 2910
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_11f
    :goto_11f
    const-string v0, "bitrate-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 2911
    .end local v7    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_15e

    .line 2913
    :try_start_12c
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12c .. :try_end_134} :catch_136

    move-object v1, v0

    .line 2918
    goto :goto_15f

    .line 2914
    :catch_136
    move-exception v0

    .line 2915
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "bitrate range ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_15f

    .line 2911
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_15e
    move-object v0, v1

    .line 2921
    .end local v1    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_15f
    nop

    .line 2922
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2921
    const-string v2, "block-size width must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2923
    nop

    .line 2924
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2923
    const-string v2, "block-size height must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2926
    nop

    .line 2927
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2926
    const-string v2, "alignment width must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2928
    nop

    .line 2929
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2928
    const-string v2, "alignment height must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2932
    nop

    .line 2934
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 2935
    move-object v1, v9

    .end local v9    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v1, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v9

    move-object v2, v10

    .end local v10    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v2, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 2932
    move-object/from16 v16, v2

    .end local v2    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v16, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const v2, 0x7fffffff

    move-object/from16 v17, v3

    .end local v3    # "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local v17, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const v3, 0x7fffffff

    move-object/from16 v18, v4

    .end local v4    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v18, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const v4, 0x7fffffff

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v19, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v20, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v21, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    .end local v1    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v11, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v12, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v13, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "blockSize":Landroid/util/Size;
    .local v19, "alignment":Landroid/util/Size;
    .local v20, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v21, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-direct/range {v1 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2937
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_26d

    iget-boolean v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v2, :cond_1db

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_271

    .line 2978
    :cond_1db
    if-eqz v13, :cond_1e5

    .line 2979
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2981
    :cond_1e5
    if-eqz v11, :cond_1ef

    .line 2982
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v11}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2984
    :cond_1ef
    if-eqz v14, :cond_20c

    .line 2985
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 2987
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    .line 2986
    invoke-static {v14, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    .line 2985
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2989
    :cond_20c
    if-eqz v15, :cond_22a

    .line 2990
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 2992
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v3, v3

    .line 2991
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    .line 2990
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2994
    :cond_22a
    if-eqz v12, :cond_246

    .line 2995
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2997
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2998
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 2996
    invoke-static {v12, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    .line 2995
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3000
    :cond_246
    if-eqz v20, :cond_253

    .line 3001
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v3, v20

    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v3, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_255

    .line 3000
    .end local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_253
    move-object/from16 v3, v20

    .line 3003
    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_255
    move-object/from16 v6, v21

    .end local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_261

    .line 3004
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3006
    :cond_261
    if-eqz v0, :cond_31b

    .line 3007
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_31b

    .line 2937
    .end local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_26d
    move-object/from16 v3, v20

    move-object/from16 v6, v21

    .line 2940
    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_271
    if-eqz v13, :cond_27d

    .line 2941
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2943
    :cond_27d
    if-eqz v11, :cond_289

    .line 2944
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2946
    :cond_289
    if-eqz v14, :cond_2a8

    .line 2947
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v4, v5

    .line 2949
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    .line 2948
    invoke-static {v14, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    .line 2947
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2951
    :cond_2a8
    if-eqz v15, :cond_2c8

    .line 2952
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v4, v5

    .line 2954
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    int-to-long v4, v4

    .line 2953
    invoke-static {v15, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    .line 2952
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2956
    :cond_2c8
    if-eqz v12, :cond_2e6

    .line 2957
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2959
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2960
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/2addr v5, v7

    .line 2958
    invoke-static {v12, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    .line 2957
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2962
    :cond_2e6
    if-eqz v3, :cond_2f2

    .line 2963
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2965
    :cond_2f2
    if-eqz v6, :cond_2fe

    .line 2966
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2968
    :cond_2fe
    if-eqz v0, :cond_31b

    .line 2970
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_313

    .line 2971
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto :goto_31b

    .line 2973
    :cond_313
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 3010
    :cond_31b
    :goto_31b
    invoke-direct {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 3011
    return-void
.end method

.method private static greylist-max-o parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 2790
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 2791
    .local v0, "range":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v0, :cond_62

    .line 2793
    :try_start_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    .line 2794
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    .line 2795
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 2793
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_42} :catch_43

    return-object v1

    .line 2796
    :catch_43
    move-exception v1

    .line 2797
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not parse size range \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_62
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .registers 14
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .line 2577
    const/4 v0, 0x1

    .line 2579
    .local v0, "ok":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 2580
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2581
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    move v0, v3

    .line 2583
    :cond_1c
    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    .line 2584
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2585
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_33

    move v3, v1

    goto :goto_34

    :cond_33
    move v3, v2

    :goto_34
    move v0, v3

    .line 2587
    :cond_35
    if-eqz v0, :cond_47

    if-eqz p3, :cond_47

    .line 2588
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    .line 2590
    :cond_47
    if-eqz v0, :cond_bf

    if-eqz p2, :cond_bf

    if-eqz p1, :cond_bf

    .line 2591
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v3, v4, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 2593
    .end local v0    # "ok":Z
    .local v3, "ok":Z
    :goto_60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v0, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 2594
    .local v0, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 2595
    .local v4, "heightInBlocks":I
    mul-int v5, v0, v4

    .line 2596
    .local v5, "blockCount":I
    if-eqz v3, :cond_a7

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a7

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v0, v4}, Landroid/util/Rational;-><init>(II)V

    .line 2597
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a7

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    .line 2599
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_a7

    goto :goto_a8

    :cond_a7
    move v1, v2

    .line 2600
    .end local v3    # "ok":Z
    .local v1, "ok":Z
    :goto_a8
    if-eqz v1, :cond_be

    if-eqz p3, :cond_be

    .line 2601
    int-to-double v2, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 2602
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2603
    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    .line 2602
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v1

    move v0, v1

    goto :goto_bf

    .line 2606
    .end local v0    # "widthInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v4    # "heightInBlocks":I
    .end local v5    # "blockCount":I
    :cond_be
    move v0, v1

    .end local v1    # "ok":Z
    .local v0, "ok":Z
    :cond_bf
    :goto_bf
    return v0
.end method

.method private greylist-max-o updateLimits()V
    .registers 7

    .line 3074
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3075
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3074
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3076
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3078
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3079
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3077
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3076
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3080
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3081
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3080
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3082
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3084
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3085
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3083
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3082
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3086
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3088
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3089
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    .line 3088
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3090
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3091
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    .line 3090
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3087
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3086
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3092
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3094
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3096
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3092
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3099
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3100
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3101
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3099
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3102
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3103
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3104
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3102
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 3105
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3106
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3107
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3105
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 3109
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3111
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3109
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 3114
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3115
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3116
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3114
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3117
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3118
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3119
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 3118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3120
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3121
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 3120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3117
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3122
    return-void
.end method


# virtual methods
.method public whitelist areSizeAndRateSupported(IID)Z
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 2565
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2202
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_21

    .line 2207
    :cond_1c
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0

    .line 2203
    :cond_21
    :goto_21
    const-string v0, "VideoCapabilities"

    const-string v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-object v2

    .line 2199
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAspectRatioRange(Z)Landroid/util/Range;
    .registers 3
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 2676
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :goto_7
    return-object v0
.end method

.method public whitelist getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1938
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getBlockCountRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2666
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getBlockSize()Landroid/util/Size;
    .registers 4

    .line 2661
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getBlocksPerSecondRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2671
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getHeightAlignment()I
    .registers 2

    .line 1978
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public greylist-max-o getSmallerDimensionUpperLimit()I
    .registers 2

    .line 1995
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public whitelist getSupportedFrameRates()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2111
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 2114
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2115
    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    mul-int/2addr v1, v2

    .line 2117
    .local v1, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2118
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2119
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    .line 2118
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2120
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2121
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    .line 2120
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2117
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 2112
    .end local v1    # "blockCount":I
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unsupported size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSupportedHeights()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1958
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 12
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2060
    const-string v0, "unsupported width"

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2061
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_bd

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_bd

    .line 2065
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2068
    .local v2, "widthInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2069
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    int-to-double v4, v2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2071
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 2070
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2068
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2072
    .local v3, "minHeightInBlocks":I
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2073
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    int-to-double v5, v2

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2075
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroid/util/Rational;

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    .line 2072
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2076
    .local v4, "maxHeightInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    .line 2077
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v4

    .line 2078
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2076
    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2081
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v5, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v1, :cond_8e

    .line 2082
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    move-object v5, v1

    .line 2086
    :cond_8e
    int-to-double v6, p1

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2088
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 2087
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-double v6, p1

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2089
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    invoke-virtual {v8}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2086
    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 2090
    .end local v5    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    return-object v0

    .line 2063
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "widthInBlocks":I
    .end local v3    # "minHeightInBlocks":I
    .end local v4    # "maxHeightInBlocks":I
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_bd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local p1    # "width":I
    throw v2
    :try_end_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c3} :catch_c3

    .line 2091
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .restart local p1    # "width":I
    :catch_c3
    move-exception v1

    .line 2093
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported heights for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getSupportedPerformancePoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 2556
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSupportedWidths()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 12
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2016
    const-string v0, "unsupported height"

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2017
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_bd

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_bd

    .line 2021
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2024
    .local v2, "heightInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2025
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2026
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2024
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2028
    .local v3, "minWidthInBlocks":I
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2029
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2030
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 2028
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2032
    .local v4, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    .line 2033
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v4

    .line 2034
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2032
    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2037
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v5, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v1, :cond_8e

    .line 2038
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    move-object v5, v1

    .line 2042
    :cond_8e
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2043
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2045
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2042
    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 2046
    .end local v5    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    return-object v0

    .line 2019
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "heightInBlocks":I
    .end local v3    # "minWidthInBlocks":I
    .end local v4    # "maxWidthInBlocks":I
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_bd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local p1    # "height":I
    throw v2
    :try_end_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c3} :catch_c3

    .line 2047
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .restart local p1    # "height":I
    :catch_c3
    move-exception v1

    .line 2049
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported widths for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getWidthAlignment()I
    .registers 2

    .line 1968
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public whitelist isSizeSupported(II)Z
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 8
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 2622
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2623
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2624
    .local v1, "width":Ljava/lang/Integer;
    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2625
    .local v2, "height":Ljava/lang/Integer;
    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 2627
    .local v3, "rate":Ljava/lang/Number;
    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_24

    .line 2628
    return v5

    .line 2631
    :cond_24
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2632
    return v5

    .line 2636
    :cond_2d
    const/4 v4, 0x1

    return v4
.end method
