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


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private applyAlignment(II)V
    .locals 6
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    #@0
    .prologue
    .line 1922
    const-string/jumbo v0, "widthAlignment must be a power of two"

    #@3
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@6
    .line 1923
    const-string/jumbo v0, "heightAlignment must be a power of two"

    #@9
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@c
    .line 1925
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@e
    if-gt p1, v0, :cond_0

    #@10
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@12
    if-le p2, v0, :cond_1

    #@14
    .line 1928
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@16
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v1

    #@1a
    .line 1929
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1c
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v2

    #@20
    .line 1930
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@23
    move-result-object v3

    #@24
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    #@27
    move-result-object v4

    #@28
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@2b
    move-result-object v5

    #@2c
    move-object v0, p0

    #@2d
    .line 1927
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    #@30
    .line 1933
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@38
    .line 1934
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@3a
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@40
    .line 1936
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@42
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@44
    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@4a
    .line 1937
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@4c
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@4e
    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@54
    .line 1921
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v6, 0x1

    #@1
    .line 1884
    const-string/jumbo v3, "blockWidth must be a power of two"

    #@4
    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@7
    .line 1885
    const-string/jumbo v3, "blockHeight must be a power of two"

    #@a
    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@d
    .line 1887
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@f
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v2

    #@13
    .line 1888
    .local v2, "newBlockWidth":I
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@15
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v1

    #@19
    .line 1892
    .local v1, "newBlockHeight":I
    mul-int v3, v2, v1

    #@1b
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1d
    div-int/2addr v3, v4

    #@1e
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@20
    div-int v0, v3, v4

    #@22
    .line 1893
    .local v0, "factor":I
    if-eq v0, v6, :cond_0

    #@24
    .line 1894
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@26
    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2c
    .line 1896
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@2e
    int-to-long v4, v0

    #@2f
    .line 1895
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@35
    .line 1898
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@37
    .line 1899
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@39
    div-int v4, v1, v4

    #@3b
    .line 1900
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@3d
    div-int v5, v2, v5

    #@3f
    .line 1897
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@42
    move-result-object v3

    #@43
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@45
    .line 1902
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@47
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@49
    div-int v4, v2, v4

    #@4b
    .line 1901
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@51
    .line 1904
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@53
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@55
    div-int v4, v1, v4

    #@57
    .line 1903
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@5d
    .line 1906
    :cond_0
    mul-int v3, v2, v1

    #@5f
    div-int/2addr v3, p1

    #@60
    div-int v0, v3, p2

    #@62
    .line 1907
    if-eq v0, v6, :cond_1

    #@64
    .line 1908
    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@67
    move-result-object p3

    #@68
    .line 1909
    int-to-long v4, v0

    #@69
    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@6c
    move-result-object p4

    #@6d
    .line 1911
    div-int v3, v1, p2

    #@6f
    .line 1912
    div-int v4, v2, p1

    #@71
    .line 1910
    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@74
    move-result-object p5

    #@75
    .line 1914
    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@77
    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@7a
    move-result-object v3

    #@7b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@7d
    .line 1915
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@7f
    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@82
    move-result-object v3

    #@83
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@85
    .line 1916
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@87
    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@8a
    move-result-object v3

    #@8b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@8d
    .line 1917
    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@8f
    .line 1918
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@91
    .line 1883
    return-void
.end method

.method private applyLevelLimits()V
    .locals 59

    #@0
    .prologue
    .line 2028
    const-wide/16 v6, 0x0

    #@2
    .line 2029
    .local v6, "maxBlocksPerSecond":J
    const/4 v5, 0x0

    #@3
    .line 2030
    .local v5, "maxBlocks":I
    const/16 v48, 0x0

    #@5
    .line 2031
    .local v48, "maxBps":I
    const/16 v49, 0x0

    #@7
    .line 2033
    .local v49, "maxDPBBlocks":I
    const/16 v47, 0x4

    #@9
    .line 2034
    .local v47, "errors":I
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@d
    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@f
    move-object/from16 v56, v0

    #@11
    .line 2035
    .local v56, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@15
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@18
    move-result-object v52

    #@19
    .line 2037
    .local v52, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/avc"

    #@1c
    move-object/from16 v0, v52

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 2038
    const/16 v5, 0x63

    #@26
    .line 2039
    const-wide/16 v6, 0x5cd

    #@28
    .line 2040
    const v48, 0xfa00

    #@2b
    .line 2041
    const/16 v49, 0x18c

    #@2d
    .line 2042
    const/4 v2, 0x0

    #@2e
    move-object/from16 v0, v56

    #@30
    array-length v4, v0

    #@31
    :goto_0
    if-ge v2, v4, :cond_1

    #@33
    aget-object v55, v56, v2

    #@35
    .line 2043
    .local v55, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    #@37
    .local v42, "MBPS":I
    const/16 v40, 0x0

    #@39
    .local v40, "FS":I
    const/16 v34, 0x0

    #@3b
    .local v34, "BR":I
    const/16 v36, 0x0

    #@3d
    .line 2044
    .local v36, "DPB":I
    const/16 v58, 0x1

    #@3f
    .line 2045
    .local v58, "supported":Z
    move-object/from16 v0, v55

    #@41
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@43
    sparse-switch v8, :sswitch_data_0

    #@46
    .line 2081
    const-string/jumbo v8, "VideoCapabilities"

    #@49
    new-instance v11, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v12, "Unrecognized level "

    #@51
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v11

    #@55
    .line 2082
    move-object/from16 v0, v55

    #@57
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@59
    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    .line 2082
    const-string/jumbo v12, " for "

    #@60
    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v11

    #@64
    move-object/from16 v0, v52

    #@66
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 2083
    or-int/lit8 v47, v47, 0x1

    #@73
    .line 2085
    :goto_1
    move-object/from16 v0, v55

    #@75
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@77
    sparse-switch v8, :sswitch_data_1

    #@7a
    .line 2102
    const-string/jumbo v8, "VideoCapabilities"

    #@7d
    new-instance v11, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v12, "Unrecognized profile "

    #@85
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    .line 2103
    move-object/from16 v0, v55

    #@8b
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@8d
    .line 2102
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v11

    #@91
    .line 2103
    const-string/jumbo v12, " for "

    #@94
    .line 2102
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    move-object/from16 v0, v52

    #@9a
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v11

    #@9e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v11

    #@a2
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 2104
    or-int/lit8 v47, v47, 0x1

    #@a7
    .line 2105
    move/from16 v0, v34

    #@a9
    mul-int/lit16 v0, v0, 0x3e8

    #@ab
    move/from16 v34, v0

    #@ad
    .line 2107
    :goto_2
    if-eqz v58, :cond_0

    #@af
    .line 2108
    and-int/lit8 v47, v47, -0x5

    #@b1
    .line 2110
    :cond_0
    move/from16 v0, v42

    #@b3
    int-to-long v0, v0

    #@b4
    move-wide/from16 v16, v0

    #@b6
    move-wide/from16 v0, v16

    #@b8
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@bb
    move-result-wide v6

    #@bc
    .line 2111
    move/from16 v0, v40

    #@be
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@c1
    move-result v5

    #@c2
    .line 2112
    move/from16 v0, v34

    #@c4
    move/from16 v1, v48

    #@c6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@c9
    move-result v48

    #@ca
    .line 2113
    move/from16 v0, v49

    #@cc
    move/from16 v1, v36

    #@ce
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result v49

    #@d2
    .line 2042
    add-int/lit8 v2, v2, 0x1

    #@d4
    goto/16 :goto_0

    #@d6
    .line 2047
    :sswitch_0
    const/16 v42, 0x5cd

    #@d8
    const/16 v40, 0x63

    #@da
    const/16 v34, 0x40

    #@dc
    const/16 v36, 0x18c

    #@de
    goto :goto_1

    #@df
    .line 2049
    :sswitch_1
    const/16 v42, 0x5cd

    #@e1
    const/16 v40, 0x63

    #@e3
    const/16 v34, 0x80

    #@e5
    const/16 v36, 0x18c

    #@e7
    goto :goto_1

    #@e8
    .line 2051
    :sswitch_2
    const/16 v42, 0xbb8

    #@ea
    const/16 v40, 0x18c

    #@ec
    const/16 v34, 0xc0

    #@ee
    const/16 v36, 0x384

    #@f0
    goto :goto_1

    #@f1
    .line 2053
    :sswitch_3
    const/16 v42, 0x1770

    #@f3
    const/16 v40, 0x18c

    #@f5
    const/16 v34, 0x180

    #@f7
    const/16 v36, 0x948

    #@f9
    goto/16 :goto_1

    #@fb
    .line 2055
    :sswitch_4
    const/16 v42, 0x2e68

    #@fd
    const/16 v40, 0x18c

    #@ff
    const/16 v34, 0x300

    #@101
    const/16 v36, 0x948

    #@103
    goto/16 :goto_1

    #@105
    .line 2057
    :sswitch_5
    const/16 v42, 0x2e68

    #@107
    const/16 v40, 0x18c

    #@109
    const/16 v34, 0x7d0

    #@10b
    const/16 v36, 0x948

    #@10d
    goto/16 :goto_1

    #@10f
    .line 2059
    :sswitch_6
    const/16 v42, 0x4d58

    #@111
    const/16 v40, 0x318

    #@113
    const/16 v34, 0xfa0

    #@115
    const/16 v36, 0x1290

    #@117
    goto/16 :goto_1

    #@119
    .line 2061
    :sswitch_7
    const/16 v42, 0x4f1a

    #@11b
    const/16 v40, 0x654

    #@11d
    const/16 v34, 0xfa0

    #@11f
    const/16 v36, 0x1fa4

    #@121
    goto/16 :goto_1

    #@123
    .line 2063
    :sswitch_8
    const v42, 0x9e34

    #@126
    const/16 v40, 0x654

    #@128
    const/16 v34, 0x2710

    #@12a
    const/16 v36, 0x1fa4

    #@12c
    goto/16 :goto_1

    #@12e
    .line 2065
    :sswitch_9
    const v42, 0x1a5e0

    #@131
    const/16 v40, 0xe10

    #@133
    const/16 v34, 0x36b0

    #@135
    const/16 v36, 0x4650

    #@137
    goto/16 :goto_1

    #@139
    .line 2067
    :sswitch_a
    const v42, 0x34bc0

    #@13c
    const/16 v40, 0x1400

    #@13e
    const/16 v34, 0x4e20

    #@140
    const/16 v36, 0x5000

    #@142
    goto/16 :goto_1

    #@144
    .line 2069
    :sswitch_b
    const v42, 0x3c000

    #@147
    const/16 v40, 0x2000

    #@149
    const/16 v34, 0x4e20

    #@14b
    const v36, 0x8000

    #@14e
    goto/16 :goto_1

    #@150
    .line 2071
    :sswitch_c
    const v42, 0x3c000

    #@153
    const/16 v40, 0x2000

    #@155
    const v34, 0xc350

    #@158
    const v36, 0x8000

    #@15b
    goto/16 :goto_1

    #@15d
    .line 2073
    :sswitch_d
    const v42, 0x7f800

    #@160
    const/16 v40, 0x2200

    #@162
    const v34, 0xc350

    #@165
    const v36, 0x8800

    #@168
    goto/16 :goto_1

    #@16a
    .line 2075
    :sswitch_e
    const/high16 v42, 0x90000

    #@16c
    const/16 v40, 0x5640

    #@16e
    const v34, 0x20f58

    #@171
    const v36, 0x1af40

    #@174
    goto/16 :goto_1

    #@176
    .line 2077
    :sswitch_f
    const/high16 v42, 0xf0000

    #@178
    const v40, 0x9000

    #@17b
    const v34, 0x3a980

    #@17e
    const v36, 0x2d000

    #@181
    goto/16 :goto_1

    #@183
    .line 2079
    :sswitch_10
    const v42, 0x1fa400

    #@186
    const v40, 0x9000

    #@189
    const v34, 0x3a980

    #@18c
    const v36, 0x2d000

    #@18f
    goto/16 :goto_1

    #@191
    .line 2087
    :sswitch_11
    move/from16 v0, v34

    #@193
    mul-int/lit16 v0, v0, 0x4e2

    #@195
    move/from16 v34, v0

    #@197
    goto/16 :goto_2

    #@199
    .line 2089
    :sswitch_12
    move/from16 v0, v34

    #@19b
    mul-int/lit16 v0, v0, 0xbb8

    #@19d
    move/from16 v34, v0

    #@19f
    goto/16 :goto_2

    #@1a1
    .line 2093
    :sswitch_13
    const-string/jumbo v8, "VideoCapabilities"

    #@1a4
    new-instance v11, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v12, "Unsupported profile "

    #@1ac
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v11

    #@1b0
    .line 2094
    move-object/from16 v0, v55

    #@1b2
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@1b4
    .line 2093
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v11

    #@1b8
    .line 2094
    const-string/jumbo v12, " for "

    #@1bb
    .line 2093
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v11

    #@1bf
    move-object/from16 v0, v52

    #@1c1
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v11

    #@1c5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v11

    #@1c9
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 2095
    or-int/lit8 v47, v47, 0x2

    #@1ce
    .line 2096
    const/16 v58, 0x0

    #@1d0
    .line 2100
    :sswitch_14
    move/from16 v0, v34

    #@1d2
    mul-int/lit16 v0, v0, 0x3e8

    #@1d4
    move/from16 v34, v0

    #@1d6
    goto/16 :goto_2

    #@1d8
    .line 2116
    .end local v34    # "BR":I
    .end local v36    # "DPB":I
    .end local v40    # "FS":I
    .end local v42    # "MBPS":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v58    # "supported":Z
    :cond_1
    mul-int/lit8 v2, v5, 0x8

    #@1da
    int-to-double v0, v2

    #@1db
    move-wide/from16 v16, v0

    #@1dd
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@1e0
    move-result-wide v16

    #@1e1
    move-wide/from16 v0, v16

    #@1e3
    double-to-int v3, v0

    #@1e4
    .line 2120
    .local v3, "maxLengthInBlocks":I
    const/16 v8, 0x10

    #@1e6
    const/16 v9, 0x10

    #@1e8
    .line 2121
    const/4 v10, 0x1

    #@1e9
    const/4 v11, 0x1

    #@1ea
    move-object/from16 v2, p0

    #@1ec
    move v4, v3

    #@1ed
    .line 2117
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@1f0
    .line 2616
    .end local v3    # "maxLengthInBlocks":I
    :goto_3
    const/4 v2, 0x1

    #@1f1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f4
    move-result-object v2

    #@1f5
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f8
    move-result-object v4

    #@1f9
    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1fc
    move-result-object v2

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@201
    .line 2617
    move-object/from16 v0, p0

    #@203
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@205
    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@207
    or-int v4, v4, v47

    #@209
    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@20b
    .line 2027
    return-void

    #@20c
    .line 2122
    :cond_2
    const-string/jumbo v2, "video/mpeg2"

    #@20f
    move-object/from16 v0, v52

    #@211
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@214
    move-result v2

    #@215
    if-eqz v2, :cond_5

    #@217
    .line 2123
    const/16 v9, 0xb

    #@219
    .local v9, "maxWidth":I
    const/16 v10, 0x9

    #@21b
    .local v10, "maxHeight":I
    const/16 v51, 0xf

    #@21d
    .line 2124
    .local v51, "maxRate":I
    const/16 v5, 0x63

    #@21f
    .line 2125
    const-wide/16 v6, 0x5cd

    #@221
    .line 2126
    const v48, 0xfa00

    #@224
    .line 2127
    const/4 v2, 0x0

    #@225
    move-object/from16 v0, v56

    #@227
    array-length v4, v0

    #@228
    :goto_4
    if-ge v2, v4, :cond_4

    #@22a
    aget-object v55, v56, v2

    #@22c
    .line 2128
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    #@22e
    .restart local v42    # "MBPS":I
    const/16 v40, 0x0

    #@230
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    #@232
    .restart local v34    # "BR":I
    const/16 v37, 0x0

    #@234
    .local v37, "FR":I
    const/16 v43, 0x0

    #@236
    .local v43, "W":I
    const/16 v41, 0x0

    #@238
    .line 2129
    .local v41, "H":I
    const/16 v58, 0x1

    #@23a
    .line 2130
    .restart local v58    # "supported":Z
    move-object/from16 v0, v55

    #@23c
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@23e
    packed-switch v8, :pswitch_data_0

    #@241
    .line 2171
    const-string/jumbo v8, "VideoCapabilities"

    #@244
    new-instance v11, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v12, "Unrecognized profile "

    #@24c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v11

    #@250
    .line 2172
    move-object/from16 v0, v55

    #@252
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@254
    .line 2171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@257
    move-result-object v11

    #@258
    .line 2172
    const-string/jumbo v12, " for "

    #@25b
    .line 2171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v11

    #@25f
    move-object/from16 v0, v52

    #@261
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v11

    #@265
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v11

    #@269
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26c
    .line 2173
    or-int/lit8 v47, v47, 0x1

    #@26e
    .line 2175
    :goto_5
    if-eqz v58, :cond_3

    #@270
    .line 2176
    and-int/lit8 v47, v47, -0x5

    #@272
    .line 2178
    :cond_3
    move/from16 v0, v42

    #@274
    int-to-long v0, v0

    #@275
    move-wide/from16 v16, v0

    #@277
    move-wide/from16 v0, v16

    #@279
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@27c
    move-result-wide v6

    #@27d
    .line 2179
    move/from16 v0, v40

    #@27f
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@282
    move-result v5

    #@283
    .line 2180
    move/from16 v0, v34

    #@285
    mul-int/lit16 v8, v0, 0x3e8

    #@287
    move/from16 v0, v48

    #@289
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@28c
    move-result v48

    #@28d
    .line 2181
    move/from16 v0, v43

    #@28f
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@292
    move-result v9

    #@293
    .line 2182
    move/from16 v0, v41

    #@295
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    #@298
    move-result v10

    #@299
    .line 2183
    move/from16 v0, v37

    #@29b
    move/from16 v1, v51

    #@29d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2a0
    move-result v51

    #@2a1
    .line 2127
    add-int/lit8 v2, v2, 0x1

    #@2a3
    goto :goto_4

    #@2a4
    .line 2132
    :pswitch_0
    move-object/from16 v0, v55

    #@2a6
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2a8
    packed-switch v8, :pswitch_data_1

    #@2ab
    .line 2136
    const-string/jumbo v8, "VideoCapabilities"

    #@2ae
    new-instance v11, Ljava/lang/StringBuilder;

    #@2b0
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2b3
    const-string/jumbo v12, "Unrecognized profile/level "

    #@2b6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v11

    #@2ba
    .line 2137
    move-object/from16 v0, v55

    #@2bc
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@2be
    .line 2136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v11

    #@2c2
    .line 2137
    const-string/jumbo v12, "/"

    #@2c5
    .line 2136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v11

    #@2c9
    .line 2138
    move-object/from16 v0, v55

    #@2cb
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2cd
    .line 2136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v11

    #@2d1
    .line 2138
    const-string/jumbo v12, " for "

    #@2d4
    .line 2136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v11

    #@2d8
    move-object/from16 v0, v52

    #@2da
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v11

    #@2de
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e1
    move-result-object v11

    #@2e2
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e5
    .line 2139
    or-int/lit8 v47, v47, 0x1

    #@2e7
    goto :goto_5

    #@2e8
    .line 2134
    :pswitch_1
    const/16 v37, 0x1e

    #@2ea
    const/16 v43, 0x2d

    #@2ec
    const/16 v41, 0x24

    #@2ee
    const v42, 0x9e34

    #@2f1
    const/16 v40, 0x654

    #@2f3
    const/16 v34, 0x3a98

    #@2f5
    goto/16 :goto_5

    #@2f7
    .line 2143
    :pswitch_2
    move-object/from16 v0, v55

    #@2f9
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2fb
    packed-switch v8, :pswitch_data_2

    #@2fe
    .line 2155
    const-string/jumbo v8, "VideoCapabilities"

    #@301
    new-instance v11, Ljava/lang/StringBuilder;

    #@303
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@306
    const-string/jumbo v12, "Unrecognized profile/level "

    #@309
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v11

    #@30d
    .line 2156
    move-object/from16 v0, v55

    #@30f
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@311
    .line 2155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@314
    move-result-object v11

    #@315
    .line 2156
    const-string/jumbo v12, "/"

    #@318
    .line 2155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v11

    #@31c
    .line 2157
    move-object/from16 v0, v55

    #@31e
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@320
    .line 2155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@323
    move-result-object v11

    #@324
    .line 2157
    const-string/jumbo v12, " for "

    #@327
    .line 2155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    move-result-object v11

    #@32b
    move-object/from16 v0, v52

    #@32d
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    move-result-object v11

    #@331
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@334
    move-result-object v11

    #@335
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@338
    .line 2158
    or-int/lit8 v47, v47, 0x1

    #@33a
    goto/16 :goto_5

    #@33c
    .line 2145
    :pswitch_3
    const/16 v37, 0x1e

    #@33e
    const/16 v43, 0x16

    #@340
    const/16 v41, 0x12

    #@342
    const/16 v42, 0x2e68

    #@344
    const/16 v40, 0x18c

    #@346
    const/16 v34, 0xfa0

    #@348
    goto/16 :goto_5

    #@34a
    .line 2147
    :pswitch_4
    const/16 v37, 0x1e

    #@34c
    const/16 v43, 0x2d

    #@34e
    const/16 v41, 0x24

    #@350
    const v42, 0x9e34

    #@353
    const/16 v40, 0x654

    #@355
    const/16 v34, 0x3a98

    #@357
    goto/16 :goto_5

    #@359
    .line 2149
    :pswitch_5
    const/16 v37, 0x3c

    #@35b
    const/16 v43, 0x5a

    #@35d
    const/16 v41, 0x44

    #@35f
    const v42, 0x2cd30

    #@362
    const/16 v40, 0x17e8

    #@364
    const v34, 0xea60

    #@367
    goto/16 :goto_5

    #@369
    .line 2151
    :pswitch_6
    const/16 v37, 0x3c

    #@36b
    const/16 v43, 0x78

    #@36d
    const/16 v41, 0x44

    #@36f
    const v42, 0x3bc40

    #@372
    const/16 v40, 0x1fe0

    #@374
    const v34, 0x13880

    #@377
    goto/16 :goto_5

    #@379
    .line 2153
    :pswitch_7
    const/16 v37, 0x3c

    #@37b
    const/16 v43, 0x78

    #@37d
    const/16 v41, 0x44

    #@37f
    const v42, 0x77880

    #@382
    const/16 v40, 0x1fe0

    #@384
    const v34, 0x13880

    #@387
    goto/16 :goto_5

    #@389
    .line 2165
    :pswitch_8
    const-string/jumbo v8, "VideoCapabilities"

    #@38c
    new-instance v11, Ljava/lang/StringBuilder;

    #@38e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@391
    const-string/jumbo v12, "Unsupported profile "

    #@394
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v11

    #@398
    .line 2166
    move-object/from16 v0, v55

    #@39a
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@39c
    .line 2165
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v11

    #@3a0
    .line 2166
    const-string/jumbo v12, " for "

    #@3a3
    .line 2165
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v11

    #@3a7
    move-object/from16 v0, v52

    #@3a9
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v11

    #@3ad
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b0
    move-result-object v11

    #@3b1
    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3b4
    .line 2167
    or-int/lit8 v47, v47, 0x2

    #@3b6
    .line 2168
    const/16 v58, 0x0

    #@3b8
    .line 2169
    goto/16 :goto_5

    #@3ba
    .line 2187
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v40    # "FS":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v58    # "supported":Z
    :cond_4
    const/16 v14, 0x10

    #@3bc
    const/16 v15, 0x10

    #@3be
    .line 2188
    const/16 v16, 0x1

    #@3c0
    const/16 v17, 0x1

    #@3c2
    move-object/from16 v8, p0

    #@3c4
    move v11, v5

    #@3c5
    move-wide v12, v6

    #@3c6
    .line 2185
    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@3c9
    .line 2189
    move-object/from16 v0, p0

    #@3cb
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3cd
    const/16 v4, 0xc

    #@3cf
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d2
    move-result-object v4

    #@3d3
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d6
    move-result-object v8

    #@3d7
    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@3da
    move-result-object v2

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3df
    goto/16 :goto_3

    #@3e1
    .line 2190
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v51    # "maxRate":I
    :cond_5
    const-string/jumbo v2, "video/mp4v-es"

    #@3e4
    move-object/from16 v0, v52

    #@3e6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3e9
    move-result v2

    #@3ea
    if-eqz v2, :cond_9

    #@3ec
    .line 2191
    const/16 v9, 0xb

    #@3ee
    .restart local v9    # "maxWidth":I
    const/16 v10, 0x9

    #@3f0
    .restart local v10    # "maxHeight":I
    const/16 v51, 0xf

    #@3f2
    .line 2192
    .restart local v51    # "maxRate":I
    const/16 v5, 0x63

    #@3f4
    .line 2193
    const-wide/16 v6, 0x5cd

    #@3f6
    .line 2194
    const v48, 0xfa00

    #@3f9
    .line 2195
    const/4 v2, 0x0

    #@3fa
    move-object/from16 v0, v56

    #@3fc
    array-length v4, v0

    #@3fd
    :goto_6
    if-ge v2, v4, :cond_8

    #@3ff
    aget-object v55, v56, v2

    #@401
    .line 2196
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    #@403
    .restart local v42    # "MBPS":I
    const/16 v40, 0x0

    #@405
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    #@407
    .restart local v34    # "BR":I
    const/16 v37, 0x0

    #@409
    .restart local v37    # "FR":I
    const/16 v43, 0x0

    #@40b
    .restart local v43    # "W":I
    const/16 v41, 0x0

    #@40d
    .line 2197
    .restart local v41    # "H":I
    const/16 v57, 0x0

    #@40f
    .line 2198
    .local v57, "strict":Z
    const/16 v58, 0x1

    #@411
    .line 2199
    .restart local v58    # "supported":Z
    move-object/from16 v0, v55

    #@413
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@415
    sparse-switch v8, :sswitch_data_2

    #@418
    .line 2274
    const-string/jumbo v8, "VideoCapabilities"

    #@41b
    new-instance v11, Ljava/lang/StringBuilder;

    #@41d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@420
    const-string/jumbo v12, "Unrecognized profile "

    #@423
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@426
    move-result-object v11

    #@427
    .line 2275
    move-object/from16 v0, v55

    #@429
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@42b
    .line 2274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v11

    #@42f
    .line 2275
    const-string/jumbo v12, " for "

    #@432
    .line 2274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@435
    move-result-object v11

    #@436
    move-object/from16 v0, v52

    #@438
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43b
    move-result-object v11

    #@43c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43f
    move-result-object v11

    #@440
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@443
    .line 2276
    or-int/lit8 v47, v47, 0x1

    #@445
    .line 2278
    :goto_7
    if-eqz v58, :cond_6

    #@447
    .line 2279
    and-int/lit8 v47, v47, -0x5

    #@449
    .line 2281
    :cond_6
    move/from16 v0, v42

    #@44b
    int-to-long v0, v0

    #@44c
    move-wide/from16 v16, v0

    #@44e
    move-wide/from16 v0, v16

    #@450
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@453
    move-result-wide v6

    #@454
    .line 2282
    move/from16 v0, v40

    #@456
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@459
    move-result v5

    #@45a
    .line 2283
    move/from16 v0, v34

    #@45c
    mul-int/lit16 v8, v0, 0x3e8

    #@45e
    move/from16 v0, v48

    #@460
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@463
    move-result v48

    #@464
    .line 2284
    if-eqz v57, :cond_7

    #@466
    .line 2285
    move/from16 v0, v43

    #@468
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@46b
    move-result v9

    #@46c
    .line 2286
    move/from16 v0, v41

    #@46e
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    #@471
    move-result v10

    #@472
    .line 2287
    move/from16 v0, v37

    #@474
    move/from16 v1, v51

    #@476
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@479
    move-result v51

    #@47a
    .line 2195
    :goto_8
    add-int/lit8 v2, v2, 0x1

    #@47c
    goto :goto_6

    #@47d
    .line 2201
    :sswitch_15
    move-object/from16 v0, v55

    #@47f
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@481
    sparse-switch v8, :sswitch_data_3

    #@484
    .line 2221
    const-string/jumbo v8, "VideoCapabilities"

    #@487
    new-instance v11, Ljava/lang/StringBuilder;

    #@489
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@48c
    const-string/jumbo v12, "Unrecognized profile/level "

    #@48f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v11

    #@493
    .line 2222
    move-object/from16 v0, v55

    #@495
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@497
    .line 2221
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v11

    #@49b
    .line 2222
    const-string/jumbo v12, "/"

    #@49e
    .line 2221
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a1
    move-result-object v11

    #@4a2
    .line 2223
    move-object/from16 v0, v55

    #@4a4
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@4a6
    .line 2221
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a9
    move-result-object v11

    #@4aa
    .line 2223
    const-string/jumbo v12, " for "

    #@4ad
    .line 2221
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b0
    move-result-object v11

    #@4b1
    move-object/from16 v0, v52

    #@4b3
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v11

    #@4b7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ba
    move-result-object v11

    #@4bb
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4be
    .line 2224
    or-int/lit8 v47, v47, 0x1

    #@4c0
    goto :goto_7

    #@4c1
    .line 2203
    :sswitch_16
    const/16 v57, 0x1

    #@4c3
    .line 2204
    const/16 v37, 0xf

    #@4c5
    const/16 v43, 0xb

    #@4c7
    const/16 v41, 0x9

    #@4c9
    const/16 v42, 0x5cd

    #@4cb
    const/16 v40, 0x63

    #@4cd
    const/16 v34, 0x40

    #@4cf
    goto/16 :goto_7

    #@4d1
    .line 2206
    :sswitch_17
    const/16 v37, 0x1e

    #@4d3
    const/16 v43, 0xb

    #@4d5
    const/16 v41, 0x9

    #@4d7
    const/16 v42, 0x5cd

    #@4d9
    const/16 v40, 0x63

    #@4db
    const/16 v34, 0x40

    #@4dd
    goto/16 :goto_7

    #@4df
    .line 2208
    :sswitch_18
    const/16 v57, 0x1

    #@4e1
    .line 2209
    const/16 v37, 0xf

    #@4e3
    const/16 v43, 0xb

    #@4e5
    const/16 v41, 0x9

    #@4e7
    const/16 v42, 0x5cd

    #@4e9
    const/16 v40, 0x63

    #@4eb
    const/16 v34, 0x80

    #@4ed
    goto/16 :goto_7

    #@4ef
    .line 2211
    :sswitch_19
    const/16 v37, 0x1e

    #@4f1
    const/16 v43, 0x16

    #@4f3
    const/16 v41, 0x12

    #@4f5
    const/16 v42, 0x1734

    #@4f7
    const/16 v40, 0x18c

    #@4f9
    const/16 v34, 0x80

    #@4fb
    goto/16 :goto_7

    #@4fd
    .line 2213
    :sswitch_1a
    const/16 v37, 0x1e

    #@4ff
    const/16 v43, 0x16

    #@501
    const/16 v41, 0x12

    #@503
    const/16 v42, 0x2e68

    #@505
    const/16 v40, 0x18c

    #@507
    const/16 v34, 0x180

    #@509
    goto/16 :goto_7

    #@50b
    .line 2215
    :sswitch_1b
    const/16 v37, 0x1e

    #@50d
    const/16 v43, 0x28

    #@50f
    const/16 v41, 0x1e

    #@511
    const v42, 0x8ca0

    #@514
    const/16 v40, 0x4b0

    #@516
    const/16 v34, 0xfa0

    #@518
    goto/16 :goto_7

    #@51a
    .line 2217
    :sswitch_1c
    const/16 v37, 0x1e

    #@51c
    const/16 v43, 0x2d

    #@51e
    const/16 v41, 0x24

    #@520
    const v42, 0x9e34

    #@523
    const/16 v40, 0x654

    #@525
    const/16 v34, 0x1f40

    #@527
    goto/16 :goto_7

    #@529
    .line 2219
    :sswitch_1d
    const/16 v37, 0x1e

    #@52b
    const/16 v43, 0x50

    #@52d
    const/16 v41, 0x2d

    #@52f
    const v42, 0x1a5e0

    #@532
    const/16 v40, 0xe10

    #@534
    const/16 v34, 0x2ee0

    #@536
    goto/16 :goto_7

    #@538
    .line 2228
    :sswitch_1e
    move-object/from16 v0, v55

    #@53a
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@53c
    sparse-switch v8, :sswitch_data_4

    #@53f
    .line 2243
    const-string/jumbo v8, "VideoCapabilities"

    #@542
    new-instance v11, Ljava/lang/StringBuilder;

    #@544
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@547
    const-string/jumbo v12, "Unrecognized profile/level "

    #@54a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54d
    move-result-object v11

    #@54e
    .line 2244
    move-object/from16 v0, v55

    #@550
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@552
    .line 2243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@555
    move-result-object v11

    #@556
    .line 2244
    const-string/jumbo v12, "/"

    #@559
    .line 2243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v11

    #@55d
    .line 2245
    move-object/from16 v0, v55

    #@55f
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@561
    .line 2243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@564
    move-result-object v11

    #@565
    .line 2245
    const-string/jumbo v12, " for "

    #@568
    .line 2243
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56b
    move-result-object v11

    #@56c
    move-object/from16 v0, v52

    #@56e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v11

    #@572
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@575
    move-result-object v11

    #@576
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@579
    .line 2246
    or-int/lit8 v47, v47, 0x1

    #@57b
    goto/16 :goto_7

    #@57d
    .line 2231
    :sswitch_1f
    const/16 v37, 0x1e

    #@57f
    const/16 v43, 0xb

    #@581
    const/16 v41, 0x9

    #@583
    const/16 v42, 0xb9a

    #@585
    const/16 v40, 0x63

    #@587
    const/16 v34, 0x80

    #@589
    goto/16 :goto_7

    #@58b
    .line 2233
    :sswitch_20
    const/16 v37, 0x1e

    #@58d
    const/16 v43, 0x16

    #@58f
    const/16 v41, 0x12

    #@591
    const/16 v42, 0x1734

    #@593
    const/16 v40, 0x18c

    #@595
    const/16 v34, 0x180

    #@597
    goto/16 :goto_7

    #@599
    .line 2235
    :sswitch_21
    const/16 v37, 0x1e

    #@59b
    const/16 v43, 0x16

    #@59d
    const/16 v41, 0x12

    #@59f
    const/16 v42, 0x2e68

    #@5a1
    const/16 v40, 0x18c

    #@5a3
    const/16 v34, 0x300

    #@5a5
    goto/16 :goto_7

    #@5a7
    .line 2237
    :sswitch_22
    const/16 v37, 0x1e

    #@5a9
    const/16 v43, 0x16

    #@5ab
    const/16 v41, 0x12

    #@5ad
    const/16 v42, 0x2e68

    #@5af
    const/16 v40, 0x18c

    #@5b1
    const/16 v34, 0x5dc

    #@5b3
    goto/16 :goto_7

    #@5b5
    .line 2239
    :sswitch_23
    const/16 v37, 0x1e

    #@5b7
    const/16 v43, 0x2c

    #@5b9
    const/16 v41, 0x24

    #@5bb
    const/16 v42, 0x5cd0

    #@5bd
    const/16 v40, 0x318

    #@5bf
    const/16 v34, 0xbb8

    #@5c1
    goto/16 :goto_7

    #@5c3
    .line 2241
    :sswitch_24
    const/16 v37, 0x1e

    #@5c5
    const/16 v43, 0x2d

    #@5c7
    const/16 v41, 0x24

    #@5c9
    const v42, 0xbdd8

    #@5cc
    const/16 v40, 0x654

    #@5ce
    const/16 v34, 0x1f40

    #@5d0
    goto/16 :goto_7

    #@5d2
    .line 2268
    :sswitch_25
    const-string/jumbo v8, "VideoCapabilities"

    #@5d5
    new-instance v11, Ljava/lang/StringBuilder;

    #@5d7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5da
    const-string/jumbo v12, "Unsupported profile "

    #@5dd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e0
    move-result-object v11

    #@5e1
    .line 2269
    move-object/from16 v0, v55

    #@5e3
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@5e5
    .line 2268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v11

    #@5e9
    .line 2269
    const-string/jumbo v12, " for "

    #@5ec
    .line 2268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ef
    move-result-object v11

    #@5f0
    move-object/from16 v0, v52

    #@5f2
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v11

    #@5f6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f9
    move-result-object v11

    #@5fa
    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5fd
    .line 2270
    or-int/lit8 v47, v47, 0x2

    #@5ff
    .line 2271
    const/16 v58, 0x0

    #@601
    .line 2272
    goto/16 :goto_7

    #@603
    .line 2290
    :cond_7
    mul-int/lit8 v8, v40, 0x2

    #@605
    int-to-double v0, v8

    #@606
    move-wide/from16 v16, v0

    #@608
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@60b
    move-result-wide v16

    #@60c
    move-wide/from16 v0, v16

    #@60e
    double-to-int v0, v0

    #@60f
    move/from16 v50, v0

    #@611
    .line 2291
    .local v50, "maxDim":I
    move/from16 v0, v50

    #@613
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@616
    move-result v9

    #@617
    .line 2292
    move/from16 v0, v50

    #@619
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    #@61c
    move-result v10

    #@61d
    .line 2293
    const/16 v8, 0x3c

    #@61f
    move/from16 v0, v37

    #@621
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    #@624
    move-result v8

    #@625
    move/from16 v0, v51

    #@627
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@62a
    move-result v51

    #@62b
    goto/16 :goto_8

    #@62d
    .line 2298
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v40    # "FS":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v50    # "maxDim":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v57    # "strict":Z
    .end local v58    # "supported":Z
    :cond_8
    const/16 v14, 0x10

    #@62f
    const/16 v15, 0x10

    #@631
    .line 2299
    const/16 v16, 0x1

    #@633
    const/16 v17, 0x1

    #@635
    move-object/from16 v8, p0

    #@637
    move v11, v5

    #@638
    move-wide v12, v6

    #@639
    .line 2296
    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@63c
    .line 2300
    move-object/from16 v0, p0

    #@63e
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@640
    const/16 v4, 0xc

    #@642
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@645
    move-result-object v4

    #@646
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@649
    move-result-object v8

    #@64a
    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@64d
    move-result-object v2

    #@64e
    move-object/from16 v0, p0

    #@650
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@652
    goto/16 :goto_3

    #@654
    .line 2301
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v51    # "maxRate":I
    :cond_9
    const-string/jumbo v2, "video/3gpp"

    #@657
    move-object/from16 v0, v52

    #@659
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@65c
    move-result v2

    #@65d
    if-eqz v2, :cond_10

    #@65f
    .line 2302
    const/16 v9, 0xb

    #@661
    .restart local v9    # "maxWidth":I
    const/16 v10, 0x9

    #@663
    .restart local v10    # "maxHeight":I
    const/16 v51, 0xf

    #@665
    .restart local v51    # "maxRate":I
    const/16 v13, 0xb

    #@667
    .local v13, "minWidth":I
    const/16 v14, 0x9

    #@669
    .line 2304
    .local v14, "minHeight":I
    const/16 v22, 0x10

    #@66b
    .line 2305
    .local v22, "minAlignment":I
    const/16 v5, 0x63

    #@66d
    .line 2306
    const-wide/16 v6, 0x5cd

    #@66f
    .line 2307
    const v48, 0xfa00

    #@672
    .line 2308
    const/4 v2, 0x0

    #@673
    move-object/from16 v0, v56

    #@675
    array-length v4, v0

    #@676
    :goto_9
    if-ge v2, v4, :cond_e

    #@678
    aget-object v55, v56, v2

    #@67a
    .line 2309
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    #@67c
    .restart local v42    # "MBPS":I
    const/16 v34, 0x0

    #@67e
    .restart local v34    # "BR":I
    const/16 v37, 0x0

    #@680
    .restart local v37    # "FR":I
    const/16 v43, 0x0

    #@682
    .restart local v43    # "W":I
    const/16 v41, 0x0

    #@684
    .restart local v41    # "H":I
    move/from16 v54, v13

    #@686
    .local v54, "minW":I
    move/from16 v53, v14

    #@688
    .line 2310
    .local v53, "minH":I
    const/16 v57, 0x0

    #@68a
    .line 2311
    .restart local v57    # "strict":Z
    move-object/from16 v0, v55

    #@68c
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@68e
    sparse-switch v8, :sswitch_data_5

    #@691
    .line 2346
    const-string/jumbo v8, "VideoCapabilities"

    #@694
    new-instance v11, Ljava/lang/StringBuilder;

    #@696
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@699
    const-string/jumbo v12, "Unrecognized profile/level "

    #@69c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69f
    move-result-object v11

    #@6a0
    move-object/from16 v0, v55

    #@6a2
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@6a4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a7
    move-result-object v11

    #@6a8
    .line 2347
    const-string/jumbo v12, "/"

    #@6ab
    .line 2346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ae
    move-result-object v11

    #@6af
    .line 2347
    move-object/from16 v0, v55

    #@6b1
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@6b3
    .line 2346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b6
    move-result-object v11

    #@6b7
    .line 2347
    const-string/jumbo v12, " for "

    #@6ba
    .line 2346
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6bd
    move-result-object v11

    #@6be
    move-object/from16 v0, v52

    #@6c0
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c3
    move-result-object v11

    #@6c4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c7
    move-result-object v11

    #@6c8
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6cb
    .line 2348
    or-int/lit8 v47, v47, 0x1

    #@6cd
    .line 2350
    .end local v57    # "strict":Z
    :goto_a
    move-object/from16 v0, v55

    #@6cf
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@6d1
    sparse-switch v8, :sswitch_data_6

    #@6d4
    .line 2362
    const-string/jumbo v8, "VideoCapabilities"

    #@6d7
    new-instance v11, Ljava/lang/StringBuilder;

    #@6d9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@6dc
    const-string/jumbo v12, "Unrecognized profile "

    #@6df
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e2
    move-result-object v11

    #@6e3
    .line 2363
    move-object/from16 v0, v55

    #@6e5
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@6e7
    .line 2362
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ea
    move-result-object v11

    #@6eb
    .line 2363
    const-string/jumbo v12, " for "

    #@6ee
    .line 2362
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f1
    move-result-object v11

    #@6f2
    move-object/from16 v0, v52

    #@6f4
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f7
    move-result-object v11

    #@6f8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fb
    move-result-object v11

    #@6fc
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6ff
    .line 2364
    or-int/lit8 v47, v47, 0x1

    #@701
    .line 2366
    :sswitch_26
    if-eqz v57, :cond_d

    #@703
    .line 2371
    const/16 v54, 0xb

    #@705
    const/16 v53, 0x9

    #@707
    .line 2378
    :goto_b
    and-int/lit8 v47, v47, -0x5

    #@709
    .line 2379
    move/from16 v0, v42

    #@70b
    int-to-long v0, v0

    #@70c
    move-wide/from16 v16, v0

    #@70e
    move-wide/from16 v0, v16

    #@710
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@713
    move-result-wide v6

    #@714
    .line 2380
    mul-int v8, v43, v41

    #@716
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@719
    move-result v5

    #@71a
    .line 2381
    const v8, 0xfa00

    #@71d
    mul-int v8, v8, v34

    #@71f
    move/from16 v0, v48

    #@721
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@724
    move-result v48

    #@725
    .line 2382
    move/from16 v0, v43

    #@727
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@72a
    move-result v9

    #@72b
    .line 2383
    move/from16 v0, v41

    #@72d
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    #@730
    move-result v10

    #@731
    .line 2384
    move/from16 v0, v37

    #@733
    move/from16 v1, v51

    #@735
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@738
    move-result v51

    #@739
    .line 2385
    move/from16 v0, v54

    #@73b
    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    #@73e
    move-result v13

    #@73f
    .line 2386
    move/from16 v0, v53

    #@741
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    #@744
    move-result v14

    #@745
    .line 2308
    add-int/lit8 v2, v2, 0x1

    #@747
    goto/16 :goto_9

    #@749
    .line 2313
    .restart local v57    # "strict":Z
    :sswitch_27
    const/16 v57, 0x1

    #@74b
    .line 2314
    const/16 v37, 0xf

    #@74d
    const/16 v43, 0xb

    #@74f
    const/16 v41, 0x9

    #@751
    const/16 v34, 0x1

    #@753
    const/16 v8, 0x63

    #@755
    mul-int/lit8 v42, v8, 0xf

    #@757
    goto/16 :goto_a

    #@759
    .line 2316
    :sswitch_28
    const/16 v57, 0x1

    #@75b
    .line 2317
    const/16 v37, 0x1e

    #@75d
    const/16 v43, 0x16

    #@75f
    const/16 v41, 0x12

    #@761
    const/16 v34, 0x2

    #@763
    const/16 v8, 0x18c

    #@765
    mul-int/lit8 v42, v8, 0xf

    #@767
    goto/16 :goto_a

    #@769
    .line 2319
    :sswitch_29
    const/16 v57, 0x1

    #@76b
    .line 2320
    const/16 v37, 0x1e

    #@76d
    const/16 v43, 0x16

    #@76f
    const/16 v41, 0x12

    #@771
    const/16 v34, 0x6

    #@773
    const/16 v8, 0x18c

    #@775
    mul-int/lit8 v42, v8, 0x1e

    #@777
    goto/16 :goto_a

    #@779
    .line 2322
    :sswitch_2a
    const/16 v57, 0x1

    #@77b
    .line 2323
    const/16 v37, 0x1e

    #@77d
    const/16 v43, 0x16

    #@77f
    const/16 v41, 0x12

    #@781
    const/16 v34, 0x20

    #@783
    const/16 v8, 0x18c

    #@785
    mul-int/lit8 v42, v8, 0x1e

    #@787
    goto/16 :goto_a

    #@789
    .line 2326
    :sswitch_2b
    move-object/from16 v0, v55

    #@78b
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@78d
    const/4 v11, 0x1

    #@78e
    if-eq v8, v11, :cond_b

    #@790
    .line 2327
    move-object/from16 v0, v55

    #@792
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@794
    .line 2328
    const/4 v11, 0x4

    #@795
    .line 2327
    if-ne v8, v11, :cond_c

    #@797
    const/16 v57, 0x1

    #@799
    .line 2329
    .local v57, "strict":Z
    :goto_c
    if-nez v57, :cond_a

    #@79b
    .line 2330
    const/16 v54, 0x1

    #@79d
    const/16 v53, 0x1

    #@79f
    const/16 v22, 0x4

    #@7a1
    .line 2332
    :cond_a
    const/16 v37, 0xf

    #@7a3
    const/16 v43, 0xb

    #@7a5
    const/16 v41, 0x9

    #@7a7
    const/16 v34, 0x2

    #@7a9
    const/16 v8, 0x63

    #@7ab
    mul-int/lit8 v42, v8, 0xf

    #@7ad
    goto/16 :goto_a

    #@7af
    .line 2326
    .local v57, "strict":Z
    :cond_b
    const/16 v57, 0x1

    #@7b1
    goto :goto_c

    #@7b2
    .line 2327
    :cond_c
    const/16 v57, 0x0

    #@7b4
    goto :goto_c

    #@7b5
    .line 2335
    :sswitch_2c
    const/16 v54, 0x1

    #@7b7
    const/16 v53, 0x1

    #@7b9
    const/16 v22, 0x4

    #@7bb
    .line 2336
    const/16 v37, 0x3c

    #@7bd
    const/16 v43, 0x16

    #@7bf
    const/16 v41, 0x12

    #@7c1
    const/16 v34, 0x40

    #@7c3
    const/16 v8, 0x18c

    #@7c5
    mul-int/lit8 v42, v8, 0x32

    #@7c7
    goto/16 :goto_a

    #@7c9
    .line 2339
    :sswitch_2d
    const/16 v54, 0x1

    #@7cb
    const/16 v53, 0x1

    #@7cd
    const/16 v22, 0x4

    #@7cf
    .line 2340
    const/16 v37, 0x3c

    #@7d1
    const/16 v43, 0x2d

    #@7d3
    const/16 v41, 0x12

    #@7d5
    const/16 v34, 0x80

    #@7d7
    const/16 v8, 0x32a

    #@7d9
    mul-int/lit8 v42, v8, 0x32

    #@7db
    goto/16 :goto_a

    #@7dd
    .line 2343
    :sswitch_2e
    const/16 v54, 0x1

    #@7df
    const/16 v53, 0x1

    #@7e1
    const/16 v22, 0x4

    #@7e3
    .line 2344
    const/16 v37, 0x3c

    #@7e5
    const/16 v43, 0x2d

    #@7e7
    const/16 v41, 0x24

    #@7e9
    const/16 v34, 0x100

    #@7eb
    const/16 v8, 0x654

    #@7ed
    mul-int/lit8 v42, v8, 0x32

    #@7ef
    goto/16 :goto_a

    #@7f1
    .line 2376
    .end local v57    # "strict":Z
    :cond_d
    const/4 v8, 0x1

    #@7f2
    move-object/from16 v0, p0

    #@7f4
    iput-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    #@7f6
    goto/16 :goto_b

    #@7f8
    .line 2390
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v53    # "minH":I
    .end local v54    # "minW":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_e
    move-object/from16 v0, p0

    #@7fa
    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    #@7fc
    if-nez v2, :cond_f

    #@7fe
    .line 2392
    new-instance v2, Landroid/util/Rational;

    #@800
    const/16 v4, 0xb

    #@802
    const/16 v8, 0x9

    #@804
    invoke-direct {v2, v4, v8}, Landroid/util/Rational;-><init>(II)V

    #@807
    new-instance v4, Landroid/util/Rational;

    #@809
    const/16 v8, 0xb

    #@80b
    const/16 v11, 0x9

    #@80d
    invoke-direct {v4, v8, v11}, Landroid/util/Rational;-><init>(II)V

    #@810
    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@813
    move-result-object v2

    #@814
    .line 2391
    move-object/from16 v0, p0

    #@816
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@818
    .line 2398
    :cond_f
    const/16 v20, 0x10

    #@81a
    const/16 v21, 0x10

    #@81c
    move-object/from16 v12, p0

    #@81e
    move v15, v9

    #@81f
    move/from16 v16, v10

    #@821
    move/from16 v17, v5

    #@823
    move-wide/from16 v18, v6

    #@825
    move/from16 v23, v22

    #@827
    .line 2394
    invoke-direct/range {v12 .. v23}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    #@82a
    .line 2400
    const/4 v2, 0x1

    #@82b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82e
    move-result-object v2

    #@82f
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@832
    move-result-object v4

    #@833
    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@836
    move-result-object v2

    #@837
    move-object/from16 v0, p0

    #@839
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@83b
    goto/16 :goto_3

    #@83d
    .line 2401
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v13    # "minWidth":I
    .end local v14    # "minHeight":I
    .end local v22    # "minAlignment":I
    .end local v51    # "maxRate":I
    :cond_10
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    #@840
    move-object/from16 v0, v52

    #@842
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@845
    move-result v2

    #@846
    if-eqz v2, :cond_12

    #@848
    .line 2402
    const v5, 0x7fffffff

    #@84b
    .line 2403
    const-wide/32 v6, 0x7fffffff

    #@84e
    .line 2406
    const v48, 0x5f5e100

    #@851
    .line 2410
    const/4 v2, 0x0

    #@852
    move-object/from16 v0, v56

    #@854
    array-length v4, v0

    #@855
    :goto_d
    if-ge v2, v4, :cond_11

    #@857
    aget-object v55, v56, v2

    #@859
    .line 2411
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v55

    #@85b
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@85d
    packed-switch v8, :pswitch_data_3

    #@860
    .line 2418
    :pswitch_9
    const-string/jumbo v8, "VideoCapabilities"

    #@863
    new-instance v11, Ljava/lang/StringBuilder;

    #@865
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@868
    const-string/jumbo v12, "Unrecognized level "

    #@86b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86e
    move-result-object v11

    #@86f
    .line 2419
    move-object/from16 v0, v55

    #@871
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@873
    .line 2418
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@876
    move-result-object v11

    #@877
    .line 2419
    const-string/jumbo v12, " for "

    #@87a
    .line 2418
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87d
    move-result-object v11

    #@87e
    move-object/from16 v0, v52

    #@880
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@883
    move-result-object v11

    #@884
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@887
    move-result-object v11

    #@888
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88b
    .line 2420
    or-int/lit8 v47, v47, 0x1

    #@88d
    .line 2422
    :pswitch_a
    move-object/from16 v0, v55

    #@88f
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@891
    packed-switch v8, :pswitch_data_4

    #@894
    .line 2426
    const-string/jumbo v8, "VideoCapabilities"

    #@897
    new-instance v11, Ljava/lang/StringBuilder;

    #@899
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@89c
    const-string/jumbo v12, "Unrecognized profile "

    #@89f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a2
    move-result-object v11

    #@8a3
    .line 2427
    move-object/from16 v0, v55

    #@8a5
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@8a7
    .line 2426
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8aa
    move-result-object v11

    #@8ab
    .line 2427
    const-string/jumbo v12, " for "

    #@8ae
    .line 2426
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b1
    move-result-object v11

    #@8b2
    move-object/from16 v0, v52

    #@8b4
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b7
    move-result-object v11

    #@8b8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8bb
    move-result-object v11

    #@8bc
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8bf
    .line 2428
    or-int/lit8 v47, v47, 0x1

    #@8c1
    .line 2430
    :pswitch_b
    and-int/lit8 v47, v47, -0x5

    #@8c3
    .line 2410
    add-int/lit8 v2, v2, 0x1

    #@8c5
    goto :goto_d

    #@8c6
    .line 2433
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_11
    const/16 v46, 0x10

    #@8c8
    .line 2434
    .local v46, "blockSize":I
    const/16 v25, 0x7fff

    #@8ca
    const/16 v26, 0x7fff

    #@8cc
    .line 2435
    const/16 v30, 0x10

    #@8ce
    const/16 v31, 0x10

    #@8d0
    .line 2436
    const/16 v32, 0x1

    #@8d2
    const/16 v33, 0x1

    #@8d4
    move-object/from16 v24, p0

    #@8d6
    move/from16 v27, v5

    #@8d8
    move-wide/from16 v28, v6

    #@8da
    .line 2434
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@8dd
    goto/16 :goto_3

    #@8df
    .line 2437
    .end local v46    # "blockSize":I
    :cond_12
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    #@8e2
    move-object/from16 v0, v52

    #@8e4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8e7
    move-result v2

    #@8e8
    if-eqz v2, :cond_14

    #@8ea
    .line 2438
    const-wide/32 v6, 0xca800

    #@8ed
    .line 2439
    const v5, 0x9000

    #@8f0
    .line 2440
    const v48, 0x30d40

    #@8f3
    .line 2441
    const/16 v50, 0x200

    #@8f5
    .line 2443
    .restart local v50    # "maxDim":I
    const/4 v2, 0x0

    #@8f6
    move-object/from16 v0, v56

    #@8f8
    array-length v4, v0

    #@8f9
    :goto_e
    if-ge v2, v4, :cond_13

    #@8fb
    aget-object v55, v56, v2

    #@8fd
    .line 2444
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v44, 0x0

    #@8ff
    .line 2445
    .local v44, "SR":J
    const/16 v40, 0x0

    #@901
    .line 2446
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    #@903
    .line 2447
    .restart local v34    # "BR":I
    const/16 v35, 0x0

    #@905
    .line 2448
    .local v35, "D":I
    move-object/from16 v0, v55

    #@907
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@909
    sparse-switch v8, :sswitch_data_7

    #@90c
    .line 2478
    const-string/jumbo v8, "VideoCapabilities"

    #@90f
    new-instance v11, Ljava/lang/StringBuilder;

    #@911
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@914
    const-string/jumbo v12, "Unrecognized level "

    #@917
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91a
    move-result-object v11

    #@91b
    .line 2479
    move-object/from16 v0, v55

    #@91d
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@91f
    .line 2478
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@922
    move-result-object v11

    #@923
    .line 2479
    const-string/jumbo v12, " for "

    #@926
    .line 2478
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@929
    move-result-object v11

    #@92a
    move-object/from16 v0, v52

    #@92c
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92f
    move-result-object v11

    #@930
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@933
    move-result-object v11

    #@934
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@937
    .line 2480
    or-int/lit8 v47, v47, 0x1

    #@939
    .line 2482
    :goto_f
    move-object/from16 v0, v55

    #@93b
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@93d
    sparse-switch v8, :sswitch_data_8

    #@940
    .line 2491
    const-string/jumbo v8, "VideoCapabilities"

    #@943
    new-instance v11, Ljava/lang/StringBuilder;

    #@945
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@948
    const-string/jumbo v12, "Unrecognized profile "

    #@94b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94e
    move-result-object v11

    #@94f
    .line 2492
    move-object/from16 v0, v55

    #@951
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@953
    .line 2491
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@956
    move-result-object v11

    #@957
    .line 2492
    const-string/jumbo v12, " for "

    #@95a
    .line 2491
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95d
    move-result-object v11

    #@95e
    move-object/from16 v0, v52

    #@960
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@963
    move-result-object v11

    #@964
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@967
    move-result-object v11

    #@968
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@96b
    .line 2493
    or-int/lit8 v47, v47, 0x1

    #@96d
    .line 2495
    :sswitch_2f
    and-int/lit8 v47, v47, -0x5

    #@96f
    .line 2496
    move-wide/from16 v0, v44

    #@971
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@974
    move-result-wide v6

    #@975
    .line 2497
    move/from16 v0, v40

    #@977
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@97a
    move-result v5

    #@97b
    .line 2498
    move/from16 v0, v34

    #@97d
    mul-int/lit16 v8, v0, 0x3e8

    #@97f
    move/from16 v0, v48

    #@981
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@984
    move-result v48

    #@985
    .line 2499
    move/from16 v0, v35

    #@987
    move/from16 v1, v50

    #@989
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@98c
    move-result v50

    #@98d
    .line 2443
    add-int/lit8 v2, v2, 0x1

    #@98f
    goto/16 :goto_e

    #@991
    .line 2450
    :sswitch_30
    const-wide/32 v44, 0xca800

    #@994
    const v40, 0x9000

    #@997
    const/16 v34, 0xc8

    #@999
    const/16 v35, 0x200

    #@99b
    goto :goto_f

    #@99c
    .line 2452
    :sswitch_31
    const-wide/32 v44, 0x2a3000

    #@99f
    const v40, 0x12000

    #@9a2
    const/16 v34, 0x320

    #@9a4
    const/16 v35, 0x300

    #@9a6
    goto :goto_f

    #@9a7
    .line 2454
    :sswitch_32
    const-wide/32 v44, 0x465000

    #@9aa
    const v40, 0x1e000

    #@9ad
    const/16 v34, 0x708

    #@9af
    const/16 v35, 0x3c0

    #@9b1
    goto :goto_f

    #@9b2
    .line 2456
    :sswitch_33
    const-wide/32 v44, 0x8ca000

    #@9b5
    const v40, 0x3c000

    #@9b8
    const/16 v34, 0xe10

    #@9ba
    const/16 v35, 0x540

    #@9bc
    goto/16 :goto_f

    #@9be
    .line 2458
    :sswitch_34
    const-wide/32 v44, 0x13c6800

    #@9c1
    const v40, 0x87000

    #@9c4
    const/16 v34, 0x1c20

    #@9c6
    const/16 v35, 0x800

    #@9c8
    goto/16 :goto_f

    #@9ca
    .line 2460
    :sswitch_35
    const-wide/32 v44, 0x2328000

    #@9cd
    const/high16 v40, 0xf0000

    #@9cf
    const/16 v34, 0x2ee0

    #@9d1
    const/16 v35, 0xac0

    #@9d3
    goto/16 :goto_f

    #@9d5
    .line 2462
    :sswitch_36
    const-wide/32 v44, 0x4fb0000

    #@9d8
    const/high16 v40, 0x220000

    #@9da
    const/16 v34, 0x4650

    #@9dc
    const/16 v35, 0x1040

    #@9de
    goto/16 :goto_f

    #@9e0
    .line 2464
    :sswitch_37
    const-wide/32 v44, 0x9900000

    #@9e3
    const/high16 v40, 0x220000

    #@9e5
    const/16 v34, 0x7530

    #@9e7
    const/16 v35, 0x1040

    #@9e9
    goto/16 :goto_f

    #@9eb
    .line 2466
    :sswitch_38
    const-wide/32 v44, 0x12980000

    #@9ee
    const/high16 v40, 0x880000

    #@9f0
    const v34, 0xea60

    #@9f3
    const/16 v35, 0x20c0

    #@9f5
    goto/16 :goto_f

    #@9f7
    .line 2468
    :sswitch_39
    const-wide/32 v44, 0x23100000

    #@9fa
    const/high16 v40, 0x880000

    #@9fc
    const v34, 0x1d4c0

    #@9ff
    const/16 v35, 0x20c0

    #@a01
    goto/16 :goto_f

    #@a03
    .line 2470
    :sswitch_3a
    const-wide/32 v44, 0x46200000

    #@a06
    const/high16 v40, 0x880000

    #@a08
    const v34, 0x2bf20

    #@a0b
    const/16 v35, 0x20c0

    #@a0d
    goto/16 :goto_f

    #@a0f
    .line 2472
    :sswitch_3b
    const-wide/32 v44, 0x46200000

    #@a12
    const/high16 v40, 0x2200000

    #@a14
    const v34, 0x2bf20

    #@a17
    const/16 v35, 0x41c0

    #@a19
    goto/16 :goto_f

    #@a1b
    .line 2474
    :sswitch_3c
    const-wide v44, 0x8c400000L

    #@a20
    const/high16 v40, 0x2200000

    #@a22
    const v34, 0x3a980

    #@a25
    const/16 v35, 0x41c0

    #@a27
    goto/16 :goto_f

    #@a29
    .line 2476
    :sswitch_3d
    const-wide v44, 0x118800000L

    #@a2e
    const/high16 v40, 0x2200000

    #@a30
    const v34, 0x75300

    #@a33
    const/16 v35, 0x41c0

    #@a35
    goto/16 :goto_f

    #@a37
    .line 2502
    .end local v34    # "BR":I
    .end local v35    # "D":I
    .end local v40    # "FS":I
    .end local v44    # "SR":J
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_13
    const/16 v46, 0x8

    #@a39
    .line 2503
    .restart local v46    # "blockSize":I
    const/16 v2, 0x8

    #@a3b
    move/from16 v0, v50

    #@a3d
    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    #@a40
    move-result v3

    #@a41
    .line 2504
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v2, 0x40

    #@a43
    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    #@a46
    move-result v5

    #@a47
    .line 2505
    const-wide/16 v16, 0x40

    #@a49
    move-wide/from16 v0, v16

    #@a4b
    invoke-static {v6, v7, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    #@a4e
    move-result-wide v6

    #@a4f
    .line 2510
    const/16 v30, 0x8

    #@a51
    const/16 v31, 0x8

    #@a53
    .line 2511
    const/16 v32, 0x1

    #@a55
    const/16 v33, 0x1

    #@a57
    move-object/from16 v24, p0

    #@a59
    move/from16 v25, v3

    #@a5b
    move/from16 v26, v3

    #@a5d
    move/from16 v27, v5

    #@a5f
    move-wide/from16 v28, v6

    #@a61
    .line 2507
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@a64
    goto/16 :goto_3

    #@a66
    .line 2512
    .end local v3    # "maxLengthInBlocks":I
    .end local v46    # "blockSize":I
    .end local v50    # "maxDim":I
    :cond_14
    const-string/jumbo v2, "video/hevc"

    #@a69
    move-object/from16 v0, v52

    #@a6b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a6e
    move-result v2

    #@a6f
    if-eqz v2, :cond_16

    #@a71
    .line 2514
    const/16 v5, 0x240

    #@a73
    .line 2515
    const/16 v2, 0x21c0

    #@a75
    int-to-long v6, v2

    #@a76
    .line 2516
    const v48, 0x1f400

    #@a79
    .line 2517
    const/4 v2, 0x0

    #@a7a
    move-object/from16 v0, v56

    #@a7c
    array-length v4, v0

    #@a7d
    :goto_10
    if-ge v2, v4, :cond_15

    #@a7f
    aget-object v55, v56, v2

    #@a81
    .line 2518
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v38, 0x0

    #@a83
    .line 2519
    .local v38, "FR":D
    const/16 v40, 0x0

    #@a85
    .line 2520
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    #@a87
    .line 2521
    .restart local v34    # "BR":I
    move-object/from16 v0, v55

    #@a89
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@a8b
    sparse-switch v8, :sswitch_data_9

    #@a8e
    .line 2574
    const-string/jumbo v8, "VideoCapabilities"

    #@a91
    new-instance v11, Ljava/lang/StringBuilder;

    #@a93
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a96
    const-string/jumbo v12, "Unrecognized level "

    #@a99
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9c
    move-result-object v11

    #@a9d
    .line 2575
    move-object/from16 v0, v55

    #@a9f
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@aa1
    .line 2574
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa4
    move-result-object v11

    #@aa5
    .line 2575
    const-string/jumbo v12, " for "

    #@aa8
    .line 2574
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aab
    move-result-object v11

    #@aac
    move-object/from16 v0, v52

    #@aae
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab1
    move-result-object v11

    #@ab2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab5
    move-result-object v11

    #@ab6
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ab9
    .line 2576
    or-int/lit8 v47, v47, 0x1

    #@abb
    .line 2578
    :goto_11
    move-object/from16 v0, v55

    #@abd
    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@abf
    sparse-switch v8, :sswitch_data_a

    #@ac2
    .line 2584
    const-string/jumbo v8, "VideoCapabilities"

    #@ac5
    new-instance v11, Ljava/lang/StringBuilder;

    #@ac7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@aca
    const-string/jumbo v12, "Unrecognized profile "

    #@acd
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad0
    move-result-object v11

    #@ad1
    .line 2585
    move-object/from16 v0, v55

    #@ad3
    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@ad5
    .line 2584
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad8
    move-result-object v11

    #@ad9
    .line 2585
    const-string/jumbo v12, " for "

    #@adc
    .line 2584
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@adf
    move-result-object v11

    #@ae0
    move-object/from16 v0, v52

    #@ae2
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae5
    move-result-object v11

    #@ae6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae9
    move-result-object v11

    #@aea
    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@aed
    .line 2586
    or-int/lit8 v47, v47, 0x1

    #@aef
    .line 2596
    :sswitch_3e
    shr-int/lit8 v40, v40, 0x6

    #@af1
    .line 2597
    and-int/lit8 v47, v47, -0x5

    #@af3
    .line 2598
    move/from16 v0, v40

    #@af5
    int-to-double v0, v0

    #@af6
    move-wide/from16 v16, v0

    #@af8
    mul-double v16, v16, v38

    #@afa
    move-wide/from16 v0, v16

    #@afc
    double-to-int v8, v0

    #@afd
    int-to-long v0, v8

    #@afe
    move-wide/from16 v16, v0

    #@b00
    move-wide/from16 v0, v16

    #@b02
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@b05
    move-result-wide v6

    #@b06
    .line 2599
    move/from16 v0, v40

    #@b08
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@b0b
    move-result v5

    #@b0c
    .line 2600
    move/from16 v0, v34

    #@b0e
    mul-int/lit16 v8, v0, 0x3e8

    #@b10
    move/from16 v0, v48

    #@b12
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@b15
    move-result v48

    #@b16
    .line 2517
    add-int/lit8 v2, v2, 0x1

    #@b18
    goto/16 :goto_10

    #@b1a
    .line 2528
    :sswitch_3f
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    #@b1c
    const v40, 0x9000

    #@b1f
    const/16 v34, 0x80

    #@b21
    goto :goto_11

    #@b22
    .line 2531
    :sswitch_40
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b24
    const v40, 0x1e000

    #@b27
    const/16 v34, 0x5dc

    #@b29
    goto :goto_11

    #@b2a
    .line 2534
    :sswitch_41
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b2c
    const v40, 0x3c000

    #@b2f
    const/16 v34, 0xbb8

    #@b31
    goto :goto_11

    #@b32
    .line 2537
    :sswitch_42
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b34
    const v40, 0x87000

    #@b37
    const/16 v34, 0x1770

    #@b39
    goto :goto_11

    #@b3a
    .line 2540
    :sswitch_43
    const-wide v38, 0x4040e00000000000L    # 33.75

    #@b3f
    const/high16 v40, 0xf0000

    #@b41
    const/16 v34, 0x2710

    #@b43
    goto/16 :goto_11

    #@b45
    .line 2542
    :sswitch_44
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b47
    const/high16 v40, 0x220000

    #@b49
    const/16 v34, 0x2ee0

    #@b4b
    goto/16 :goto_11

    #@b4d
    .line 2544
    :sswitch_45
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b4f
    const/high16 v40, 0x220000

    #@b51
    const/16 v34, 0x7530

    #@b53
    goto/16 :goto_11

    #@b55
    .line 2546
    :sswitch_46
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@b57
    const/high16 v40, 0x220000

    #@b59
    const/16 v34, 0x4e20

    #@b5b
    goto/16 :goto_11

    #@b5d
    .line 2548
    :sswitch_47
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@b5f
    const/high16 v40, 0x220000

    #@b61
    const v34, 0xc350

    #@b64
    goto/16 :goto_11

    #@b66
    .line 2550
    :sswitch_48
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b68
    const/high16 v40, 0x880000

    #@b6a
    const/16 v34, 0x61a8

    #@b6c
    goto/16 :goto_11

    #@b6e
    .line 2552
    :sswitch_49
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b70
    const/high16 v40, 0x880000

    #@b72
    const v34, 0x186a0

    #@b75
    goto/16 :goto_11

    #@b77
    .line 2554
    :sswitch_4a
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@b79
    const/high16 v40, 0x880000

    #@b7b
    const v34, 0x9c40

    #@b7e
    goto/16 :goto_11

    #@b80
    .line 2556
    :sswitch_4b
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@b82
    const/high16 v40, 0x880000

    #@b84
    const v34, 0x27100

    #@b87
    goto/16 :goto_11

    #@b89
    .line 2558
    :sswitch_4c
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    #@b8b
    const/high16 v40, 0x880000

    #@b8d
    const v34, 0xea60

    #@b90
    goto/16 :goto_11

    #@b92
    .line 2560
    :sswitch_4d
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    #@b94
    const/high16 v40, 0x880000

    #@b96
    const v34, 0x3a980

    #@b99
    goto/16 :goto_11

    #@b9b
    .line 2562
    :sswitch_4e
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@b9d
    const/high16 v40, 0x2200000

    #@b9f
    const v34, 0xea60

    #@ba2
    goto/16 :goto_11

    #@ba4
    .line 2564
    :sswitch_4f
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    #@ba6
    const/high16 v40, 0x2200000

    #@ba8
    const v34, 0x3a980

    #@bab
    goto/16 :goto_11

    #@bad
    .line 2566
    :sswitch_50
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@baf
    const/high16 v40, 0x2200000

    #@bb1
    const v34, 0x1d4c0

    #@bb4
    goto/16 :goto_11

    #@bb6
    .line 2568
    :sswitch_51
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    #@bb8
    const/high16 v40, 0x2200000

    #@bba
    const v34, 0x75300

    #@bbd
    goto/16 :goto_11

    #@bbf
    .line 2570
    :sswitch_52
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    #@bc1
    const/high16 v40, 0x2200000

    #@bc3
    const v34, 0x3a980

    #@bc6
    goto/16 :goto_11

    #@bc8
    .line 2572
    :sswitch_53
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    #@bca
    const/high16 v40, 0x2200000

    #@bcc
    const v34, 0xc3500

    #@bcf
    goto/16 :goto_11

    #@bd1
    .line 2603
    .end local v34    # "BR":I
    .end local v38    # "FR":D
    .end local v40    # "FS":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_15
    mul-int/lit8 v2, v5, 0x8

    #@bd3
    int-to-double v0, v2

    #@bd4
    move-wide/from16 v16, v0

    #@bd6
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@bd9
    move-result-wide v16

    #@bda
    move-wide/from16 v0, v16

    #@bdc
    double-to-int v3, v0

    #@bdd
    .line 2607
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v30, 0x8

    #@bdf
    const/16 v31, 0x8

    #@be1
    .line 2608
    const/16 v32, 0x1

    #@be3
    const/16 v33, 0x1

    #@be5
    move-object/from16 v24, p0

    #@be7
    move/from16 v25, v3

    #@be9
    move/from16 v26, v3

    #@beb
    move/from16 v27, v5

    #@bed
    move-wide/from16 v28, v6

    #@bef
    .line 2604
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@bf2
    goto/16 :goto_3

    #@bf4
    .line 2610
    .end local v3    # "maxLengthInBlocks":I
    :cond_16
    const-string/jumbo v2, "VideoCapabilities"

    #@bf7
    new-instance v4, Ljava/lang/StringBuilder;

    #@bf9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bfc
    const-string/jumbo v8, "Unsupported mime "

    #@bff
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c02
    move-result-object v4

    #@c03
    move-object/from16 v0, v52

    #@c05
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c08
    move-result-object v4

    #@c09
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0c
    move-result-object v4

    #@c0d
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c10
    .line 2613
    const v48, 0xfa00

    #@c13
    .line 2614
    const/16 v47, 0x6

    #@c15
    goto/16 :goto_3

    #@c17
    .line 2045
    nop

    #@c18
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch

    #@c5e
    .line 2085
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_14
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_12
        0x20 -> :sswitch_13
        0x40 -> :sswitch_13
    .end sparse-switch

    #@c7c
    .line 2130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    #@c8c
    .line 2132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    #@c92
    .line 2143
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@ca0
    .line 2199
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_25
        0x4 -> :sswitch_25
        0x8 -> :sswitch_25
        0x10 -> :sswitch_25
        0x20 -> :sswitch_25
        0x40 -> :sswitch_25
        0x80 -> :sswitch_25
        0x100 -> :sswitch_25
        0x200 -> :sswitch_25
        0x400 -> :sswitch_25
        0x800 -> :sswitch_25
        0x1000 -> :sswitch_25
        0x2000 -> :sswitch_25
        0x4000 -> :sswitch_25
        0x8000 -> :sswitch_1e
    .end sparse-switch

    #@ce2
    .line 2201
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_19
        0x10 -> :sswitch_1a
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1c
        0x100 -> :sswitch_1d
    .end sparse-switch

    #@d04
    .line 2228
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_1f
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_20
        0x10 -> :sswitch_21
        0x18 -> :sswitch_22
        0x20 -> :sswitch_23
        0x80 -> :sswitch_24
    .end sparse-switch

    #@d22
    .line 2311
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_28
        0x4 -> :sswitch_29
        0x8 -> :sswitch_2a
        0x10 -> :sswitch_2b
        0x20 -> :sswitch_2c
        0x40 -> :sswitch_2d
        0x80 -> :sswitch_2e
    .end sparse-switch

    #@d44
    .line 2350
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_26
        0x4 -> :sswitch_26
        0x8 -> :sswitch_26
        0x10 -> :sswitch_26
        0x20 -> :sswitch_26
        0x40 -> :sswitch_26
        0x80 -> :sswitch_26
        0x100 -> :sswitch_26
    .end sparse-switch

    #@d6a
    .line 2411
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    #@d7e
    .line 2422
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    #@d84
    .line 2448
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_31
        0x4 -> :sswitch_32
        0x8 -> :sswitch_33
        0x10 -> :sswitch_34
        0x20 -> :sswitch_35
        0x40 -> :sswitch_36
        0x80 -> :sswitch_37
        0x100 -> :sswitch_38
        0x200 -> :sswitch_39
        0x400 -> :sswitch_3a
        0x800 -> :sswitch_3b
        0x1000 -> :sswitch_3c
        0x2000 -> :sswitch_3d
    .end sparse-switch

    #@dbe
    .line 2482
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2f
        0x8 -> :sswitch_2f
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_2f
    .end sparse-switch

    #@dd8
    .line 2521
    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3f
        0x4 -> :sswitch_40
        0x8 -> :sswitch_40
        0x10 -> :sswitch_41
        0x20 -> :sswitch_41
        0x40 -> :sswitch_42
        0x80 -> :sswitch_42
        0x100 -> :sswitch_43
        0x200 -> :sswitch_43
        0x400 -> :sswitch_44
        0x800 -> :sswitch_45
        0x1000 -> :sswitch_46
        0x2000 -> :sswitch_47
        0x4000 -> :sswitch_48
        0x8000 -> :sswitch_49
        0x10000 -> :sswitch_4a
        0x20000 -> :sswitch_4b
        0x40000 -> :sswitch_4c
        0x80000 -> :sswitch_4d
        0x100000 -> :sswitch_4e
        0x200000 -> :sswitch_4f
        0x400000 -> :sswitch_50
        0x800000 -> :sswitch_51
        0x1000000 -> :sswitch_52
        0x2000000 -> :sswitch_53
    .end sparse-switch

    #@e42
    .line 2578
    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3e
        0x1000 -> :sswitch_3e
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .locals 8
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

    #@0
    .prologue
    .line 2010
    move/from16 v0, p10

    #@2
    move/from16 v1, p11

    #@4
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    #@7
    .line 2012
    const/4 v2, 0x1

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@13
    move-result-object v5

    #@14
    .line 2013
    const-wide/16 v2, 0x1

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@21
    move-result-object v6

    #@22
    .line 2015
    new-instance v2, Landroid/util/Rational;

    #@24
    const/4 v3, 0x1

    #@25
    invoke-direct {v2, v3, p4}, Landroid/util/Rational;-><init>(II)V

    #@28
    .line 2016
    new-instance v3, Landroid/util/Rational;

    #@2a
    const/4 v4, 0x1

    #@2b
    invoke-direct {v3, p3, v4}, Landroid/util/Rational;-><init>(II)V

    #@2e
    .line 2014
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@31
    move-result-object v7

    #@32
    move-object v2, p0

    #@33
    move/from16 v3, p8

    #@35
    move/from16 v4, p9

    #@37
    .line 2011
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    #@3a
    .line 2018
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@3c
    .line 2019
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@3e
    div-int v3, v3, p8

    #@40
    invoke-static {p1, v3}, Landroid/media/Utils;->divUp(II)I

    #@43
    move-result v3

    #@44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v3

    #@48
    .line 2020
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@4a
    div-int v4, v4, p8

    #@4c
    div-int v4, p3, v4

    #@4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v4

    #@52
    .line 2018
    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@55
    move-result-object v2

    #@56
    .line 2017
    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@58
    .line 2022
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@5a
    .line 2023
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@5c
    div-int v3, v3, p9

    #@5e
    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    #@61
    move-result v3

    #@62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v3

    #@66
    .line 2024
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@68
    div-int v4, v4, p9

    #@6a
    div-int v4, p4, v4

    #@6c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v4

    #@70
    .line 2022
    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@73
    move-result-object v2

    #@74
    .line 2021
    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@76
    .line 2009
    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 12
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    #@0
    .prologue
    .line 1998
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x1

    #@2
    move-object v0, p0

    #@3
    move v3, p1

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    move-wide/from16 v6, p4

    #@8
    move/from16 v8, p6

    #@a
    move/from16 v9, p7

    #@c
    move/from16 v10, p8

    #@e
    move/from16 v11, p9

    #@10
    .line 1997
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    #@13
    .line 1996
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 1571
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@2
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    #@5
    .line 1572
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    #@8
    .line 1573
    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 16
    .param p0, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 1674
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v11

    #@4
    .line 1676
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v12, "block-size"

    #@7
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v12

    #@b
    new-instance v13, Landroid/util/Size;

    #@d
    const/16 v14, 0x8

    #@f
    const/16 v15, 0x8

    #@11
    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    #@14
    invoke-static {v12, v13}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    #@17
    move-result-object v8

    #@18
    .line 1677
    .local v8, "blockSize":Landroid/util/Size;
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    #@1b
    move-result v12

    #@1c
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    #@1f
    move-result v13

    #@20
    mul-int v1, v12, v13

    #@22
    .line 1679
    .local v1, "BS":I
    const-string/jumbo v12, "block-count-range"

    #@25
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v12

    #@29
    const/4 v13, 0x0

    #@2a
    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@2d
    move-result-object v9

    #@2e
    .line 1680
    .local v9, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v9, :cond_0

    #@30
    const/4 v3, 0x0

    #@31
    .line 1683
    .local v3, "FS":I
    :goto_0
    const-string/jumbo v12, "blocks-per-second-range"

    #@34
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v12

    #@38
    const/4 v13, 0x0

    #@39
    invoke-static {v12, v13}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@3c
    move-result-object v7

    #@3d
    .line 1684
    .local v7, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    #@3f
    const-wide/16 v4, 0x0

    #@41
    .line 1687
    .local v4, "SR":J
    :goto_1
    const-string/jumbo v12, "size-range"

    #@44
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v12

    #@48
    invoke-static {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    #@4b
    move-result-object v10

    #@4c
    .line 1688
    .local v10, "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v10, :cond_2

    #@4e
    const/4 v2, 0x0

    #@4f
    .line 1691
    .local v2, "D":I
    :goto_2
    const-string/jumbo v12, "bitrate-range"

    #@52
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v12

    #@56
    const/4 v13, 0x0

    #@57
    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@5a
    move-result-object v6

    #@5b
    .line 1692
    .local v6, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v6, :cond_3

    #@5d
    const/4 v0, 0x0

    #@5e
    .line 1694
    .local v0, "BR":I
    :goto_3
    const-wide/32 v12, 0xca800

    #@61
    cmp-long v12, v4, v12

    #@63
    if-gtz v12, :cond_4

    #@65
    const v12, 0x9000

    #@68
    if-gt v3, v12, :cond_4

    #@6a
    const/16 v12, 0xc8

    #@6c
    if-gt v0, v12, :cond_4

    #@6e
    const/16 v12, 0x200

    #@70
    if-gt v2, v12, :cond_4

    #@72
    .line 1695
    const/4 v12, 0x1

    #@73
    return v12

    #@74
    .line 1680
    .end local v0    # "BR":I
    .end local v2    # "D":I
    .end local v3    # "FS":I
    .end local v4    # "SR":J
    .end local v6    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v10    # "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@77
    move-result-object v12

    #@78
    check-cast v12, Ljava/lang/Integer;

    #@7a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@7d
    move-result v12

    #@7e
    mul-int v3, v1, v12

    #@80
    .restart local v3    # "FS":I
    goto :goto_0

    #@81
    .line 1684
    .restart local v7    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_1
    int-to-long v14, v1

    #@82
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@85
    move-result-object v12

    #@86
    check-cast v12, Ljava/lang/Long;

    #@88
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    #@8b
    move-result-wide v12

    #@8c
    mul-long v4, v14, v12

    #@8e
    .restart local v4    # "SR":J
    goto :goto_1

    #@8f
    .line 1689
    .restart local v10    # "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_2
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@91
    check-cast v12, Landroid/util/Range;

    #@93
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@96
    move-result-object v12

    #@97
    check-cast v12, Ljava/lang/Integer;

    #@99
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@9c
    move-result v13

    #@9d
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9f
    check-cast v12, Landroid/util/Range;

    #@a1
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@a4
    move-result-object v12

    #@a5
    check-cast v12, Ljava/lang/Integer;

    #@a7
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@aa
    move-result v12

    #@ab
    .line 1688
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    #@ae
    move-result v2

    #@af
    .restart local v2    # "D":I
    goto :goto_2

    #@b0
    .line 1692
    .restart local v6    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@b3
    move-result-object v12

    #@b4
    check-cast v12, Ljava/lang/Integer;

    #@b6
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@b9
    move-result v12

    #@ba
    const/16 v13, 0x3e8

    #@bc
    invoke-static {v12, v13}, Landroid/media/Utils;->divUp(II)I

    #@bf
    move-result v0

    #@c0
    .restart local v0    # "BR":I
    goto :goto_3

    #@c1
    .line 1696
    :cond_4
    const-wide/32 v12, 0x2a3000

    #@c4
    cmp-long v12, v4, v12

    #@c6
    if-gtz v12, :cond_5

    #@c8
    const v12, 0x12000

    #@cb
    if-gt v3, v12, :cond_5

    #@cd
    const/16 v12, 0x320

    #@cf
    if-gt v0, v12, :cond_5

    #@d1
    const/16 v12, 0x300

    #@d3
    if-gt v2, v12, :cond_5

    #@d5
    .line 1697
    const/4 v12, 0x2

    #@d6
    return v12

    #@d7
    .line 1698
    :cond_5
    const-wide/32 v12, 0x465000

    #@da
    cmp-long v12, v4, v12

    #@dc
    if-gtz v12, :cond_6

    #@de
    const v12, 0x1e000

    #@e1
    if-gt v3, v12, :cond_6

    #@e3
    const/16 v12, 0x708

    #@e5
    if-gt v0, v12, :cond_6

    #@e7
    const/16 v12, 0x3c0

    #@e9
    if-gt v2, v12, :cond_6

    #@eb
    .line 1699
    const/4 v12, 0x4

    #@ec
    return v12

    #@ed
    .line 1700
    :cond_6
    const-wide/32 v12, 0x8ca000

    #@f0
    cmp-long v12, v4, v12

    #@f2
    if-gtz v12, :cond_7

    #@f4
    const v12, 0x3c000

    #@f7
    if-gt v3, v12, :cond_7

    #@f9
    const/16 v12, 0xe10

    #@fb
    if-gt v0, v12, :cond_7

    #@fd
    const/16 v12, 0x540

    #@ff
    if-gt v2, v12, :cond_7

    #@101
    .line 1701
    const/16 v12, 0x8

    #@103
    return v12

    #@104
    .line 1702
    :cond_7
    const-wide/32 v12, 0x13c6800

    #@107
    cmp-long v12, v4, v12

    #@109
    if-gtz v12, :cond_8

    #@10b
    const v12, 0x87000

    #@10e
    if-gt v3, v12, :cond_8

    #@110
    const/16 v12, 0x1c20

    #@112
    if-gt v0, v12, :cond_8

    #@114
    const/16 v12, 0x800

    #@116
    if-gt v2, v12, :cond_8

    #@118
    .line 1703
    const/16 v12, 0x10

    #@11a
    return v12

    #@11b
    .line 1704
    :cond_8
    const-wide/32 v12, 0x2328000

    #@11e
    cmp-long v12, v4, v12

    #@120
    if-gtz v12, :cond_9

    #@122
    const/high16 v12, 0xf0000

    #@124
    if-gt v3, v12, :cond_9

    #@126
    const/16 v12, 0x2ee0

    #@128
    if-gt v0, v12, :cond_9

    #@12a
    const/16 v12, 0xac0

    #@12c
    if-gt v2, v12, :cond_9

    #@12e
    .line 1705
    const/16 v12, 0x20

    #@130
    return v12

    #@131
    .line 1706
    :cond_9
    const-wide/32 v12, 0x4fb0000

    #@134
    cmp-long v12, v4, v12

    #@136
    if-gtz v12, :cond_a

    #@138
    const/high16 v12, 0x220000

    #@13a
    if-gt v3, v12, :cond_a

    #@13c
    const/16 v12, 0x4650

    #@13e
    if-gt v0, v12, :cond_a

    #@140
    const/16 v12, 0x1040

    #@142
    if-gt v2, v12, :cond_a

    #@144
    .line 1707
    const/16 v12, 0x40

    #@146
    return v12

    #@147
    .line 1708
    :cond_a
    const-wide/32 v12, 0x9900000

    #@14a
    cmp-long v12, v4, v12

    #@14c
    if-gtz v12, :cond_b

    #@14e
    const/high16 v12, 0x220000

    #@150
    if-gt v3, v12, :cond_b

    #@152
    const/16 v12, 0x7530

    #@154
    if-gt v0, v12, :cond_b

    #@156
    const/16 v12, 0x1040

    #@158
    if-gt v2, v12, :cond_b

    #@15a
    .line 1709
    const/16 v12, 0x80

    #@15c
    return v12

    #@15d
    .line 1710
    :cond_b
    const-wide/32 v12, 0x12980000

    #@160
    cmp-long v12, v4, v12

    #@162
    if-gtz v12, :cond_c

    #@164
    const/high16 v12, 0x880000

    #@166
    if-gt v3, v12, :cond_c

    #@168
    const v12, 0xea60

    #@16b
    if-gt v0, v12, :cond_c

    #@16d
    const/16 v12, 0x20c0

    #@16f
    if-gt v2, v12, :cond_c

    #@171
    .line 1711
    const/16 v12, 0x100

    #@173
    return v12

    #@174
    .line 1712
    :cond_c
    const-wide/32 v12, 0x23100000

    #@177
    cmp-long v12, v4, v12

    #@179
    if-gtz v12, :cond_d

    #@17b
    const/high16 v12, 0x880000

    #@17d
    if-gt v3, v12, :cond_d

    #@17f
    const v12, 0x1d4c0

    #@182
    if-gt v0, v12, :cond_d

    #@184
    const/16 v12, 0x20c0

    #@186
    if-gt v2, v12, :cond_d

    #@188
    .line 1713
    const/16 v12, 0x200

    #@18a
    return v12

    #@18b
    .line 1714
    :cond_d
    const-wide/32 v12, 0x46200000

    #@18e
    cmp-long v12, v4, v12

    #@190
    if-gtz v12, :cond_e

    #@192
    const/high16 v12, 0x880000

    #@194
    if-gt v3, v12, :cond_e

    #@196
    const v12, 0x2bf20

    #@199
    if-gt v0, v12, :cond_e

    #@19b
    const/16 v12, 0x20c0

    #@19d
    if-gt v2, v12, :cond_e

    #@19f
    .line 1715
    const/16 v12, 0x400

    #@1a1
    return v12

    #@1a2
    .line 1716
    :cond_e
    const-wide/32 v12, 0x46200000

    #@1a5
    cmp-long v12, v4, v12

    #@1a7
    if-gtz v12, :cond_f

    #@1a9
    const/high16 v12, 0x2200000

    #@1ab
    if-gt v3, v12, :cond_f

    #@1ad
    const v12, 0x2bf20

    #@1b0
    if-gt v0, v12, :cond_f

    #@1b2
    const/16 v12, 0x41c0

    #@1b4
    if-gt v2, v12, :cond_f

    #@1b6
    .line 1717
    const/16 v12, 0x800

    #@1b8
    return v12

    #@1b9
    .line 1718
    :cond_f
    const-wide v12, 0x8c400000L

    #@1be
    cmp-long v12, v4, v12

    #@1c0
    if-gtz v12, :cond_10

    #@1c2
    const/high16 v12, 0x2200000

    #@1c4
    if-gt v3, v12, :cond_10

    #@1c6
    const v12, 0x3a980

    #@1c9
    if-gt v0, v12, :cond_10

    #@1cb
    const/16 v12, 0x41c0

    #@1cd
    if-gt v2, v12, :cond_10

    #@1cf
    .line 1719
    const/16 v12, 0x1000

    #@1d1
    return v12

    #@1d2
    .line 1720
    :cond_10
    const-wide v12, 0x118800000L

    #@1d7
    cmp-long v12, v4, v12

    #@1d9
    if-gtz v12, :cond_11

    #@1db
    const/high16 v12, 0x2200000

    #@1dd
    if-gt v3, v12, :cond_11

    #@1df
    const v12, 0x75300

    #@1e2
    if-gt v0, v12, :cond_11

    #@1e4
    const/16 v12, 0x41c0

    #@1e6
    if-gt v2, v12, :cond_11

    #@1e8
    .line 1721
    const/16 v12, 0x2000

    #@1ea
    return v12

    #@1eb
    .line 1723
    :cond_11
    const/16 v12, 0x2000

    #@1ed
    return v12
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1429
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    #@3
    move-result-object v2

    #@4
    .line 1430
    .local v2, "size":Landroid/util/Size;
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/Range;

    #@c
    .line 1431
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@13
    move-result v4

    #@14
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    #@17
    move-result v3

    #@18
    int-to-double v4, v3

    #@19
    .line 1432
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    #@1c
    move-result v3

    #@1d
    const/4 v6, 0x1

    #@1e
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v3

    #@22
    int-to-double v6, v3

    #@23
    .line 1431
    div-double/2addr v4, v6

    #@24
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@27
    move-result-object v1

    #@28
    .line 1433
    .local v1, "ratio":Ljava/lang/Double;
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/Long;

    #@2e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@31
    move-result-wide v4

    #@32
    long-to-double v4, v4

    #@33
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@36
    move-result-wide v6

    #@37
    mul-double/2addr v4, v6

    #@38
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/lang/Long;

    #@42
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@45
    move-result-wide v6

    #@46
    long-to-double v6, v6

    #@47
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@4a
    move-result-wide v8

    #@4b
    mul-double/2addr v6, v8

    #@4c
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@53
    move-result-object v3

    #@54
    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1414
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    #@3
    move-result v5

    #@4
    .line 1415
    .local v5, "targetBlockCount":I
    const/4 v0, 0x0

    #@5
    .line 1416
    .local v0, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    #@8
    .line 1417
    .local v2, "minDiff":I
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@a
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    .end local v0    # "closestSize":Landroid/util/Size;
    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/util/Size;

    #@1e
    .line 1419
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    #@21
    move-result v6

    #@22
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    #@25
    move-result v7

    #@26
    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    #@29
    move-result v6

    #@2a
    .line 1418
    sub-int v6, v5, v6

    #@2c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@2f
    move-result v1

    #@30
    .line 1420
    .local v1, "diff":I
    if-ge v1, v2, :cond_0

    #@32
    .line 1421
    move v2, v1

    #@33
    .line 1422
    move-object v0, v3

    #@34
    .local v0, "closestSize":Landroid/util/Size;
    goto :goto_0

    #@35
    .line 1425
    .end local v0    # "closestSize":Landroid/util/Size;
    .end local v1    # "diff":I
    .end local v3    # "size":Landroid/util/Size;
    :cond_1
    return-object v0
.end method

.method private getBlockCount(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1409
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@2
    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@8
    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    #@b
    move-result v1

    #@c
    mul-int/2addr v0, v1

    #@d
    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1631
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    #@2
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1632
    .local v5, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string/jumbo v3, "measured-frame-rate-"

    #@8
    .line 1633
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    .line 1634
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 1636
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v10, "measured-frame-rate-"

    #@1f
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v10

    #@23
    if-eqz v10, :cond_0

    #@25
    .line 1639
    const-string/jumbo v10, "measured-frame-rate-"

    #@28
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@2b
    move-result v10

    #@2c
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 1640
    .local v8, "subKey":Ljava/lang/String;
    const-string/jumbo v10, "-"

    #@33
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    .line 1641
    .local v9, "temp":[Ljava/lang/String;
    array-length v10, v9

    #@38
    const/4 v11, 0x5

    #@39
    if-ne v10, v11, :cond_0

    #@3b
    .line 1644
    const/4 v10, 0x3

    #@3c
    aget-object v7, v9, v10

    #@3e
    .line 1645
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v10, 0x0

    #@3f
    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    #@42
    move-result-object v6

    #@43
    .line 1646
    .local v6, "size":Landroid/util/Size;
    if-eqz v6, :cond_0

    #@45
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@48
    move-result v10

    #@49
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@4c
    move-result v11

    #@4d
    mul-int/2addr v10, v11

    #@4e
    if-lez v10, :cond_0

    #@50
    .line 1649
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    move-result-object v10

    #@54
    const/4 v11, 0x0

    #@55
    invoke-static {v10, v11}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@58
    move-result-object v4

    #@59
    .line 1650
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v4, :cond_0

    #@5b
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@5e
    move-result-object v10

    #@5f
    check-cast v10, Ljava/lang/Long;

    #@61
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@64
    move-result-wide v10

    #@65
    const-wide/16 v12, 0x0

    #@67
    cmp-long v10, v10, v12

    #@69
    if-ltz v10, :cond_0

    #@6b
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, Ljava/lang/Long;

    #@71
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@74
    move-result-wide v10

    #@75
    const-wide/16 v12, 0x0

    #@77
    cmp-long v10, v10, v12

    #@79
    if-ltz v10, :cond_0

    #@7b
    .line 1653
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    goto :goto_0

    #@7f
    .line 1655
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "subKey":Ljava/lang/String;
    .end local v9    # "temp":[Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private initWithPlatformLimits()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 1606
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@7
    .line 1608
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@d
    .line 1609
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@13
    .line 1610
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@19
    .line 1612
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@1f
    .line 1613
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@25
    .line 1616
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2b
    .line 1617
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@31
    .line 1619
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@37
    .line 1620
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@3d
    .line 1623
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@3f
    .line 1624
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@41
    .line 1625
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@43
    .line 1626
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@45
    .line 1627
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v0

    #@53
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@55
    .line 1605
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 25
    .param p1, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v21

    #@4
    .line 1728
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Landroid/util/Size;

    #@6
    move-object/from16 v0, p0

    #@8
    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@a
    move-object/from16 v0, p0

    #@c
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@e
    move-object/from16 v0, v16

    #@10
    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    #@13
    .line 1729
    .local v16, "blockSize":Landroid/util/Size;
    new-instance v12, Landroid/util/Size;

    #@15
    move-object/from16 v0, p0

    #@17
    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@19
    move-object/from16 v0, p0

    #@1b
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@1d
    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    #@20
    .line 1730
    .local v12, "alignment":Landroid/util/Size;
    const/16 v17, 0x0

    #@22
    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    #@24
    .local v24, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    #@26
    .line 1731
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    #@28
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    #@29
    .line 1732
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    #@2a
    .line 1733
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    #@2c
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v15, 0x0

    #@2d
    .line 1735
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "block-size"

    #@30
    move-object/from16 v0, v21

    #@32
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    move-object/from16 v0, v16

    #@38
    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    #@3b
    move-result-object v16

    #@3c
    .line 1736
    const-string/jumbo v2, "alignment"

    #@3f
    move-object/from16 v0, v21

    #@41
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    #@48
    move-result-object v12

    #@49
    .line 1737
    const-string/jumbo v2, "block-count-range"

    #@4c
    move-object/from16 v0, v21

    #@4e
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    const/4 v3, 0x0

    #@53
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@56
    move-result-object v17

    #@57
    .line 1739
    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "blocks-per-second-range"

    #@5a
    move-object/from16 v0, v21

    #@5c
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    const/4 v3, 0x0

    #@61
    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@64
    move-result-object v14

    #@65
    .line 1740
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, v21

    #@69
    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    #@6c
    move-result-object v2

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@71
    .line 1742
    const-string/jumbo v2, "size-range"

    #@74
    move-object/from16 v0, v21

    #@76
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v2

    #@7a
    invoke-static {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    #@7d
    move-result-object v23

    #@7e
    .line 1743
    .local v23, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v23, :cond_0

    #@80
    .line 1744
    move-object/from16 v0, v23

    #@82
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@84
    move-object/from16 v24, v0

    #@86
    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v24, Landroid/util/Range;

    #@88
    .line 1745
    .local v24, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, v23

    #@8a
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@8c
    move-object/from16 v20, v0

    #@8e
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v20, Landroid/util/Range;

    #@90
    .line 1751
    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v2, "feature-can-swap-width-height"

    #@93
    move-object/from16 v0, v21

    #@95
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_1

    #@9b
    .line 1752
    if-eqz v24, :cond_d

    #@9d
    .line 1754
    invoke-virtual/range {v24 .. v24}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@a0
    move-result-object v2

    #@a1
    check-cast v2, Ljava/lang/Integer;

    #@a3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@a6
    move-result v3

    #@a7
    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@aa
    move-result-object v2

    #@ab
    check-cast v2, Ljava/lang/Integer;

    #@ad
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@b0
    move-result v2

    #@b1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@b4
    move-result v2

    #@b5
    .line 1753
    move-object/from16 v0, p0

    #@b7
    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@b9
    .line 1755
    move-object/from16 v0, v24

    #@bb
    move-object/from16 v1, v20

    #@bd
    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    #@c0
    move-result-object v20

    #@c1
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v24, v20

    #@c3
    .line 1765
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    const-string/jumbo v2, "block-aspect-ratio-range"

    #@c6
    move-object/from16 v0, v21

    #@c8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    move-result-object v2

    #@cc
    const/4 v3, 0x0

    #@cd
    .line 1764
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@d0
    move-result-object v22

    #@d1
    .line 1767
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    #@d4
    move-object/from16 v0, v21

    #@d6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    move-result-object v2

    #@da
    const/4 v3, 0x0

    #@db
    .line 1766
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@de
    move-result-object v15

    #@df
    .line 1768
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "frame-rate-range"

    #@e2
    move-object/from16 v0, v21

    #@e4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    move-result-object v2

    #@e8
    const/4 v3, 0x0

    #@e9
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@ec
    move-result-object v19

    #@ed
    .line 1769
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_2

    #@ef
    .line 1771
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@f2
    move-result-object v2

    #@f3
    move-object/from16 v0, v19

    #@f5
    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@f8
    move-result-object v19

    #@f9
    .line 1778
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    const-string/jumbo v2, "bitrate-range"

    #@fc
    move-object/from16 v0, v21

    #@fe
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@101
    move-result-object v2

    #@102
    const/4 v3, 0x0

    #@103
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@106
    move-result-object v13

    #@107
    .line 1779
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_3

    #@109
    .line 1781
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@10c
    move-result-object v2

    #@10d
    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@110
    move-result-object v13

    #@111
    .line 1790
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@114
    move-result v2

    #@115
    const-string/jumbo v3, "block-size width must be power of two"

    #@118
    .line 1789
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@11b
    .line 1792
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@11e
    move-result v2

    #@11f
    const-string/jumbo v3, "block-size height must be power of two"

    #@122
    .line 1791
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@125
    .line 1795
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@128
    move-result v2

    #@129
    const-string/jumbo v3, "alignment width must be power of two"

    #@12c
    .line 1794
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@12f
    .line 1797
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@132
    move-result v2

    #@133
    const-string/jumbo v3, "alignment height must be power of two"

    #@136
    .line 1796
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@139
    .line 1802
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@13c
    move-result v8

    #@13d
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@140
    move-result v9

    #@141
    .line 1803
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@144
    move-result v10

    #@145
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@148
    move-result v11

    #@149
    .line 1801
    const v3, 0x7fffffff

    #@14c
    const v4, 0x7fffffff

    #@14f
    const v5, 0x7fffffff

    #@152
    .line 1802
    const-wide v6, 0x7fffffffffffffffL

    #@157
    move-object/from16 v2, p0

    #@159
    .line 1800
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@15c
    .line 1805
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@160
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@162
    and-int/lit8 v2, v2, 0x2

    #@164
    if-nez v2, :cond_4

    #@166
    move-object/from16 v0, p0

    #@168
    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    #@16a
    if-eqz v2, :cond_f

    #@16c
    .line 1808
    :cond_4
    if-eqz v24, :cond_5

    #@16e
    .line 1809
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@171
    move-result-object v2

    #@172
    move-object/from16 v0, v24

    #@174
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@177
    move-result-object v2

    #@178
    move-object/from16 v0, p0

    #@17a
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@17c
    .line 1811
    :cond_5
    if-eqz v20, :cond_6

    #@17e
    .line 1812
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@181
    move-result-object v2

    #@182
    move-object/from16 v0, v20

    #@184
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@187
    move-result-object v2

    #@188
    move-object/from16 v0, p0

    #@18a
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@18c
    .line 1814
    :cond_6
    if-eqz v17, :cond_7

    #@18e
    .line 1815
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@191
    move-result-object v2

    #@192
    .line 1816
    move-object/from16 v0, p0

    #@194
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@196
    move-object/from16 v0, p0

    #@198
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@19a
    mul-int/2addr v3, v4

    #@19b
    .line 1817
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@19e
    move-result v4

    #@19f
    .line 1816
    div-int/2addr v3, v4

    #@1a0
    .line 1817
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@1a3
    move-result v4

    #@1a4
    .line 1816
    div-int/2addr v3, v4

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@1aa
    move-result-object v3

    #@1ab
    .line 1815
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1ae
    move-result-object v2

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@1b3
    .line 1819
    :cond_7
    if-eqz v14, :cond_8

    #@1b5
    .line 1820
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    #@1b8
    move-result-object v2

    #@1b9
    .line 1821
    move-object/from16 v0, p0

    #@1bb
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1c1
    mul-int/2addr v3, v4

    #@1c2
    .line 1822
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@1c5
    move-result v4

    #@1c6
    .line 1821
    div-int/2addr v3, v4

    #@1c7
    .line 1822
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@1ca
    move-result v4

    #@1cb
    .line 1821
    div-int/2addr v3, v4

    #@1cc
    int-to-long v4, v3

    #@1cd
    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@1d0
    move-result-object v3

    #@1d1
    .line 1820
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1d4
    move-result-object v2

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@1d9
    .line 1824
    :cond_8
    if-eqz v15, :cond_9

    #@1db
    .line 1825
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@1de
    move-result-object v2

    #@1df
    .line 1827
    move-object/from16 v0, p0

    #@1e1
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1e3
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@1e6
    move-result v4

    #@1e7
    div-int/2addr v3, v4

    #@1e8
    .line 1828
    move-object/from16 v0, p0

    #@1ea
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1ec
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@1ef
    move-result v5

    #@1f0
    div-int/2addr v4, v5

    #@1f1
    .line 1826
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@1f4
    move-result-object v3

    #@1f5
    .line 1825
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1f8
    move-result-object v2

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@1fd
    .line 1830
    :cond_9
    if-eqz v22, :cond_a

    #@1ff
    .line 1831
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@202
    move-result-object v2

    #@203
    move-object/from16 v0, v22

    #@205
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@208
    move-result-object v2

    #@209
    move-object/from16 v0, p0

    #@20b
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@20d
    .line 1833
    :cond_a
    if-eqz v19, :cond_b

    #@20f
    .line 1834
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@212
    move-result-object v2

    #@213
    move-object/from16 v0, v19

    #@215
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@218
    move-result-object v2

    #@219
    move-object/from16 v0, p0

    #@21b
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@21d
    .line 1836
    :cond_b
    if-eqz v13, :cond_c

    #@21f
    .line 1838
    move-object/from16 v0, p0

    #@221
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@223
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@225
    and-int/lit8 v2, v2, 0x2

    #@227
    if-eqz v2, :cond_e

    #@229
    .line 1839
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@22c
    move-result-object v2

    #@22d
    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@230
    move-result-object v2

    #@231
    move-object/from16 v0, p0

    #@233
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@235
    .line 1878
    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    #@238
    .line 1726
    return-void

    #@239
    .line 1757
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_d
    const-string/jumbo v2, "VideoCapabilities"

    #@23c
    const-string/jumbo v3, "feature can-swap-width-height is best used with size-range"

    #@23f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@242
    .line 1759
    move-object/from16 v0, p0

    #@244
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@246
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@249
    move-result-object v2

    #@24a
    check-cast v2, Ljava/lang/Integer;

    #@24c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@24f
    move-result v3

    #@250
    move-object/from16 v0, p0

    #@252
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@254
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@257
    move-result-object v2

    #@258
    check-cast v2, Ljava/lang/Integer;

    #@25a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@25d
    move-result v2

    #@25e
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@261
    move-result v2

    #@262
    .line 1758
    move-object/from16 v0, p0

    #@264
    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@266
    .line 1760
    move-object/from16 v0, p0

    #@268
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@26e
    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    #@271
    move-result-object v2

    #@272
    move-object/from16 v0, p0

    #@274
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@276
    move-object/from16 v0, p0

    #@278
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@27a
    goto/16 :goto_0

    #@27c
    .line 1772
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :catch_0
    move-exception v18

    #@27d
    .line 1773
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@280
    new-instance v3, Ljava/lang/StringBuilder;

    #@282
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    const-string/jumbo v4, "frame rate range ("

    #@288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v3

    #@28c
    move-object/from16 v0, v19

    #@28e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v3

    #@292
    .line 1774
    const-string/jumbo v4, ") is out of limits: "

    #@295
    .line 1773
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v3

    #@299
    .line 1774
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@29c
    move-result-object v4

    #@29d
    .line 1773
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v3

    #@2a1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a4
    move-result-object v3

    #@2a5
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a8
    .line 1775
    const/16 v19, 0x0

    #@2aa
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    #@2ac
    .line 1782
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v18

    #@2ad
    .line 1783
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@2b0
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b5
    const-string/jumbo v4, "bitrate range ("

    #@2b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v3

    #@2bc
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v3

    #@2c0
    .line 1784
    const-string/jumbo v4, ") is out of limits: "

    #@2c3
    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v3

    #@2c7
    .line 1784
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@2ca
    move-result-object v4

    #@2cb
    .line 1783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v3

    #@2cf
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v3

    #@2d3
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d6
    .line 1785
    const/4 v13, 0x0

    #@2d7
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_2

    #@2d9
    .line 1841
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    move-object/from16 v0, p0

    #@2db
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@2dd
    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@2e0
    move-result-object v2

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@2e5
    goto/16 :goto_3

    #@2e7
    .line 1846
    :cond_f
    if-eqz v24, :cond_10

    #@2e9
    .line 1847
    move-object/from16 v0, p0

    #@2eb
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2ed
    move-object/from16 v0, v24

    #@2ef
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@2f2
    move-result-object v2

    #@2f3
    move-object/from16 v0, p0

    #@2f5
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2f7
    .line 1849
    :cond_10
    if-eqz v20, :cond_11

    #@2f9
    .line 1850
    move-object/from16 v0, p0

    #@2fb
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2fd
    move-object/from16 v0, v20

    #@2ff
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@302
    move-result-object v2

    #@303
    move-object/from16 v0, p0

    #@305
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@307
    .line 1852
    :cond_11
    if-eqz v17, :cond_12

    #@309
    .line 1853
    move-object/from16 v0, p0

    #@30b
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@30d
    .line 1854
    move-object/from16 v0, p0

    #@30f
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@311
    move-object/from16 v0, p0

    #@313
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@315
    mul-int/2addr v3, v4

    #@316
    .line 1855
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@319
    move-result v4

    #@31a
    .line 1854
    div-int/2addr v3, v4

    #@31b
    .line 1855
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@31e
    move-result v4

    #@31f
    .line 1854
    div-int/2addr v3, v4

    #@320
    move-object/from16 v0, v17

    #@322
    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@325
    move-result-object v3

    #@326
    .line 1853
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@329
    move-result-object v2

    #@32a
    move-object/from16 v0, p0

    #@32c
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@32e
    .line 1857
    :cond_12
    if-eqz v14, :cond_13

    #@330
    .line 1858
    move-object/from16 v0, p0

    #@332
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@334
    .line 1859
    move-object/from16 v0, p0

    #@336
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@338
    move-object/from16 v0, p0

    #@33a
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@33c
    mul-int/2addr v3, v4

    #@33d
    .line 1860
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@340
    move-result v4

    #@341
    .line 1859
    div-int/2addr v3, v4

    #@342
    .line 1860
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@345
    move-result v4

    #@346
    .line 1859
    div-int/2addr v3, v4

    #@347
    int-to-long v4, v3

    #@348
    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@34b
    move-result-object v3

    #@34c
    .line 1858
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@34f
    move-result-object v2

    #@350
    move-object/from16 v0, p0

    #@352
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@354
    .line 1862
    :cond_13
    if-eqz v15, :cond_14

    #@356
    .line 1863
    move-object/from16 v0, p0

    #@358
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@35a
    .line 1865
    move-object/from16 v0, p0

    #@35c
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@35e
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@361
    move-result v4

    #@362
    div-int/2addr v3, v4

    #@363
    .line 1866
    move-object/from16 v0, p0

    #@365
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@367
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@36a
    move-result v5

    #@36b
    div-int/2addr v4, v5

    #@36c
    .line 1864
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@36f
    move-result-object v3

    #@370
    .line 1863
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@373
    move-result-object v2

    #@374
    move-object/from16 v0, p0

    #@376
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@378
    .line 1868
    :cond_14
    if-eqz v22, :cond_15

    #@37a
    .line 1869
    move-object/from16 v0, p0

    #@37c
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@37e
    move-object/from16 v0, v22

    #@380
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@383
    move-result-object v2

    #@384
    move-object/from16 v0, p0

    #@386
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@388
    .line 1871
    :cond_15
    if-eqz v19, :cond_16

    #@38a
    .line 1872
    move-object/from16 v0, p0

    #@38c
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@38e
    move-object/from16 v0, v19

    #@390
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@393
    move-result-object v2

    #@394
    move-object/from16 v0, p0

    #@396
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@398
    .line 1874
    :cond_16
    if-eqz v13, :cond_c

    #@39a
    .line 1875
    move-object/from16 v0, p0

    #@39c
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@39e
    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3a1
    move-result-object v2

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@3a6
    goto/16 :goto_3
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1659
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    #@4
    move-result-object v1

    #@5
    .line 1660
    .local v1, "range":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v1, :cond_0

    #@7
    .line 1663
    :try_start_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@9
    check-cast v2, Landroid/util/Size;

    #@b
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@15
    check-cast v2, Landroid/util/Size;

    #@17
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@22
    move-result-object v3

    #@23
    .line 1664
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@25
    check-cast v2, Landroid/util/Size;

    #@27
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@2a
    move-result v2

    #@2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@31
    check-cast v2, Landroid/util/Size;

    #@33
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@36
    move-result v2

    #@37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v4, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@3e
    move-result-object v2

    #@3f
    .line 1662
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result-object v2

    #@43
    return-object v2

    #@44
    .line 1665
    :catch_0
    move-exception v0

    #@45
    .line 1666
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@48
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "could not parse size range \'"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, "\'"

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 1669
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v5
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1512
    const/4 v4, 0x1

    #@2
    .line 1514
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 1515
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@8
    invoke-virtual {v7, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_5

    #@e
    .line 1516
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v7

    #@12
    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@14
    rem-int/2addr v7, v8

    #@15
    if-nez v7, :cond_4

    #@17
    const/4 v4, 0x1

    #@18
    .line 1518
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@1a
    if-eqz p2, :cond_1

    #@1c
    .line 1519
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1e
    invoke-virtual {v7, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_7

    #@24
    .line 1520
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v7

    #@28
    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@2a
    rem-int/2addr v7, v8

    #@2b
    if-nez v7, :cond_6

    #@2d
    const/4 v4, 0x1

    #@2e
    .line 1522
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    #@30
    if-eqz p3, :cond_2

    #@32
    .line 1523
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@34
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    #@37
    move-result-wide v8

    #@38
    invoke-static {v8, v9}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    #@3f
    move-result v4

    #@40
    .line 1525
    .end local v4    # "ok":Z
    :cond_2
    if-eqz v4, :cond_3

    #@42
    if-eqz p2, :cond_3

    #@44
    if-eqz p1, :cond_3

    #@46
    .line 1526
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v7

    #@4a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@4d
    move-result v8

    #@4e
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@51
    move-result v7

    #@52
    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@54
    if-gt v7, v8, :cond_8

    #@56
    const/4 v4, 0x1

    #@57
    .line 1528
    .restart local v4    # "ok":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@5a
    move-result v7

    #@5b
    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@5d
    invoke-static {v7, v8}, Landroid/media/Utils;->divUp(II)I

    #@60
    move-result v5

    #@61
    .line 1529
    .local v5, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@64
    move-result v7

    #@65
    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@67
    invoke-static {v7, v8}, Landroid/media/Utils;->divUp(II)I

    #@6a
    move-result v1

    #@6b
    .line 1530
    .local v1, "heightInBlocks":I
    mul-int v0, v5, v1

    #@6d
    .line 1531
    .local v0, "blockCount":I
    if-eqz v4, :cond_9

    #@6f
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@78
    move-result v7

    #@79
    if-eqz v7, :cond_9

    #@7b
    .line 1532
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@7d
    .line 1533
    new-instance v8, Landroid/util/Rational;

    #@7f
    invoke-direct {v8, v5, v1}, Landroid/util/Rational;-><init>(II)V

    #@82
    .line 1532
    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@85
    move-result v7

    #@86
    .line 1531
    if-eqz v7, :cond_9

    #@88
    .line 1534
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@8a
    new-instance v7, Landroid/util/Rational;

    #@8c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@8f
    move-result v8

    #@90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@93
    move-result v9

    #@94
    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    #@97
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@9a
    move-result v4

    #@9b
    .line 1535
    .local v4, "ok":Z
    :goto_3
    if-eqz v4, :cond_3

    #@9d
    if-eqz p3, :cond_3

    #@9f
    .line 1536
    int-to-double v6, v0

    #@a0
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    #@a3
    move-result-wide v8

    #@a4
    mul-double v2, v6, v8

    #@a6
    .line 1537
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@a8
    .line 1538
    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    #@ab
    move-result-object v7

    #@ac
    .line 1537
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    #@af
    move-result v4

    #@b0
    .line 1541
    .end local v0    # "blockCount":I
    .end local v1    # "heightInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v4    # "ok":Z
    .end local v5    # "widthInBlocks":I
    :cond_3
    return v4

    #@b1
    .line 1516
    .local v4, "ok":Z
    :cond_4
    const/4 v4, 0x0

    #@b2
    goto/16 :goto_0

    #@b4
    .line 1515
    :cond_5
    const/4 v4, 0x0

    #@b5
    goto/16 :goto_0

    #@b7
    .line 1520
    :cond_6
    const/4 v4, 0x0

    #@b8
    goto/16 :goto_1

    #@ba
    .line 1519
    :cond_7
    const/4 v4, 0x0

    #@bb
    goto/16 :goto_1

    #@bd
    .line 1526
    .end local v4    # "ok":Z
    :cond_8
    const/4 v4, 0x0

    #@be
    .restart local v4    # "ok":Z
    goto :goto_2

    #@bf
    .restart local v0    # "blockCount":I
    .restart local v1    # "heightInBlocks":I
    .restart local v5    # "widthInBlocks":I
    :cond_9
    move v4, v6

    #@c0
    .line 1531
    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    #@0
    .prologue
    .line 1942
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@2
    .line 1943
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@4
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@6
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@9
    move-result-object v1

    #@a
    .line 1942
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@10
    .line 1944
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@12
    .line 1946
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@14
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v2

    #@1e
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@20
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/Integer;

    #@26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v0

    #@2a
    div-int v0, v2, v0

    #@2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    .line 1947
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@32
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/lang/Integer;

    #@38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result v3

    #@3c
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@3e
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/lang/Integer;

    #@44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result v0

    #@48
    div-int v0, v3, v0

    #@4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v0

    #@4e
    .line 1945
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@51
    move-result-object v0

    #@52
    .line 1944
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@58
    .line 1948
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@5a
    .line 1949
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@5c
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@5e
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@61
    move-result-object v1

    #@62
    .line 1948
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@65
    move-result-object v0

    #@66
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@68
    .line 1950
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@6a
    .line 1952
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@6c
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Ljava/lang/Integer;

    #@72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@75
    move-result v2

    #@76
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@78
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Ljava/lang/Integer;

    #@7e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@81
    move-result v0

    #@82
    div-int v0, v2, v0

    #@84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v2

    #@88
    .line 1953
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@8a
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Ljava/lang/Integer;

    #@90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@93
    move-result v3

    #@94
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@96
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, Ljava/lang/Integer;

    #@9c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9f
    move-result v0

    #@a0
    div-int v0, v3, v0

    #@a2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v0

    #@a6
    .line 1951
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a9
    move-result-object v0

    #@aa
    .line 1950
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@ad
    move-result-object v0

    #@ae
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@b0
    .line 1954
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@b2
    .line 1956
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@b4
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@b7
    move-result-object v0

    #@b8
    check-cast v0, Ljava/lang/Integer;

    #@ba
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@bd
    move-result v2

    #@be
    .line 1957
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@c0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@c3
    move-result-object v0

    #@c4
    check-cast v0, Ljava/lang/Integer;

    #@c6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c9
    move-result v0

    #@ca
    .line 1956
    mul-int/2addr v0, v2

    #@cb
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ce
    move-result-object v2

    #@cf
    .line 1958
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@d1
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@d4
    move-result-object v0

    #@d5
    check-cast v0, Ljava/lang/Integer;

    #@d7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@da
    move-result v3

    #@db
    .line 1959
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@dd
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@e0
    move-result-object v0

    #@e1
    check-cast v0, Ljava/lang/Integer;

    #@e3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e6
    move-result v0

    #@e7
    .line 1958
    mul-int/2addr v0, v3

    #@e8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v0

    #@ec
    .line 1955
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@ef
    move-result-object v0

    #@f0
    .line 1954
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@f3
    move-result-object v0

    #@f4
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@f6
    .line 1960
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@f8
    .line 1961
    new-instance v2, Landroid/util/Rational;

    #@fa
    .line 1962
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@fc
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@ff
    move-result-object v0

    #@100
    check-cast v0, Ljava/lang/Integer;

    #@102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@105
    move-result v3

    #@106
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@108
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@10b
    move-result-object v0

    #@10c
    check-cast v0, Ljava/lang/Integer;

    #@10e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@111
    move-result v0

    #@112
    .line 1961
    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    #@115
    .line 1963
    new-instance v3, Landroid/util/Rational;

    #@117
    .line 1964
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@119
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@11c
    move-result-object v0

    #@11d
    check-cast v0, Ljava/lang/Integer;

    #@11f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@122
    move-result v4

    #@123
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@125
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@128
    move-result-object v0

    #@129
    check-cast v0, Ljava/lang/Integer;

    #@12b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12e
    move-result v0

    #@12f
    .line 1963
    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    #@132
    .line 1960
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@135
    move-result-object v0

    #@136
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@138
    .line 1967
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@13a
    .line 1968
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@13c
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@13f
    move-result-object v0

    #@140
    check-cast v0, Ljava/lang/Integer;

    #@142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@145
    move-result v0

    #@146
    add-int/lit8 v0, v0, -0x1

    #@148
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@14a
    mul-int/2addr v0, v2

    #@14b
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@14d
    add-int/2addr v0, v2

    #@14e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@151
    move-result-object v2

    #@152
    .line 1969
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@154
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@157
    move-result-object v0

    #@158
    check-cast v0, Ljava/lang/Integer;

    #@15a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15d
    move-result v0

    #@15e
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@160
    mul-int/2addr v0, v3

    #@161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@164
    move-result-object v0

    #@165
    .line 1967
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@168
    move-result-object v0

    #@169
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@16b
    .line 1970
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@16d
    .line 1971
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@16f
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@172
    move-result-object v0

    #@173
    check-cast v0, Ljava/lang/Integer;

    #@175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@178
    move-result v0

    #@179
    add-int/lit8 v0, v0, -0x1

    #@17b
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@17d
    mul-int/2addr v0, v2

    #@17e
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@180
    add-int/2addr v0, v2

    #@181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@184
    move-result-object v2

    #@185
    .line 1972
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@187
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@18a
    move-result-object v0

    #@18b
    check-cast v0, Ljava/lang/Integer;

    #@18d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@190
    move-result v0

    #@191
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@193
    mul-int/2addr v0, v3

    #@194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@197
    move-result-object v0

    #@198
    .line 1970
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@19b
    move-result-object v0

    #@19c
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@19e
    .line 1973
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@1a0
    .line 1974
    new-instance v2, Landroid/util/Rational;

    #@1a2
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@1a4
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@1a7
    move-result-object v0

    #@1a8
    check-cast v0, Ljava/lang/Integer;

    #@1aa
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1ad
    move-result v3

    #@1ae
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1b0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1b3
    move-result-object v0

    #@1b4
    check-cast v0, Ljava/lang/Integer;

    #@1b6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b9
    move-result v0

    #@1ba
    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    #@1bd
    .line 1975
    new-instance v3, Landroid/util/Rational;

    #@1bf
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@1c1
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1c4
    move-result-object v0

    #@1c5
    check-cast v0, Ljava/lang/Integer;

    #@1c7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1ca
    move-result v4

    #@1cb
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1cd
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@1d0
    move-result-object v0

    #@1d1
    check-cast v0, Ljava/lang/Integer;

    #@1d3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d6
    move-result v0

    #@1d7
    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    #@1da
    .line 1973
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1dd
    move-result-object v0

    #@1de
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@1e0
    .line 1978
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@1e2
    .line 1979
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@1e4
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1e7
    move-result-object v0

    #@1e8
    check-cast v0, Ljava/lang/Integer;

    #@1ea
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1ed
    move-result v2

    #@1ee
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1f0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1f3
    move-result-object v0

    #@1f4
    check-cast v0, Ljava/lang/Integer;

    #@1f6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1f9
    move-result v0

    #@1fa
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@1fd
    move-result v0

    #@1fe
    .line 1977
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@201
    move-result v0

    #@202
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@204
    .line 1982
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@206
    .line 1983
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@208
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@20b
    move-result-object v0

    #@20c
    check-cast v0, Ljava/lang/Integer;

    #@20e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@211
    move-result v0

    #@212
    int-to-long v2, v0

    #@213
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@215
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@218
    move-result-object v0

    #@219
    check-cast v0, Ljava/lang/Integer;

    #@21b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@21e
    move-result v0

    #@21f
    int-to-long v4, v0

    #@220
    mul-long/2addr v2, v4

    #@221
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@224
    move-result-object v2

    #@225
    .line 1984
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@227
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@22a
    move-result-object v0

    #@22b
    check-cast v0, Ljava/lang/Integer;

    #@22d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@230
    move-result v0

    #@231
    int-to-long v4, v0

    #@232
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@234
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@237
    move-result-object v0

    #@238
    check-cast v0, Ljava/lang/Integer;

    #@23a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@23d
    move-result v0

    #@23e
    int-to-long v6, v0

    #@23f
    mul-long/2addr v4, v6

    #@240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@243
    move-result-object v0

    #@244
    .line 1982
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@247
    move-result-object v0

    #@248
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@24a
    .line 1985
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@24c
    .line 1986
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@24e
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@251
    move-result-object v0

    #@252
    check-cast v0, Ljava/lang/Long;

    #@254
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@257
    move-result-wide v2

    #@258
    .line 1987
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@25a
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@25d
    move-result-object v0

    #@25e
    check-cast v0, Ljava/lang/Integer;

    #@260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@263
    move-result v0

    #@264
    int-to-long v4, v0

    #@265
    .line 1986
    div-long/2addr v2, v4

    #@266
    long-to-int v0, v2

    #@267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26a
    move-result-object v2

    #@26b
    .line 1988
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@26d
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@270
    move-result-object v0

    #@271
    check-cast v0, Ljava/lang/Long;

    #@273
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@276
    move-result-wide v4

    #@277
    long-to-double v4, v4

    #@278
    .line 1989
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@27a
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@27d
    move-result-object v0

    #@27e
    check-cast v0, Ljava/lang/Integer;

    #@280
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@283
    move-result v0

    #@284
    int-to-double v6, v0

    #@285
    .line 1988
    div-double/2addr v4, v6

    #@286
    double-to-int v0, v4

    #@287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28a
    move-result-object v0

    #@28b
    .line 1985
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@28e
    move-result-object v0

    #@28f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@291
    .line 1940
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    #@0
    .prologue
    .line 1500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "unsupported size"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1486
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@1e
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@21
    move-result v0

    #@22
    if-gtz v0, :cond_2

    #@24
    .line 1487
    :cond_1
    const-string/jumbo v0, "VideoCapabilities"

    #@27
    const-string/jumbo v1, "Codec did not publish any measurement data."

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1488
    return-object v2

    #@2e
    .line 1491
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1602
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@7
    goto :goto_0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1592
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1587
    new-instance v0, Landroid/util/Size;

    #@2
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@4
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@9
    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1597
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    #@0
    .prologue
    .line 1262
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@2
    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    #@0
    .prologue
    .line 1279
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@2
    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1394
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2
    .line 1395
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v3

    #@a
    const/4 v4, 0x0

    #@b
    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unsupported size"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 1399
    :cond_0
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1c
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    #@1f
    move-result v2

    #@20
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@22
    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    #@25
    move-result v3

    #@26
    mul-int v0, v2, v3

    #@28
    .line 1402
    .local v0, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@2a
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/lang/Long;

    #@30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@33
    move-result-wide v2

    #@34
    long-to-double v2, v2

    #@35
    int-to-double v4, v0

    #@36
    div-double v4, v2, v4

    #@38
    .line 1403
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3a
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/lang/Integer;

    #@40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v2

    #@44
    int-to-double v2, v2

    #@45
    .line 1402
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@48
    move-result-wide v2

    #@49
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@4c
    move-result-object v3

    #@4d
    .line 1404
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@4f
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@52
    move-result-object v2

    #@53
    check-cast v2, Ljava/lang/Long;

    #@55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@58
    move-result-wide v4

    #@59
    long-to-double v4, v4

    #@5a
    int-to-double v6, v0

    #@5b
    div-double/2addr v4, v6

    #@5c
    .line 1405
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@5e
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/lang/Integer;

    #@64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@67
    move-result v2

    #@68
    int-to-double v6, v2

    #@69
    .line 1404
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    #@6c
    move-result-wide v4

    #@6d
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@70
    move-result-object v2

    #@71
    .line 1401
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@74
    move-result-object v2

    #@75
    return-object v2
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1242
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1344
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2
    .line 1345
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 1346
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@10
    rem-int v5, p1, v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 1347
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v6, "unsupported width"

    #@19
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1375
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@1e
    .line 1377
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VideoCapabilities"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "could not get supported heights for "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1378
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v6, "unsupported width"

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5

    #@41
    .line 1349
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@43
    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    #@46
    move-result v4

    #@47
    .line 1353
    .local v4, "widthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@49
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v5

    #@53
    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    #@56
    move-result v6

    #@57
    .line 1354
    int-to-double v8, v4

    #@58
    .line 1355
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@5a
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@5d
    move-result-object v5

    #@5e
    check-cast v5, Landroid/util/Rational;

    #@60
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@63
    move-result-wide v10

    #@64
    .line 1354
    div-double/2addr v8, v10

    #@65
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@68
    move-result-wide v8

    #@69
    double-to-int v5, v8

    #@6a
    .line 1352
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v2

    #@6e
    .line 1357
    .local v2, "minHeightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@70
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@73
    move-result-object v5

    #@74
    check-cast v5, Ljava/lang/Integer;

    #@76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v5

    #@7a
    div-int v6, v5, v4

    #@7c
    .line 1358
    int-to-double v8, v4

    #@7d
    .line 1359
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@7f
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@82
    move-result-object v5

    #@83
    check-cast v5, Landroid/util/Rational;

    #@85
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@88
    move-result-wide v10

    #@89
    .line 1358
    div-double/2addr v8, v10

    #@8a
    double-to-int v5, v8

    #@8b
    .line 1356
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v1

    #@8f
    .line 1361
    .local v1, "maxHeightInBlocks":I
    add-int/lit8 v5, v2, -0x1

    #@91
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@93
    mul-int/2addr v5, v6

    #@94
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@96
    add-int/2addr v5, v6

    #@97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v5

    #@9b
    .line 1362
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@9d
    mul-int/2addr v6, v1

    #@9e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a1
    move-result-object v6

    #@a2
    .line 1360
    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a5
    move-result-object v3

    #@a6
    .line 1365
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@a8
    if-le p1, v5, :cond_2

    #@aa
    .line 1366
    const/4 v5, 0x1

    #@ab
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v5

    #@af
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@b1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@b8
    move-result-object v3

    #@b9
    .line 1371
    :cond_2
    int-to-double v6, p1

    #@ba
    .line 1372
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@bc
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@bf
    move-result-object v5

    #@c0
    check-cast v5, Landroid/util/Rational;

    #@c2
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@c5
    move-result-wide v8

    #@c6
    .line 1371
    div-double/2addr v6, v8

    #@c7
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@ca
    move-result-wide v6

    #@cb
    double-to-int v5, v6

    #@cc
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf
    move-result-object v6

    #@d0
    .line 1373
    int-to-double v8, p1

    #@d1
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@d3
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@d6
    move-result-object v5

    #@d7
    check-cast v5, Landroid/util/Rational;

    #@d9
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@dc
    move-result-wide v10

    #@dd
    div-double/2addr v8, v10

    #@de
    double-to-int v5, v8

    #@df
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e2
    move-result-object v5

    #@e3
    .line 1370
    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@e6
    move-result-object v3

    #@e7
    .line 1374
    return-object v3
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1235
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1300
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2
    .line 1301
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v6

    #@8
    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 1302
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@10
    rem-int v5, p1, v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 1303
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v6, "unsupported height"

    #@19
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 1331
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@1e
    .line 1333
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VideoCapabilities"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "could not get supported widths for "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1334
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v6, "unsupported height"

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5

    #@41
    .line 1305
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@43
    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    #@46
    move-result v1

    #@47
    .line 1309
    .local v1, "heightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@49
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v5

    #@53
    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    #@56
    move-result v6

    #@57
    .line 1310
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@59
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@5c
    move-result-object v5

    #@5d
    check-cast v5, Landroid/util/Rational;

    #@5f
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@62
    move-result-wide v8

    #@63
    .line 1311
    int-to-double v10, v1

    #@64
    .line 1310
    mul-double/2addr v8, v10

    #@65
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@68
    move-result-wide v8

    #@69
    double-to-int v5, v8

    #@6a
    .line 1308
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v3

    #@6e
    .line 1313
    .local v3, "minWidthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@70
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@73
    move-result-object v5

    #@74
    check-cast v5, Ljava/lang/Integer;

    #@76
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v5

    #@7a
    div-int v6, v5, v1

    #@7c
    .line 1314
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@7e
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@81
    move-result-object v5

    #@82
    check-cast v5, Landroid/util/Rational;

    #@84
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@87
    move-result-wide v8

    #@88
    .line 1315
    int-to-double v10, v1

    #@89
    .line 1314
    mul-double/2addr v8, v10

    #@8a
    double-to-int v5, v8

    #@8b
    .line 1312
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v2

    #@8f
    .line 1317
    .local v2, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    #@91
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@93
    mul-int/2addr v5, v6

    #@94
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@96
    add-int/2addr v5, v6

    #@97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v5

    #@9b
    .line 1318
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@9d
    mul-int/2addr v6, v2

    #@9e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a1
    move-result-object v6

    #@a2
    .line 1316
    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a5
    move-result-object v4

    #@a6
    .line 1321
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@a8
    if-le p1, v5, :cond_2

    #@aa
    .line 1322
    const/4 v5, 0x1

    #@ab
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v5

    #@af
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@b1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@b8
    move-result-object v4

    #@b9
    .line 1327
    :cond_2
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@bb
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@be
    move-result-object v5

    #@bf
    check-cast v5, Landroid/util/Rational;

    #@c1
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@c4
    move-result-wide v6

    #@c5
    .line 1328
    int-to-double v8, p1

    #@c6
    .line 1327
    mul-double/2addr v6, v8

    #@c7
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@ca
    move-result-wide v6

    #@cb
    double-to-int v5, v6

    #@cc
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf
    move-result-object v6

    #@d0
    .line 1329
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@d2
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@d5
    move-result-object v5

    #@d6
    check-cast v5, Landroid/util/Rational;

    #@d8
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    #@db
    move-result-wide v8

    #@dc
    int-to-double v10, p1

    #@dd
    mul-double/2addr v8, v10

    #@de
    double-to-int v5, v8

    #@df
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e2
    move-result-object v5

    #@e3
    .line 1326
    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@e6
    move-result-object v4

    #@e7
    .line 1330
    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    #@0
    .prologue
    .line 1252
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@2
    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 1578
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    .line 1579
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    #@5
    .line 1580
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    #@8
    .line 1581
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    #@b
    .line 1582
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    #@e
    .line 1577
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1548
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@4
    move-result-object v1

    #@5
    .line 1549
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "width"

    #@8
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/lang/Integer;

    #@e
    .line 1550
    .local v3, "width":Ljava/lang/Integer;
    const-string/jumbo v4, "height"

    #@11
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 1551
    .local v0, "height":Ljava/lang/Integer;
    const-string/jumbo v4, "frame-rate"

    #@1a
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/Number;

    #@20
    .line 1553
    .local v2, "rate":Ljava/lang/Number;
    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_0

    #@26
    .line 1554
    return v5

    #@27
    .line 1557
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@29
    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_1

    #@2f
    .line 1558
    return v5

    #@30
    .line 1562
    :cond_1
    const/4 v4, 0x1

    #@31
    return v4
.end method
