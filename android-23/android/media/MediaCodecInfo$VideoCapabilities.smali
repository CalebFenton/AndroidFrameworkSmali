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
    .line 1343
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
    .line 1638
    const-string/jumbo v0, "widthAlignment must be a power of two"

    #@3
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@6
    .line 1639
    const-string/jumbo v0, "heightAlignment must be a power of two"

    #@9
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@c
    .line 1641
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@e
    if-gt p1, v0, :cond_0

    #@10
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@12
    if-le p2, v0, :cond_1

    #@14
    .line 1644
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@16
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v1

    #@1a
    .line 1645
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1c
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v2

    #@20
    .line 1646
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
    .line 1643
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    #@30
    .line 1649
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@32
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@38
    .line 1650
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@3a
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@40
    .line 1652
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
    .line 1653
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
    .line 1637
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
    .line 1600
    const-string/jumbo v3, "blockWidth must be a power of two"

    #@4
    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@7
    .line 1601
    const-string/jumbo v3, "blockHeight must be a power of two"

    #@a
    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@d
    .line 1603
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@f
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v2

    #@13
    .line 1604
    .local v2, "newBlockWidth":I
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@15
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v1

    #@19
    .line 1608
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
    .line 1609
    .local v0, "factor":I
    if-eq v0, v6, :cond_0

    #@24
    .line 1610
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@26
    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2c
    .line 1612
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@2e
    int-to-long v4, v0

    #@2f
    .line 1611
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@32
    move-result-object v3

    #@33
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@35
    .line 1614
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@37
    .line 1615
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@39
    div-int v4, v1, v4

    #@3b
    .line 1616
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@3d
    div-int v5, v2, v5

    #@3f
    .line 1613
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@42
    move-result-object v3

    #@43
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@45
    .line 1618
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@47
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@49
    div-int v4, v2, v4

    #@4b
    .line 1617
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@51
    .line 1620
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@53
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@55
    div-int v4, v1, v4

    #@57
    .line 1619
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@5d
    .line 1622
    :cond_0
    mul-int v3, v2, v1

    #@5f
    div-int/2addr v3, p1

    #@60
    div-int v0, v3, p2

    #@62
    .line 1623
    if-eq v0, v6, :cond_1

    #@64
    .line 1624
    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@67
    move-result-object p3

    #@68
    .line 1625
    int-to-long v4, v0

    #@69
    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@6c
    move-result-object p4

    #@6d
    .line 1627
    div-int v3, v1, p2

    #@6f
    .line 1628
    div-int v4, v2, p1

    #@71
    .line 1626
    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@74
    move-result-object p5

    #@75
    .line 1630
    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@77
    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@7a
    move-result-object v3

    #@7b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@7d
    .line 1631
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@7f
    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@82
    move-result-object v3

    #@83
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@85
    .line 1632
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@87
    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@8a
    move-result-object v3

    #@8b
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@8d
    .line 1633
    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@8f
    .line 1634
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@91
    .line 1599
    return-void
.end method

.method private applyLevelLimits()V
    .locals 46

    #@0
    .prologue
    .line 1729
    const/16 v38, 0x0

    #@2
    .line 1730
    .local v38, "maxBlocksPerSecond":I
    const/4 v5, 0x0

    #@3
    .line 1731
    .local v5, "maxBlocks":I
    const/16 v39, 0x0

    #@5
    .line 1732
    .local v39, "maxBps":I
    const/16 v40, 0x0

    #@7
    .line 1734
    .local v40, "maxDPBBlocks":I
    const/16 v37, 0x4

    #@9
    .line 1735
    .local v37, "errors":I
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@d
    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@f
    move-object/from16 v44, v0

    #@11
    .line 1736
    .local v44, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@15
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@18
    move-result-object v42

    #@19
    .line 1738
    .local v42, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/avc"

    #@1c
    move-object/from16 v0, v42

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 1739
    const/16 v5, 0x63

    #@26
    .line 1740
    const/16 v38, 0x5cd

    #@28
    .line 1741
    const v39, 0xfa00

    #@2b
    .line 1742
    const/16 v40, 0x18c

    #@2d
    .line 1743
    const/4 v2, 0x0

    #@2e
    move-object/from16 v0, v44

    #@30
    array-length v4, v0

    #@31
    :goto_0
    if-ge v2, v4, :cond_1

    #@33
    aget-object v43, v44, v2

    #@35
    .line 1744
    .local v43, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v35, 0x0

    #@37
    .local v35, "MBPS":I
    const/16 v33, 0x0

    #@39
    .local v33, "FS":I
    const/16 v28, 0x0

    #@3b
    .local v28, "BR":I
    const/16 v29, 0x0

    #@3d
    .line 1745
    .local v29, "DPB":I
    const/16 v45, 0x1

    #@3f
    .line 1746
    .local v45, "supported":Z
    move-object/from16 v0, v43

    #@41
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@43
    sparse-switch v6, :sswitch_data_0

    #@46
    .line 1782
    const-string/jumbo v6, "VideoCapabilities"

    #@49
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "Unrecognized level "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    .line 1783
    move-object/from16 v0, v43

    #@57
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@59
    .line 1782
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    .line 1783
    const-string/jumbo v10, " for "

    #@60
    .line 1782
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    move-object/from16 v0, v42

    #@66
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1784
    or-int/lit8 v37, v37, 0x1

    #@73
    .line 1786
    :goto_1
    move-object/from16 v0, v43

    #@75
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@77
    sparse-switch v6, :sswitch_data_1

    #@7a
    .line 1803
    const-string/jumbo v6, "VideoCapabilities"

    #@7d
    new-instance v9, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v10, "Unrecognized profile "

    #@85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 1804
    move-object/from16 v0, v43

    #@8b
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@8d
    .line 1803
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    .line 1804
    const-string/jumbo v10, " for "

    #@94
    .line 1803
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    move-object/from16 v0, v42

    #@9a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 1805
    or-int/lit8 v37, v37, 0x1

    #@a7
    .line 1806
    move/from16 v0, v28

    #@a9
    mul-int/lit16 v0, v0, 0x3e8

    #@ab
    move/from16 v28, v0

    #@ad
    .line 1808
    :goto_2
    if-eqz v45, :cond_0

    #@af
    .line 1809
    and-int/lit8 v37, v37, -0x5

    #@b1
    .line 1811
    :cond_0
    move/from16 v0, v35

    #@b3
    move/from16 v1, v38

    #@b5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b8
    move-result v38

    #@b9
    .line 1812
    move/from16 v0, v33

    #@bb
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@be
    move-result v5

    #@bf
    .line 1813
    move/from16 v0, v28

    #@c1
    move/from16 v1, v39

    #@c3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@c6
    move-result v39

    #@c7
    .line 1814
    move/from16 v0, v40

    #@c9
    move/from16 v1, v29

    #@cb
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@ce
    move-result v40

    #@cf
    .line 1743
    add-int/lit8 v2, v2, 0x1

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1748
    :sswitch_0
    const/16 v35, 0x5cd

    #@d5
    const/16 v33, 0x63

    #@d7
    const/16 v28, 0x40

    #@d9
    const/16 v29, 0x18c

    #@db
    goto :goto_1

    #@dc
    .line 1750
    :sswitch_1
    const/16 v35, 0x5cd

    #@de
    const/16 v33, 0x63

    #@e0
    const/16 v28, 0x80

    #@e2
    const/16 v29, 0x18c

    #@e4
    goto :goto_1

    #@e5
    .line 1752
    :sswitch_2
    const/16 v35, 0xbb8

    #@e7
    const/16 v33, 0x18c

    #@e9
    const/16 v28, 0xc0

    #@eb
    const/16 v29, 0x384

    #@ed
    goto :goto_1

    #@ee
    .line 1754
    :sswitch_3
    const/16 v35, 0x1770

    #@f0
    const/16 v33, 0x18c

    #@f2
    const/16 v28, 0x180

    #@f4
    const/16 v29, 0x948

    #@f6
    goto/16 :goto_1

    #@f8
    .line 1756
    :sswitch_4
    const/16 v35, 0x2e68

    #@fa
    const/16 v33, 0x18c

    #@fc
    const/16 v28, 0x300

    #@fe
    const/16 v29, 0x948

    #@100
    goto/16 :goto_1

    #@102
    .line 1758
    :sswitch_5
    const/16 v35, 0x2e68

    #@104
    const/16 v33, 0x18c

    #@106
    const/16 v28, 0x7d0

    #@108
    const/16 v29, 0x948

    #@10a
    goto/16 :goto_1

    #@10c
    .line 1760
    :sswitch_6
    const/16 v35, 0x4d58

    #@10e
    const/16 v33, 0x318

    #@110
    const/16 v28, 0xfa0

    #@112
    const/16 v29, 0x1290

    #@114
    goto/16 :goto_1

    #@116
    .line 1762
    :sswitch_7
    const/16 v35, 0x4f1a

    #@118
    const/16 v33, 0x654

    #@11a
    const/16 v28, 0xfa0

    #@11c
    const/16 v29, 0x1fa4

    #@11e
    goto/16 :goto_1

    #@120
    .line 1764
    :sswitch_8
    const v35, 0x9e34

    #@123
    const/16 v33, 0x654

    #@125
    const/16 v28, 0x2710

    #@127
    const/16 v29, 0x1fa4

    #@129
    goto/16 :goto_1

    #@12b
    .line 1766
    :sswitch_9
    const v35, 0x1a5e0

    #@12e
    const/16 v33, 0xe10

    #@130
    const/16 v28, 0x36b0

    #@132
    const/16 v29, 0x4650

    #@134
    goto/16 :goto_1

    #@136
    .line 1768
    :sswitch_a
    const v35, 0x34bc0

    #@139
    const/16 v33, 0x1400

    #@13b
    const/16 v28, 0x4e20

    #@13d
    const/16 v29, 0x5000

    #@13f
    goto/16 :goto_1

    #@141
    .line 1770
    :sswitch_b
    const v35, 0x3c000

    #@144
    const/16 v33, 0x2000

    #@146
    const/16 v28, 0x4e20

    #@148
    const v29, 0x8000

    #@14b
    goto/16 :goto_1

    #@14d
    .line 1772
    :sswitch_c
    const v35, 0x3c000

    #@150
    const/16 v33, 0x2000

    #@152
    const v28, 0xc350

    #@155
    const v29, 0x8000

    #@158
    goto/16 :goto_1

    #@15a
    .line 1774
    :sswitch_d
    const v35, 0x7f800

    #@15d
    const/16 v33, 0x2200

    #@15f
    const v28, 0xc350

    #@162
    const v29, 0x8800

    #@165
    goto/16 :goto_1

    #@167
    .line 1776
    :sswitch_e
    const/high16 v35, 0x90000

    #@169
    const/16 v33, 0x5640

    #@16b
    const v28, 0x20f58

    #@16e
    const v29, 0x1af40

    #@171
    goto/16 :goto_1

    #@173
    .line 1778
    :sswitch_f
    const/high16 v35, 0xf0000

    #@175
    const v33, 0x9000

    #@178
    const v28, 0x3a980

    #@17b
    const v29, 0x2d000

    #@17e
    goto/16 :goto_1

    #@180
    .line 1780
    :sswitch_10
    const v35, 0x1fa400

    #@183
    const v33, 0x9000

    #@186
    const v28, 0x3a980

    #@189
    const v29, 0x2d000

    #@18c
    goto/16 :goto_1

    #@18e
    .line 1788
    :sswitch_11
    move/from16 v0, v28

    #@190
    mul-int/lit16 v0, v0, 0x4e2

    #@192
    move/from16 v28, v0

    #@194
    goto/16 :goto_2

    #@196
    .line 1790
    :sswitch_12
    move/from16 v0, v28

    #@198
    mul-int/lit16 v0, v0, 0xbb8

    #@19a
    move/from16 v28, v0

    #@19c
    goto/16 :goto_2

    #@19e
    .line 1794
    :sswitch_13
    const-string/jumbo v6, "VideoCapabilities"

    #@1a1
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v10, "Unsupported profile "

    #@1a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v9

    #@1ad
    .line 1795
    move-object/from16 v0, v43

    #@1af
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@1b1
    .line 1794
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v9

    #@1b5
    .line 1795
    const-string/jumbo v10, " for "

    #@1b8
    .line 1794
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v9

    #@1bc
    move-object/from16 v0, v42

    #@1be
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v9

    #@1c2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v9

    #@1c6
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c9
    .line 1796
    or-int/lit8 v37, v37, 0x2

    #@1cb
    .line 1797
    const/16 v45, 0x0

    #@1cd
    .line 1801
    :sswitch_14
    move/from16 v0, v28

    #@1cf
    mul-int/lit16 v0, v0, 0x3e8

    #@1d1
    move/from16 v28, v0

    #@1d3
    goto/16 :goto_2

    #@1d5
    .line 1817
    .end local v28    # "BR":I
    .end local v29    # "DPB":I
    .end local v33    # "FS":I
    .end local v35    # "MBPS":I
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v45    # "supported":Z
    :cond_1
    mul-int/lit8 v2, v5, 0x8

    #@1d7
    int-to-double v10, v2

    #@1d8
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@1db
    move-result-wide v10

    #@1dc
    double-to-int v3, v10

    #@1dd
    .line 1820
    .local v3, "maxLengthInBlocks":I
    move/from16 v0, v38

    #@1df
    int-to-long v6, v0

    #@1e0
    .line 1821
    const/16 v8, 0x10

    #@1e2
    const/16 v9, 0x10

    #@1e4
    .line 1822
    const/4 v10, 0x1

    #@1e5
    const/4 v11, 0x1

    #@1e6
    move-object/from16 v2, p0

    #@1e8
    move v4, v3

    #@1e9
    .line 1818
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@1ec
    .line 2194
    .end local v3    # "maxLengthInBlocks":I
    :goto_3
    const/4 v2, 0x1

    #@1ed
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f0
    move-result-object v2

    #@1f1
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f4
    move-result-object v4

    #@1f5
    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1f8
    move-result-object v2

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@1fd
    .line 2195
    move-object/from16 v0, p0

    #@1ff
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@201
    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@203
    or-int v4, v4, v37

    #@205
    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@207
    .line 1728
    return-void

    #@208
    .line 1823
    :cond_2
    const-string/jumbo v2, "video/mpeg2"

    #@20b
    move-object/from16 v0, v42

    #@20d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@210
    move-result v2

    #@211
    if-eqz v2, :cond_5

    #@213
    .line 1824
    const/16 v7, 0xb

    #@215
    .local v7, "maxWidth":I
    const/16 v8, 0x9

    #@217
    .local v8, "maxHeight":I
    const/16 v41, 0xf

    #@219
    .line 1825
    .local v41, "maxRate":I
    const/16 v5, 0x63

    #@21b
    .line 1826
    const/16 v38, 0x5cd

    #@21d
    .line 1827
    const v39, 0xfa00

    #@220
    .line 1828
    const/4 v2, 0x0

    #@221
    move-object/from16 v0, v44

    #@223
    array-length v4, v0

    #@224
    :goto_4
    if-ge v2, v4, :cond_4

    #@226
    aget-object v43, v44, v2

    #@228
    .line 1829
    .restart local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v35, 0x0

    #@22a
    .restart local v35    # "MBPS":I
    const/16 v33, 0x0

    #@22c
    .restart local v33    # "FS":I
    const/16 v28, 0x0

    #@22e
    .restart local v28    # "BR":I
    const/16 v32, 0x0

    #@230
    .local v32, "FR":I
    const/16 v36, 0x0

    #@232
    .local v36, "W":I
    const/16 v34, 0x0

    #@234
    .line 1830
    .local v34, "H":I
    const/16 v45, 0x1

    #@236
    .line 1831
    .restart local v45    # "supported":Z
    move-object/from16 v0, v43

    #@238
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@23a
    packed-switch v6, :pswitch_data_0

    #@23d
    .line 1870
    const-string/jumbo v6, "VideoCapabilities"

    #@240
    new-instance v9, Ljava/lang/StringBuilder;

    #@242
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@245
    const-string/jumbo v10, "Unrecognized profile "

    #@248
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v9

    #@24c
    .line 1871
    move-object/from16 v0, v43

    #@24e
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@250
    .line 1870
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@253
    move-result-object v9

    #@254
    .line 1871
    const-string/jumbo v10, " for "

    #@257
    .line 1870
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v9

    #@25b
    move-object/from16 v0, v42

    #@25d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v9

    #@261
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@264
    move-result-object v9

    #@265
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@268
    .line 1872
    or-int/lit8 v37, v37, 0x1

    #@26a
    .line 1874
    :goto_5
    if-eqz v45, :cond_3

    #@26c
    .line 1875
    and-int/lit8 v37, v37, -0x5

    #@26e
    .line 1877
    :cond_3
    move/from16 v0, v35

    #@270
    move/from16 v1, v38

    #@272
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@275
    move-result v38

    #@276
    .line 1878
    move/from16 v0, v33

    #@278
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@27b
    move-result v5

    #@27c
    .line 1879
    move/from16 v0, v28

    #@27e
    mul-int/lit16 v6, v0, 0x3e8

    #@280
    move/from16 v0, v39

    #@282
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@285
    move-result v39

    #@286
    .line 1880
    move/from16 v0, v36

    #@288
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@28b
    move-result v7

    #@28c
    .line 1881
    move/from16 v0, v34

    #@28e
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    #@291
    move-result v8

    #@292
    .line 1882
    move/from16 v0, v32

    #@294
    move/from16 v1, v41

    #@296
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@299
    move-result v41

    #@29a
    .line 1828
    add-int/lit8 v2, v2, 0x1

    #@29c
    goto :goto_4

    #@29d
    .line 1833
    :pswitch_0
    move-object/from16 v0, v43

    #@29f
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2a1
    packed-switch v6, :pswitch_data_1

    #@2a4
    .line 1837
    const-string/jumbo v6, "VideoCapabilities"

    #@2a7
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2ac
    const-string/jumbo v10, "Unrecognized profile/level "

    #@2af
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v9

    #@2b3
    .line 1838
    move-object/from16 v0, v43

    #@2b5
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@2b7
    .line 1837
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v9

    #@2bb
    .line 1838
    const-string/jumbo v10, "/"

    #@2be
    .line 1837
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v9

    #@2c2
    .line 1839
    move-object/from16 v0, v43

    #@2c4
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2c6
    .line 1837
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v9

    #@2ca
    .line 1839
    const-string/jumbo v10, " for "

    #@2cd
    .line 1837
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v9

    #@2d1
    move-object/from16 v0, v42

    #@2d3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v9

    #@2d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v9

    #@2db
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2de
    .line 1840
    or-int/lit8 v37, v37, 0x1

    #@2e0
    goto :goto_5

    #@2e1
    .line 1835
    :pswitch_1
    const/16 v32, 0x1e

    #@2e3
    const/16 v36, 0x2d

    #@2e5
    const/16 v34, 0x24

    #@2e7
    const v35, 0xbdd8

    #@2ea
    const/16 v33, 0x654

    #@2ec
    const/16 v28, 0x3a98

    #@2ee
    goto/16 :goto_5

    #@2f0
    .line 1844
    :pswitch_2
    move-object/from16 v0, v43

    #@2f2
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@2f4
    packed-switch v6, :pswitch_data_2

    #@2f7
    .line 1854
    const-string/jumbo v6, "VideoCapabilities"

    #@2fa
    new-instance v9, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v10, "Unrecognized profile/level "

    #@302
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v9

    #@306
    .line 1855
    move-object/from16 v0, v43

    #@308
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@30a
    .line 1854
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v9

    #@30e
    .line 1855
    const-string/jumbo v10, "/"

    #@311
    .line 1854
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v9

    #@315
    .line 1856
    move-object/from16 v0, v43

    #@317
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@319
    .line 1854
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31c
    move-result-object v9

    #@31d
    .line 1856
    const-string/jumbo v10, " for "

    #@320
    .line 1854
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@323
    move-result-object v9

    #@324
    move-object/from16 v0, v42

    #@326
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@329
    move-result-object v9

    #@32a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32d
    move-result-object v9

    #@32e
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@331
    .line 1857
    or-int/lit8 v37, v37, 0x1

    #@333
    goto/16 :goto_5

    #@335
    .line 1846
    :pswitch_3
    const/16 v32, 0x1e

    #@337
    const/16 v36, 0x16

    #@339
    const/16 v34, 0x12

    #@33b
    const/16 v35, 0x2e68

    #@33d
    const/16 v33, 0x18c

    #@33f
    const/16 v28, 0xfa0

    #@341
    goto/16 :goto_5

    #@343
    .line 1848
    :pswitch_4
    const/16 v32, 0x1e

    #@345
    const/16 v36, 0x2d

    #@347
    const/16 v34, 0x24

    #@349
    const v35, 0xbdd8

    #@34c
    const/16 v33, 0x654

    #@34e
    const/16 v28, 0x3a98

    #@350
    goto/16 :goto_5

    #@352
    .line 1850
    :pswitch_5
    const/16 v32, 0x3c

    #@354
    const/16 v36, 0x5a

    #@356
    const/16 v34, 0x44

    #@358
    const v35, 0x59a60

    #@35b
    const/16 v33, 0x17e8

    #@35d
    const v28, 0xea60

    #@360
    goto/16 :goto_5

    #@362
    .line 1852
    :pswitch_6
    const/16 v32, 0x3c

    #@364
    const/16 v36, 0x78

    #@366
    const/16 v34, 0x44

    #@368
    const v35, 0x77880

    #@36b
    const/16 v33, 0x1fe0

    #@36d
    const v28, 0x13880

    #@370
    goto/16 :goto_5

    #@372
    .line 1864
    :pswitch_7
    const-string/jumbo v6, "VideoCapabilities"

    #@375
    new-instance v9, Ljava/lang/StringBuilder;

    #@377
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37a
    const-string/jumbo v10, "Unsupported profile "

    #@37d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@380
    move-result-object v9

    #@381
    .line 1865
    move-object/from16 v0, v43

    #@383
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@385
    .line 1864
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@388
    move-result-object v9

    #@389
    .line 1865
    const-string/jumbo v10, " for "

    #@38c
    .line 1864
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38f
    move-result-object v9

    #@390
    move-object/from16 v0, v42

    #@392
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v9

    #@396
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@399
    move-result-object v9

    #@39a
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39d
    .line 1866
    or-int/lit8 v37, v37, 0x2

    #@39f
    .line 1867
    const/16 v45, 0x0

    #@3a1
    .line 1868
    goto/16 :goto_5

    #@3a3
    .line 1885
    .end local v28    # "BR":I
    .end local v32    # "FR":I
    .end local v33    # "FS":I
    .end local v34    # "H":I
    .end local v35    # "MBPS":I
    .end local v36    # "W":I
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v45    # "supported":Z
    :cond_4
    move/from16 v0, v38

    #@3a5
    int-to-long v10, v0

    #@3a6
    .line 1886
    const/16 v12, 0x10

    #@3a8
    const/16 v13, 0x10

    #@3aa
    .line 1887
    const/4 v14, 0x1

    #@3ab
    const/4 v15, 0x1

    #@3ac
    move-object/from16 v6, p0

    #@3ae
    move v9, v5

    #@3af
    .line 1884
    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@3b2
    .line 1888
    move-object/from16 v0, p0

    #@3b4
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3b6
    const/16 v4, 0xc

    #@3b8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3bb
    move-result-object v4

    #@3bc
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3bf
    move-result-object v6

    #@3c0
    invoke-virtual {v2, v4, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@3c3
    move-result-object v2

    #@3c4
    move-object/from16 v0, p0

    #@3c6
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3c8
    goto/16 :goto_3

    #@3ca
    .line 1889
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v41    # "maxRate":I
    :cond_5
    const-string/jumbo v2, "video/mp4v-es"

    #@3cd
    move-object/from16 v0, v42

    #@3cf
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d2
    move-result v2

    #@3d3
    if-eqz v2, :cond_8

    #@3d5
    .line 1890
    const/16 v7, 0xb

    #@3d7
    .restart local v7    # "maxWidth":I
    const/16 v8, 0x9

    #@3d9
    .restart local v8    # "maxHeight":I
    const/16 v41, 0xf

    #@3db
    .line 1891
    .restart local v41    # "maxRate":I
    const/16 v5, 0x63

    #@3dd
    .line 1892
    const/16 v38, 0x5cd

    #@3df
    .line 1893
    const v39, 0xfa00

    #@3e2
    .line 1894
    const/4 v2, 0x0

    #@3e3
    move-object/from16 v0, v44

    #@3e5
    array-length v4, v0

    #@3e6
    :goto_6
    if-ge v2, v4, :cond_7

    #@3e8
    aget-object v43, v44, v2

    #@3ea
    .line 1895
    .restart local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v35, 0x0

    #@3ec
    .restart local v35    # "MBPS":I
    const/16 v33, 0x0

    #@3ee
    .restart local v33    # "FS":I
    const/16 v28, 0x0

    #@3f0
    .restart local v28    # "BR":I
    const/16 v32, 0x0

    #@3f2
    .restart local v32    # "FR":I
    const/16 v36, 0x0

    #@3f4
    .restart local v36    # "W":I
    const/16 v34, 0x0

    #@3f6
    .line 1896
    .restart local v34    # "H":I
    const/16 v45, 0x1

    #@3f8
    .line 1897
    .restart local v45    # "supported":Z
    move-object/from16 v0, v43

    #@3fa
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@3fc
    sparse-switch v6, :sswitch_data_2

    #@3ff
    .line 1971
    const-string/jumbo v6, "VideoCapabilities"

    #@402
    new-instance v9, Ljava/lang/StringBuilder;

    #@404
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@407
    const-string/jumbo v10, "Unrecognized profile "

    #@40a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40d
    move-result-object v9

    #@40e
    .line 1972
    move-object/from16 v0, v43

    #@410
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@412
    .line 1971
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@415
    move-result-object v9

    #@416
    .line 1972
    const-string/jumbo v10, " for "

    #@419
    .line 1971
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v9

    #@41d
    move-object/from16 v0, v42

    #@41f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@422
    move-result-object v9

    #@423
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@426
    move-result-object v9

    #@427
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42a
    .line 1973
    or-int/lit8 v37, v37, 0x1

    #@42c
    .line 1975
    :goto_7
    if-eqz v45, :cond_6

    #@42e
    .line 1976
    and-int/lit8 v37, v37, -0x5

    #@430
    .line 1978
    :cond_6
    move/from16 v0, v35

    #@432
    move/from16 v1, v38

    #@434
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@437
    move-result v38

    #@438
    .line 1979
    move/from16 v0, v33

    #@43a
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@43d
    move-result v5

    #@43e
    .line 1980
    move/from16 v0, v28

    #@440
    mul-int/lit16 v6, v0, 0x3e8

    #@442
    move/from16 v0, v39

    #@444
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@447
    move-result v39

    #@448
    .line 1981
    move/from16 v0, v36

    #@44a
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@44d
    move-result v7

    #@44e
    .line 1982
    move/from16 v0, v34

    #@450
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    #@453
    move-result v8

    #@454
    .line 1983
    move/from16 v0, v32

    #@456
    move/from16 v1, v41

    #@458
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@45b
    move-result v41

    #@45c
    .line 1894
    add-int/lit8 v2, v2, 0x1

    #@45e
    goto :goto_6

    #@45f
    .line 1899
    :sswitch_15
    move-object/from16 v0, v43

    #@461
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@463
    sparse-switch v6, :sswitch_data_3

    #@466
    .line 1920
    const-string/jumbo v6, "VideoCapabilities"

    #@469
    new-instance v9, Ljava/lang/StringBuilder;

    #@46b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46e
    const-string/jumbo v10, "Unrecognized profile/level "

    #@471
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@474
    move-result-object v9

    #@475
    .line 1921
    move-object/from16 v0, v43

    #@477
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@479
    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47c
    move-result-object v9

    #@47d
    .line 1921
    const-string/jumbo v10, "/"

    #@480
    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@483
    move-result-object v9

    #@484
    .line 1922
    move-object/from16 v0, v43

    #@486
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@488
    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48b
    move-result-object v9

    #@48c
    .line 1922
    const-string/jumbo v10, " for "

    #@48f
    .line 1920
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v9

    #@493
    move-object/from16 v0, v42

    #@495
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@498
    move-result-object v9

    #@499
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49c
    move-result-object v9

    #@49d
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a0
    .line 1923
    or-int/lit8 v37, v37, 0x1

    #@4a2
    goto :goto_7

    #@4a3
    .line 1901
    :sswitch_16
    const/16 v32, 0xf

    #@4a5
    const/16 v36, 0xb

    #@4a7
    const/16 v34, 0x9

    #@4a9
    const/16 v35, 0x5cd

    #@4ab
    const/16 v33, 0x63

    #@4ad
    const/16 v28, 0x40

    #@4af
    goto/16 :goto_7

    #@4b1
    .line 1903
    :sswitch_17
    const/16 v32, 0x1e

    #@4b3
    const/16 v36, 0xb

    #@4b5
    const/16 v34, 0x9

    #@4b7
    const/16 v35, 0x5cd

    #@4b9
    const/16 v33, 0x63

    #@4bb
    const/16 v28, 0x40

    #@4bd
    goto/16 :goto_7

    #@4bf
    .line 1905
    :sswitch_18
    const/16 v32, 0x1e

    #@4c1
    const/16 v36, 0xb

    #@4c3
    const/16 v34, 0x9

    #@4c5
    const/16 v35, 0x5cd

    #@4c7
    const/16 v33, 0x63

    #@4c9
    const/16 v28, 0x80

    #@4cb
    goto/16 :goto_7

    #@4cd
    .line 1907
    :sswitch_19
    const/16 v32, 0x1e

    #@4cf
    const/16 v36, 0x16

    #@4d1
    const/16 v34, 0x12

    #@4d3
    const/16 v35, 0x1734

    #@4d5
    const/16 v33, 0x18c

    #@4d7
    const/16 v28, 0x80

    #@4d9
    goto/16 :goto_7

    #@4db
    .line 1909
    :sswitch_1a
    const/16 v32, 0x1e

    #@4dd
    const/16 v36, 0x16

    #@4df
    const/16 v34, 0x12

    #@4e1
    const/16 v35, 0x2e68

    #@4e3
    const/16 v33, 0x18c

    #@4e5
    const/16 v28, 0x180

    #@4e7
    goto/16 :goto_7

    #@4e9
    .line 1916
    :sswitch_1b
    const/16 v32, 0x1e

    #@4eb
    const/16 v36, 0x16

    #@4ed
    const/16 v34, 0x12

    #@4ef
    const/16 v35, 0x2e68

    #@4f1
    const/16 v33, 0x18c

    #@4f3
    const/16 v28, 0x180

    #@4f5
    .line 1917
    const/16 v45, 0x0

    #@4f7
    .line 1918
    goto/16 :goto_7

    #@4f9
    .line 1927
    :sswitch_1c
    move-object/from16 v0, v43

    #@4fb
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@4fd
    sparse-switch v6, :sswitch_data_4

    #@500
    .line 1945
    const-string/jumbo v6, "VideoCapabilities"

    #@503
    new-instance v9, Ljava/lang/StringBuilder;

    #@505
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@508
    const-string/jumbo v10, "Unrecognized profile/level "

    #@50b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v9

    #@50f
    .line 1946
    move-object/from16 v0, v43

    #@511
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@513
    .line 1945
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@516
    move-result-object v9

    #@517
    .line 1946
    const-string/jumbo v10, "/"

    #@51a
    .line 1945
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v9

    #@51e
    .line 1947
    move-object/from16 v0, v43

    #@520
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@522
    .line 1945
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@525
    move-result-object v9

    #@526
    .line 1947
    const-string/jumbo v10, " for "

    #@529
    .line 1945
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52c
    move-result-object v9

    #@52d
    move-object/from16 v0, v42

    #@52f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@532
    move-result-object v9

    #@533
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@536
    move-result-object v9

    #@537
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53a
    .line 1948
    or-int/lit8 v37, v37, 0x1

    #@53c
    goto/16 :goto_7

    #@53e
    .line 1930
    :sswitch_1d
    const/16 v32, 0x1e

    #@540
    const/16 v36, 0xb

    #@542
    const/16 v34, 0x9

    #@544
    const/16 v35, 0xb9a

    #@546
    const/16 v33, 0x63

    #@548
    const/16 v28, 0x80

    #@54a
    goto/16 :goto_7

    #@54c
    .line 1932
    :sswitch_1e
    const/16 v32, 0x1e

    #@54e
    const/16 v36, 0x16

    #@550
    const/16 v34, 0x12

    #@552
    const/16 v35, 0x1734

    #@554
    const/16 v33, 0x18c

    #@556
    const/16 v28, 0x180

    #@558
    goto/16 :goto_7

    #@55a
    .line 1934
    :sswitch_1f
    const/16 v32, 0x1e

    #@55c
    const/16 v36, 0x16

    #@55e
    const/16 v34, 0x12

    #@560
    const/16 v35, 0x2e68

    #@562
    const/16 v33, 0x18c

    #@564
    const/16 v28, 0x300

    #@566
    goto/16 :goto_7

    #@568
    .line 1941
    :sswitch_20
    const/16 v32, 0x1e

    #@56a
    const/16 v36, 0x2c

    #@56c
    const/16 v34, 0x24

    #@56e
    const/16 v35, 0x5cd0

    #@570
    const/16 v33, 0x318

    #@572
    const/16 v28, 0xbb8

    #@574
    goto/16 :goto_7

    #@576
    .line 1943
    :sswitch_21
    const/16 v32, 0x1e

    #@578
    const/16 v36, 0x2d

    #@57a
    const/16 v34, 0x24

    #@57c
    const v35, 0xbdd8

    #@57f
    const/16 v33, 0x654

    #@581
    const/16 v28, 0x1f40

    #@583
    goto/16 :goto_7

    #@585
    .line 1965
    :sswitch_22
    const-string/jumbo v6, "VideoCapabilities"

    #@588
    new-instance v9, Ljava/lang/StringBuilder;

    #@58a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@58d
    const-string/jumbo v10, "Unsupported profile "

    #@590
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v9

    #@594
    .line 1966
    move-object/from16 v0, v43

    #@596
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@598
    .line 1965
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59b
    move-result-object v9

    #@59c
    .line 1966
    const-string/jumbo v10, " for "

    #@59f
    .line 1965
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a2
    move-result-object v9

    #@5a3
    move-object/from16 v0, v42

    #@5a5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a8
    move-result-object v9

    #@5a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ac
    move-result-object v9

    #@5ad
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b0
    .line 1967
    or-int/lit8 v37, v37, 0x2

    #@5b2
    .line 1968
    const/16 v45, 0x0

    #@5b4
    .line 1969
    goto/16 :goto_7

    #@5b6
    .line 1986
    .end local v28    # "BR":I
    .end local v32    # "FR":I
    .end local v33    # "FS":I
    .end local v34    # "H":I
    .end local v35    # "MBPS":I
    .end local v36    # "W":I
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v45    # "supported":Z
    :cond_7
    move/from16 v0, v38

    #@5b8
    int-to-long v10, v0

    #@5b9
    .line 1987
    const/16 v12, 0x10

    #@5bb
    const/16 v13, 0x10

    #@5bd
    .line 1988
    const/4 v14, 0x1

    #@5be
    const/4 v15, 0x1

    #@5bf
    move-object/from16 v6, p0

    #@5c1
    move v9, v5

    #@5c2
    .line 1985
    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@5c5
    .line 1989
    move-object/from16 v0, p0

    #@5c7
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@5c9
    const/16 v4, 0xc

    #@5cb
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5ce
    move-result-object v4

    #@5cf
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d2
    move-result-object v6

    #@5d3
    invoke-virtual {v2, v4, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@5d6
    move-result-object v2

    #@5d7
    move-object/from16 v0, p0

    #@5d9
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@5db
    goto/16 :goto_3

    #@5dd
    .line 1990
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v41    # "maxRate":I
    :cond_8
    const-string/jumbo v2, "video/3gpp"

    #@5e0
    move-object/from16 v0, v42

    #@5e2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e5
    move-result v2

    #@5e6
    if-eqz v2, :cond_a

    #@5e8
    .line 1991
    const/16 v7, 0xb

    #@5ea
    .restart local v7    # "maxWidth":I
    const/16 v8, 0x9

    #@5ec
    .restart local v8    # "maxHeight":I
    const/16 v41, 0xf

    #@5ee
    .line 1992
    .restart local v41    # "maxRate":I
    const/16 v5, 0x63

    #@5f0
    .line 1993
    const/16 v38, 0x5cd

    #@5f2
    .line 1994
    const v39, 0xfa00

    #@5f5
    .line 1995
    const/4 v2, 0x0

    #@5f6
    move-object/from16 v0, v44

    #@5f8
    array-length v4, v0

    #@5f9
    :goto_8
    if-ge v2, v4, :cond_9

    #@5fb
    aget-object v43, v44, v2

    #@5fd
    .line 1996
    .restart local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v35, 0x0

    #@5ff
    .restart local v35    # "MBPS":I
    const/16 v28, 0x0

    #@601
    .restart local v28    # "BR":I
    const/16 v32, 0x0

    #@603
    .restart local v32    # "FR":I
    const/16 v36, 0x0

    #@605
    .restart local v36    # "W":I
    const/16 v34, 0x0

    #@607
    .line 1997
    .restart local v34    # "H":I
    move-object/from16 v0, v43

    #@609
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@60b
    sparse-switch v6, :sswitch_data_5

    #@60e
    .line 2022
    const-string/jumbo v6, "VideoCapabilities"

    #@611
    new-instance v9, Ljava/lang/StringBuilder;

    #@613
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@616
    const-string/jumbo v10, "Unrecognized profile/level "

    #@619
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61c
    move-result-object v9

    #@61d
    move-object/from16 v0, v43

    #@61f
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@621
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@624
    move-result-object v9

    #@625
    .line 2023
    const-string/jumbo v10, "/"

    #@628
    .line 2022
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62b
    move-result-object v9

    #@62c
    .line 2023
    move-object/from16 v0, v43

    #@62e
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@630
    .line 2022
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@633
    move-result-object v9

    #@634
    .line 2023
    const-string/jumbo v10, " for "

    #@637
    .line 2022
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63a
    move-result-object v9

    #@63b
    move-object/from16 v0, v42

    #@63d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@640
    move-result-object v9

    #@641
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@644
    move-result-object v9

    #@645
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@648
    .line 2024
    or-int/lit8 v37, v37, 0x1

    #@64a
    .line 2026
    :goto_9
    move-object/from16 v0, v43

    #@64c
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@64e
    sparse-switch v6, :sswitch_data_6

    #@651
    .line 2038
    const-string/jumbo v6, "VideoCapabilities"

    #@654
    new-instance v9, Ljava/lang/StringBuilder;

    #@656
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    const-string/jumbo v10, "Unrecognized profile "

    #@65c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v9

    #@660
    .line 2039
    move-object/from16 v0, v43

    #@662
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@664
    .line 2038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@667
    move-result-object v9

    #@668
    .line 2039
    const-string/jumbo v10, " for "

    #@66b
    .line 2038
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66e
    move-result-object v9

    #@66f
    move-object/from16 v0, v42

    #@671
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@674
    move-result-object v9

    #@675
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@678
    move-result-object v9

    #@679
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67c
    .line 2040
    or-int/lit8 v37, v37, 0x1

    #@67e
    .line 2042
    :sswitch_23
    and-int/lit8 v37, v37, -0x5

    #@680
    .line 2043
    move/from16 v0, v35

    #@682
    move/from16 v1, v38

    #@684
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@687
    move-result v38

    #@688
    .line 2044
    mul-int v6, v36, v34

    #@68a
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@68d
    move-result v5

    #@68e
    .line 2045
    const v6, 0xfa00

    #@691
    mul-int v6, v6, v28

    #@693
    move/from16 v0, v39

    #@695
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@698
    move-result v39

    #@699
    .line 2046
    move/from16 v0, v36

    #@69b
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    #@69e
    move-result v7

    #@69f
    .line 2047
    move/from16 v0, v34

    #@6a1
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    #@6a4
    move-result v8

    #@6a5
    .line 2048
    move/from16 v0, v32

    #@6a7
    move/from16 v1, v41

    #@6a9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@6ac
    move-result v41

    #@6ad
    .line 1995
    add-int/lit8 v2, v2, 0x1

    #@6af
    goto/16 :goto_8

    #@6b1
    .line 1999
    :sswitch_24
    const/16 v32, 0xf

    #@6b3
    const/16 v36, 0xb

    #@6b5
    const/16 v34, 0x9

    #@6b7
    const/16 v28, 0x1

    #@6b9
    const/16 v6, 0x63

    #@6bb
    mul-int/lit8 v35, v6, 0xf

    #@6bd
    goto :goto_9

    #@6be
    .line 2002
    :sswitch_25
    const/16 v32, 0x1e

    #@6c0
    const/16 v36, 0x16

    #@6c2
    const/16 v34, 0x12

    #@6c4
    const/16 v28, 0x2

    #@6c6
    const/16 v6, 0x18c

    #@6c8
    mul-int/lit8 v35, v6, 0x1e

    #@6ca
    goto :goto_9

    #@6cb
    .line 2005
    :sswitch_26
    const/16 v32, 0x1e

    #@6cd
    const/16 v36, 0x16

    #@6cf
    const/16 v34, 0x12

    #@6d1
    const/16 v28, 0x6

    #@6d3
    const/16 v6, 0x18c

    #@6d5
    mul-int/lit8 v35, v6, 0x1e

    #@6d7
    goto/16 :goto_9

    #@6d9
    .line 2008
    :sswitch_27
    const/16 v32, 0x1e

    #@6db
    const/16 v36, 0x16

    #@6dd
    const/16 v34, 0x12

    #@6df
    const/16 v28, 0x20

    #@6e1
    const/16 v6, 0x18c

    #@6e3
    mul-int/lit8 v35, v6, 0x1e

    #@6e5
    goto/16 :goto_9

    #@6e7
    .line 2011
    :sswitch_28
    const/16 v32, 0x1e

    #@6e9
    const/16 v36, 0xb

    #@6eb
    const/16 v34, 0x9

    #@6ed
    const/16 v28, 0x2

    #@6ef
    const/16 v6, 0x63

    #@6f1
    mul-int/lit8 v35, v6, 0x1e

    #@6f3
    goto/16 :goto_9

    #@6f5
    .line 2014
    :sswitch_29
    const/16 v32, 0x3c

    #@6f7
    const/16 v36, 0x16

    #@6f9
    const/16 v34, 0x12

    #@6fb
    const/16 v28, 0x40

    #@6fd
    const/16 v6, 0x18c

    #@6ff
    mul-int/lit8 v35, v6, 0x32

    #@701
    goto/16 :goto_9

    #@703
    .line 2017
    :sswitch_2a
    const/16 v32, 0x3c

    #@705
    const/16 v36, 0x2d

    #@707
    const/16 v34, 0x12

    #@709
    const/16 v28, 0x80

    #@70b
    const/16 v6, 0x32a

    #@70d
    mul-int/lit8 v35, v6, 0x32

    #@70f
    goto/16 :goto_9

    #@711
    .line 2020
    :sswitch_2b
    const/16 v32, 0x3c

    #@713
    const/16 v36, 0x2d

    #@715
    const/16 v34, 0x24

    #@717
    const/16 v28, 0x100

    #@719
    const/16 v6, 0x654

    #@71b
    mul-int/lit8 v35, v6, 0x32

    #@71d
    goto/16 :goto_9

    #@71f
    .line 2051
    .end local v28    # "BR":I
    .end local v32    # "FR":I
    .end local v34    # "H":I
    .end local v35    # "MBPS":I
    .end local v36    # "W":I
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_9
    move/from16 v0, v38

    #@721
    int-to-long v10, v0

    #@722
    .line 2052
    const/16 v12, 0x10

    #@724
    const/16 v13, 0x10

    #@726
    .line 2053
    const/4 v14, 0x1

    #@727
    const/4 v15, 0x1

    #@728
    move-object/from16 v6, p0

    #@72a
    move v9, v5

    #@72b
    .line 2050
    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@72e
    .line 2054
    const/4 v2, 0x1

    #@72f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@732
    move-result-object v2

    #@733
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@736
    move-result-object v4

    #@737
    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@73a
    move-result-object v2

    #@73b
    move-object/from16 v0, p0

    #@73d
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@73f
    goto/16 :goto_3

    #@741
    .line 2055
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v41    # "maxRate":I
    :cond_a
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    #@744
    move-object/from16 v0, v42

    #@746
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@749
    move-result v2

    #@74a
    if-nez v2, :cond_b

    #@74c
    .line 2056
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    #@74f
    move-object/from16 v0, v42

    #@751
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@754
    move-result v2

    #@755
    .line 2055
    if-eqz v2, :cond_e

    #@757
    .line 2057
    :cond_b
    const v5, 0x7fffffff

    #@75a
    .line 2060
    const v39, 0x5f5e100

    #@75d
    .line 2064
    const/4 v2, 0x0

    #@75e
    move-object/from16 v0, v44

    #@760
    array-length v4, v0

    #@761
    :goto_a
    if-ge v2, v4, :cond_c

    #@763
    aget-object v43, v44, v2

    #@765
    .line 2065
    .restart local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v43

    #@767
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@769
    packed-switch v6, :pswitch_data_3

    #@76c
    .line 2072
    :pswitch_8
    const-string/jumbo v6, "VideoCapabilities"

    #@76f
    new-instance v9, Ljava/lang/StringBuilder;

    #@771
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@774
    const-string/jumbo v10, "Unrecognized level "

    #@777
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77a
    move-result-object v9

    #@77b
    .line 2073
    move-object/from16 v0, v43

    #@77d
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@77f
    .line 2072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@782
    move-result-object v9

    #@783
    .line 2073
    const-string/jumbo v10, " for "

    #@786
    .line 2072
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@789
    move-result-object v9

    #@78a
    move-object/from16 v0, v42

    #@78c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78f
    move-result-object v9

    #@790
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@793
    move-result-object v9

    #@794
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@797
    .line 2074
    or-int/lit8 v37, v37, 0x1

    #@799
    .line 2076
    :pswitch_9
    move-object/from16 v0, v43

    #@79b
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@79d
    packed-switch v6, :pswitch_data_4

    #@7a0
    .line 2080
    const-string/jumbo v6, "VideoCapabilities"

    #@7a3
    new-instance v9, Ljava/lang/StringBuilder;

    #@7a5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a8
    const-string/jumbo v10, "Unrecognized profile "

    #@7ab
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ae
    move-result-object v9

    #@7af
    .line 2081
    move-object/from16 v0, v43

    #@7b1
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@7b3
    .line 2080
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b6
    move-result-object v9

    #@7b7
    .line 2081
    const-string/jumbo v10, " for "

    #@7ba
    .line 2080
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7bd
    move-result-object v9

    #@7be
    move-object/from16 v0, v42

    #@7c0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c3
    move-result-object v9

    #@7c4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c7
    move-result-object v9

    #@7c8
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7cb
    .line 2082
    or-int/lit8 v37, v37, 0x1

    #@7cd
    .line 2084
    :pswitch_a
    and-int/lit8 v37, v37, -0x5

    #@7cf
    .line 2064
    add-int/lit8 v2, v2, 0x1

    #@7d1
    goto :goto_a

    #@7d2
    .line 2088
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    #@7d5
    move-object/from16 v0, v42

    #@7d7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7da
    move-result v2

    #@7db
    if-eqz v2, :cond_d

    #@7dd
    const/16 v16, 0x10

    #@7df
    .line 2089
    .local v16, "blockSize":I
    :goto_b
    const/16 v11, 0x7fff

    #@7e1
    const/16 v12, 0x7fff

    #@7e3
    .line 2090
    const-wide/32 v14, 0x7fffffff

    #@7e6
    .line 2091
    const/16 v18, 0x1

    #@7e8
    const/16 v19, 0x1

    #@7ea
    move-object/from16 v10, p0

    #@7ec
    move v13, v5

    #@7ed
    move/from16 v17, v16

    #@7ef
    .line 2089
    invoke-direct/range {v10 .. v19}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@7f2
    goto/16 :goto_3

    #@7f4
    .line 2088
    .end local v16    # "blockSize":I
    :cond_d
    const/16 v16, 0x8

    #@7f6
    .restart local v16    # "blockSize":I
    goto :goto_b

    #@7f7
    .line 2092
    .end local v16    # "blockSize":I
    :cond_e
    const-string/jumbo v2, "video/hevc"

    #@7fa
    move-object/from16 v0, v42

    #@7fc
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7ff
    move-result v2

    #@800
    if-eqz v2, :cond_10

    #@802
    .line 2093
    const v5, 0x9000

    #@805
    .line 2094
    const v38, 0x87000

    #@808
    .line 2095
    const v39, 0x1f400

    #@80b
    .line 2096
    const/4 v2, 0x0

    #@80c
    move-object/from16 v0, v44

    #@80e
    array-length v4, v0

    #@80f
    :goto_c
    if-ge v2, v4, :cond_f

    #@811
    aget-object v43, v44, v2

    #@813
    .line 2097
    .restart local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v30, 0x0

    #@815
    .line 2098
    .local v30, "FR":D
    const/16 v33, 0x0

    #@817
    .line 2099
    .restart local v33    # "FS":I
    const/16 v28, 0x0

    #@819
    .line 2100
    .restart local v28    # "BR":I
    move-object/from16 v0, v43

    #@81b
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@81d
    sparse-switch v6, :sswitch_data_7

    #@820
    .line 2149
    const-string/jumbo v6, "VideoCapabilities"

    #@823
    new-instance v9, Ljava/lang/StringBuilder;

    #@825
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@828
    const-string/jumbo v10, "Unrecognized level "

    #@82b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82e
    move-result-object v9

    #@82f
    .line 2150
    move-object/from16 v0, v43

    #@831
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    #@833
    .line 2149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@836
    move-result-object v9

    #@837
    .line 2150
    const-string/jumbo v10, " for "

    #@83a
    .line 2149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83d
    move-result-object v9

    #@83e
    move-object/from16 v0, v42

    #@840
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@843
    move-result-object v9

    #@844
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@847
    move-result-object v9

    #@848
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84b
    .line 2151
    or-int/lit8 v37, v37, 0x1

    #@84d
    .line 2153
    :goto_d
    move-object/from16 v0, v43

    #@84f
    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@851
    packed-switch v6, :pswitch_data_5

    #@854
    .line 2158
    const-string/jumbo v6, "VideoCapabilities"

    #@857
    new-instance v9, Ljava/lang/StringBuilder;

    #@859
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@85c
    const-string/jumbo v10, "Unrecognized profile "

    #@85f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@862
    move-result-object v9

    #@863
    .line 2159
    move-object/from16 v0, v43

    #@865
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@867
    .line 2158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86a
    move-result-object v9

    #@86b
    .line 2159
    const-string/jumbo v10, " for "

    #@86e
    .line 2158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@871
    move-result-object v9

    #@872
    move-object/from16 v0, v42

    #@874
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@877
    move-result-object v9

    #@878
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87b
    move-result-object v9

    #@87c
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@87f
    .line 2160
    or-int/lit8 v37, v37, 0x1

    #@881
    .line 2170
    :pswitch_b
    and-int/lit8 v37, v37, -0x5

    #@883
    .line 2171
    move/from16 v0, v33

    #@885
    int-to-double v10, v0

    #@886
    mul-double v10, v10, v30

    #@888
    double-to-int v6, v10

    #@889
    move/from16 v0, v38

    #@88b
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@88e
    move-result v38

    #@88f
    .line 2172
    move/from16 v0, v33

    #@891
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@894
    move-result v5

    #@895
    .line 2173
    move/from16 v0, v28

    #@897
    mul-int/lit16 v6, v0, 0x3e8

    #@899
    move/from16 v0, v39

    #@89b
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@89e
    move-result v39

    #@89f
    .line 2096
    add-int/lit8 v2, v2, 0x1

    #@8a1
    goto/16 :goto_c

    #@8a3
    .line 2103
    :sswitch_2c
    const-wide/high16 v30, 0x402e000000000000L    # 15.0

    #@8a5
    const v33, 0x9000

    #@8a8
    const/16 v28, 0x80

    #@8aa
    goto :goto_d

    #@8ab
    .line 2106
    :sswitch_2d
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8ad
    const v33, 0x1e000

    #@8b0
    const/16 v28, 0x5dc

    #@8b2
    goto :goto_d

    #@8b3
    .line 2109
    :sswitch_2e
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8b5
    const v33, 0x3c000

    #@8b8
    const/16 v28, 0xbb8

    #@8ba
    goto :goto_d

    #@8bb
    .line 2112
    :sswitch_2f
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8bd
    const v33, 0x87000

    #@8c0
    const/16 v28, 0x1770

    #@8c2
    goto :goto_d

    #@8c3
    .line 2115
    :sswitch_30
    const-wide v30, 0x4040e00000000000L    # 33.75

    #@8c8
    const/high16 v33, 0xf0000

    #@8ca
    const/16 v28, 0x2710

    #@8cc
    goto :goto_d

    #@8cd
    .line 2117
    :sswitch_31
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8cf
    const/high16 v33, 0x220000

    #@8d1
    const/16 v28, 0x2ee0

    #@8d3
    goto/16 :goto_d

    #@8d5
    .line 2119
    :sswitch_32
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8d7
    const/high16 v33, 0x220000

    #@8d9
    const/16 v28, 0x7530

    #@8db
    goto/16 :goto_d

    #@8dd
    .line 2121
    :sswitch_33
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@8df
    const/high16 v33, 0x220000

    #@8e1
    const/16 v28, 0x4e20

    #@8e3
    goto/16 :goto_d

    #@8e5
    .line 2123
    :sswitch_34
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@8e7
    const/high16 v33, 0x220000

    #@8e9
    const v28, 0xc350

    #@8ec
    goto/16 :goto_d

    #@8ee
    .line 2125
    :sswitch_35
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8f0
    const/high16 v33, 0x880000

    #@8f2
    const/16 v28, 0x61a8

    #@8f4
    goto/16 :goto_d

    #@8f6
    .line 2127
    :sswitch_36
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@8f8
    const/high16 v33, 0x880000

    #@8fa
    const v28, 0x186a0

    #@8fd
    goto/16 :goto_d

    #@8ff
    .line 2129
    :sswitch_37
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@901
    const/high16 v33, 0x880000

    #@903
    const v28, 0x9c40

    #@906
    goto/16 :goto_d

    #@908
    .line 2131
    :sswitch_38
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@90a
    const/high16 v33, 0x880000

    #@90c
    const v28, 0x27100

    #@90f
    goto/16 :goto_d

    #@911
    .line 2133
    :sswitch_39
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    #@913
    const/high16 v33, 0x880000

    #@915
    const v28, 0xea60

    #@918
    goto/16 :goto_d

    #@91a
    .line 2135
    :sswitch_3a
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    #@91c
    const/high16 v33, 0x880000

    #@91e
    const v28, 0x3a980

    #@921
    goto/16 :goto_d

    #@923
    .line 2137
    :sswitch_3b
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@925
    const/high16 v33, 0x2200000

    #@927
    const v28, 0xea60

    #@92a
    goto/16 :goto_d

    #@92c
    .line 2139
    :sswitch_3c
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    #@92e
    const/high16 v33, 0x2200000

    #@930
    const v28, 0x3a980

    #@933
    goto/16 :goto_d

    #@935
    .line 2141
    :sswitch_3d
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@937
    const/high16 v33, 0x2200000

    #@939
    const v28, 0x1d4c0

    #@93c
    goto/16 :goto_d

    #@93e
    .line 2143
    :sswitch_3e
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    #@940
    const/high16 v33, 0x2200000

    #@942
    const v28, 0x75300

    #@945
    goto/16 :goto_d

    #@947
    .line 2145
    :sswitch_3f
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    #@949
    const/high16 v33, 0x2200000

    #@94b
    const v28, 0x3a980

    #@94e
    goto/16 :goto_d

    #@950
    .line 2147
    :sswitch_40
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    #@952
    const/high16 v33, 0x2200000

    #@954
    const v28, 0xc3500

    #@957
    goto/16 :goto_d

    #@959
    .line 2176
    .end local v28    # "BR":I
    .end local v30    # "FR":D
    .end local v33    # "FS":I
    .end local v43    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_f
    mul-int/lit8 v2, v5, 0x8

    #@95b
    int-to-double v10, v2

    #@95c
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@95f
    move-result-wide v10

    #@960
    double-to-int v3, v10

    #@961
    .line 2178
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v2, 0x40

    #@963
    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    #@966
    move-result v5

    #@967
    .line 2179
    const/16 v2, 0x40

    #@969
    move/from16 v0, v38

    #@96b
    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    #@96e
    move-result v38

    #@96f
    .line 2180
    const/16 v2, 0x8

    #@971
    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    #@974
    move-result v3

    #@975
    .line 2184
    move/from16 v0, v38

    #@977
    int-to-long v0, v0

    #@978
    move-wide/from16 v22, v0

    #@97a
    .line 2185
    const/16 v24, 0x8

    #@97c
    const/16 v25, 0x8

    #@97e
    .line 2186
    const/16 v26, 0x1

    #@980
    const/16 v27, 0x1

    #@982
    move-object/from16 v18, p0

    #@984
    move/from16 v19, v3

    #@986
    move/from16 v20, v3

    #@988
    move/from16 v21, v5

    #@98a
    .line 2182
    invoke-direct/range {v18 .. v27}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@98d
    goto/16 :goto_3

    #@98f
    .line 2188
    .end local v3    # "maxLengthInBlocks":I
    :cond_10
    const-string/jumbo v2, "VideoCapabilities"

    #@992
    new-instance v4, Ljava/lang/StringBuilder;

    #@994
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@997
    const-string/jumbo v6, "Unsupported mime "

    #@99a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99d
    move-result-object v4

    #@99e
    move-object/from16 v0, v42

    #@9a0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a3
    move-result-object v4

    #@9a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a7
    move-result-object v4

    #@9a8
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9ab
    .line 2191
    const v39, 0xfa00

    #@9ae
    .line 2192
    const/16 v37, 0x6

    #@9b0
    goto/16 :goto_3

    #@9b2
    .line 1746
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

    #@9f8
    .line 1786
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

    #@a16
    .line 1831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    #@a26
    .line 1833
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    #@a2c
    .line 1844
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@a38
    .line 1897
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_22
        0x4 -> :sswitch_22
        0x8 -> :sswitch_22
        0x10 -> :sswitch_22
        0x20 -> :sswitch_22
        0x40 -> :sswitch_22
        0x80 -> :sswitch_22
        0x100 -> :sswitch_22
        0x200 -> :sswitch_22
        0x400 -> :sswitch_22
        0x800 -> :sswitch_22
        0x1000 -> :sswitch_22
        0x2000 -> :sswitch_22
        0x4000 -> :sswitch_22
        0x8000 -> :sswitch_1c
    .end sparse-switch

    #@a7a
    .line 1899
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_19
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1b
    .end sparse-switch

    #@a9c
    .line 1927
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1f
        0x20 -> :sswitch_20
        0x40 -> :sswitch_20
        0x80 -> :sswitch_21
    .end sparse-switch

    #@aba
    .line 1997
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_25
        0x4 -> :sswitch_26
        0x8 -> :sswitch_27
        0x10 -> :sswitch_28
        0x20 -> :sswitch_29
        0x40 -> :sswitch_2a
        0x80 -> :sswitch_2b
    .end sparse-switch

    #@adc
    .line 2026
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_23
        0x4 -> :sswitch_23
        0x8 -> :sswitch_23
        0x10 -> :sswitch_23
        0x20 -> :sswitch_23
        0x40 -> :sswitch_23
        0x80 -> :sswitch_23
        0x100 -> :sswitch_23
    .end sparse-switch

    #@b02
    .line 2065
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    #@b16
    .line 2076
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    #@b1c
    .line 2100
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2e
        0x20 -> :sswitch_2e
        0x40 -> :sswitch_2f
        0x80 -> :sswitch_2f
        0x100 -> :sswitch_30
        0x200 -> :sswitch_30
        0x400 -> :sswitch_31
        0x800 -> :sswitch_32
        0x1000 -> :sswitch_33
        0x2000 -> :sswitch_34
        0x4000 -> :sswitch_35
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_37
        0x20000 -> :sswitch_38
        0x40000 -> :sswitch_39
        0x80000 -> :sswitch_3a
        0x100000 -> :sswitch_3b
        0x200000 -> :sswitch_3c
        0x400000 -> :sswitch_3d
        0x800000 -> :sswitch_3e
        0x1000000 -> :sswitch_3f
        0x2000000 -> :sswitch_40
    .end sparse-switch

    #@b86
    .line 2153
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 6
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
    .line 1713
    invoke-direct {p0, p8, p9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    #@3
    .line 1715
    const/4 v0, 0x1

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@f
    move-result-object v3

    #@10
    .line 1716
    const-wide/16 v0, 0x1

    #@12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v0

    #@16
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1d
    move-result-object v4

    #@1e
    .line 1718
    new-instance v0, Landroid/util/Rational;

    #@20
    const/4 v1, 0x1

    #@21
    invoke-direct {v0, v1, p2}, Landroid/util/Rational;-><init>(II)V

    #@24
    .line 1719
    new-instance v1, Landroid/util/Rational;

    #@26
    const/4 v2, 0x1

    #@27
    invoke-direct {v1, p1, v2}, Landroid/util/Rational;-><init>(II)V

    #@2a
    .line 1717
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@2d
    move-result-object v5

    #@2e
    move-object v0, p0

    #@2f
    move v1, p6

    #@30
    move v2, p7

    #@31
    .line 1714
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    #@34
    .line 1721
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@36
    .line 1722
    const/4 v1, 0x1

    #@37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v1

    #@3b
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@3d
    div-int/2addr v2, p6

    #@3e
    div-int v2, p1, v2

    #@40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    .line 1721
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@47
    move-result-object v0

    #@48
    .line 1720
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@4a
    .line 1724
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@4c
    .line 1725
    const/4 v1, 0x1

    #@4d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v1

    #@51
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@53
    div-int/2addr v2, p7

    #@54
    div-int v2, p2, v2

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v2

    #@5a
    .line 1724
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@5d
    move-result-object v0

    #@5e
    .line 1723
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@60
    .line 1712
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 1348
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    #@2
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    #@5
    .line 1349
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    #@8
    .line 1350
    return-object v0
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
    .line 1230
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    #@3
    move-result-object v2

    #@4
    .line 1231
    .local v2, "size":Landroid/util/Size;
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    #@6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/Range;

    #@c
    .line 1232
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@13
    move-result v4

    #@14
    mul-int/2addr v3, v4

    #@15
    int-to-double v4, v3

    #@16
    mul-int v3, p1, p2

    #@18
    int-to-double v6, v3

    #@19
    div-double/2addr v4, v6

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1d
    move-result-object v1

    #@1e
    .line 1233
    .local v1, "ratio":Ljava/lang/Double;
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/Long;

    #@24
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v4

    #@28
    long-to-double v4, v4

    #@29
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@2c
    move-result-wide v6

    #@2d
    mul-double/2addr v4, v6

    #@2e
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Ljava/lang/Long;

    #@38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@3b
    move-result-wide v6

    #@3c
    long-to-double v6, v6

    #@3d
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@40
    move-result-wide v8

    #@41
    mul-double/2addr v6, v8

    #@42
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@45
    move-result-object v3

    #@46
    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@49
    move-result-object v3

    #@4a
    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1215
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    #@3
    move-result v5

    #@4
    .line 1216
    .local v5, "targetBlockCount":I
    const/4 v0, 0x0

    #@5
    .line 1217
    .local v0, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    #@8
    .line 1218
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
    .line 1220
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
    .line 1219
    sub-int v6, v5, v6

    #@2c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    #@2f
    move-result v1

    #@30
    .line 1221
    .local v1, "diff":I
    if-ge v1, v2, :cond_0

    #@32
    .line 1222
    move v2, v1

    #@33
    .line 1223
    move-object v0, v3

    #@34
    .local v0, "closestSize":Landroid/util/Size;
    goto :goto_0

    #@35
    .line 1226
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
    .line 1210
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
    .line 1408
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    #@2
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1409
    .local v5, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string/jumbo v3, "measured-frame-rate-"

    #@8
    .line 1410
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    .line 1411
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
    .line 1413
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v10, "measured-frame-rate-"

    #@1f
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v10

    #@23
    if-eqz v10, :cond_0

    #@25
    .line 1416
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
    .line 1417
    .local v8, "subKey":Ljava/lang/String;
    const-string/jumbo v10, "-"

    #@33
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    .line 1418
    .local v9, "temp":[Ljava/lang/String;
    array-length v10, v9

    #@38
    const/4 v11, 0x5

    #@39
    if-ne v10, v11, :cond_0

    #@3b
    .line 1421
    const/4 v10, 0x3

    #@3c
    aget-object v7, v9, v10

    #@3e
    .line 1422
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v10, 0x0

    #@3f
    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    #@42
    move-result-object v6

    #@43
    .line 1423
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
    .line 1426
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
    .line 1427
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
    .line 1430
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    goto :goto_0

    #@7f
    .line 1432
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
    .line 1383
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@7
    .line 1385
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@d
    .line 1386
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@13
    .line 1387
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@19
    .line 1389
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@1f
    .line 1390
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@25
    .line 1393
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2b
    .line 1394
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@31
    .line 1396
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@37
    .line 1397
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@3d
    .line 1400
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@3f
    .line 1401
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@41
    .line 1402
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@43
    .line 1403
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@45
    .line 1404
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
    .line 1382
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 26
    .param p1, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v21

    #@4
    .line 1437
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
    .line 1438
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
    .line 1439
    .local v12, "alignment":Landroid/util/Size;
    const/16 v17, 0x0

    #@22
    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    #@24
    .local v25, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    #@26
    .line 1440
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    #@28
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    #@29
    .line 1441
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    #@2a
    .line 1442
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    #@2c
    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v15, 0x0

    #@2d
    .line 1444
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
    .line 1445
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
    .line 1446
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
    .line 1448
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
    .line 1449
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
    .line 1451
    const-string/jumbo v2, "size-range"

    #@74
    move-object/from16 v0, v21

    #@76
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v22

    #@7a
    .line 1452
    .local v22, "o":Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    #@7d
    move-result-object v24

    #@7e
    .line 1453
    .local v24, "sizeRange":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v24, :cond_0

    #@80
    .line 1456
    :try_start_0
    move-object/from16 v0, v24

    #@82
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@84
    check-cast v2, Landroid/util/Size;

    #@86
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@89
    move-result v2

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v3

    #@8e
    .line 1457
    move-object/from16 v0, v24

    #@90
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@92
    check-cast v2, Landroid/util/Size;

    #@94
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@97
    move-result v2

    #@98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b
    move-result-object v2

    #@9c
    .line 1455
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@9f
    move-result-object v25

    #@a0
    .line 1459
    .local v25, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, v24

    #@a2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a4
    check-cast v2, Landroid/util/Size;

    #@a6
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@a9
    move-result v2

    #@aa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v3

    #@ae
    .line 1460
    move-object/from16 v0, v24

    #@b0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@b2
    check-cast v2, Landroid/util/Size;

    #@b4
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@b7
    move-result v2

    #@b8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bb
    move-result-object v2

    #@bc
    .line 1458
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@bf
    move-result-object v20

    #@c0
    .line 1472
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v25    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    const-string/jumbo v2, "feature-can-swap-width-height"

    #@c3
    move-object/from16 v0, v21

    #@c5
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@c8
    move-result v2

    #@c9
    if-eqz v2, :cond_1

    #@cb
    .line 1473
    if-eqz v25, :cond_c

    #@cd
    .line 1475
    invoke-virtual/range {v25 .. v25}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@d0
    move-result-object v2

    #@d1
    check-cast v2, Ljava/lang/Integer;

    #@d3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@d6
    move-result v3

    #@d7
    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@da
    move-result-object v2

    #@db
    check-cast v2, Ljava/lang/Integer;

    #@dd
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@e0
    move-result v2

    #@e1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@e4
    move-result v2

    #@e5
    .line 1474
    move-object/from16 v0, p0

    #@e7
    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@e9
    .line 1476
    move-object/from16 v0, v25

    #@eb
    move-object/from16 v1, v20

    #@ed
    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    #@f0
    move-result-object v20

    #@f1
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v25, v20

    #@f3
    .line 1486
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    const-string/jumbo v2, "block-aspect-ratio-range"

    #@f6
    move-object/from16 v0, v21

    #@f8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    move-result-object v2

    #@fc
    const/4 v3, 0x0

    #@fd
    .line 1485
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@100
    move-result-object v23

    #@101
    .line 1488
    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    #@104
    move-object/from16 v0, v21

    #@106
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    move-result-object v2

    #@10a
    const/4 v3, 0x0

    #@10b
    .line 1487
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@10e
    move-result-object v15

    #@10f
    .line 1489
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "frame-rate-range"

    #@112
    move-object/from16 v0, v21

    #@114
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    move-result-object v2

    #@118
    const/4 v3, 0x0

    #@119
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@11c
    move-result-object v19

    #@11d
    .line 1490
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_2

    #@11f
    .line 1492
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@122
    move-result-object v2

    #@123
    move-object/from16 v0, v19

    #@125
    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@128
    move-result-object v19

    #@129
    .line 1499
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    const-string/jumbo v2, "bitrate-range"

    #@12c
    move-object/from16 v0, v21

    #@12e
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    move-result-object v2

    #@132
    const/4 v3, 0x0

    #@133
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@136
    move-result-object v13

    #@137
    .line 1500
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_3

    #@139
    .line 1502
    :try_start_2
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@13c
    move-result-object v2

    #@13d
    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@140
    move-result-object v13

    #@141
    .line 1511
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@144
    move-result v2

    #@145
    const-string/jumbo v3, "block-size width must be power of two"

    #@148
    .line 1510
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@14b
    .line 1513
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@14e
    move-result v2

    #@14f
    const-string/jumbo v3, "block-size height must be power of two"

    #@152
    .line 1512
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@155
    .line 1516
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@158
    move-result v2

    #@159
    const-string/jumbo v3, "alignment width must be power of two"

    #@15c
    .line 1515
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@15f
    .line 1518
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@162
    move-result v2

    #@163
    const-string/jumbo v3, "alignment height must be power of two"

    #@166
    .line 1517
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    #@169
    .line 1523
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@16c
    move-result v8

    #@16d
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@170
    move-result v9

    #@171
    .line 1524
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    #@174
    move-result v10

    #@175
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    #@178
    move-result v11

    #@179
    .line 1522
    const v3, 0x7fffffff

    #@17c
    const v4, 0x7fffffff

    #@17f
    const v5, 0x7fffffff

    #@182
    .line 1523
    const-wide v6, 0x7fffffffffffffffL

    #@187
    move-object/from16 v2, p0

    #@189
    .line 1521
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    #@18c
    .line 1526
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@190
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@192
    and-int/lit8 v2, v2, 0x2

    #@194
    if-eqz v2, :cond_d

    #@196
    .line 1529
    if-eqz v25, :cond_4

    #@198
    .line 1530
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@19b
    move-result-object v2

    #@19c
    move-object/from16 v0, v25

    #@19e
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1a1
    move-result-object v2

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@1a6
    .line 1532
    :cond_4
    if-eqz v20, :cond_5

    #@1a8
    .line 1533
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    #@1ab
    move-result-object v2

    #@1ac
    move-object/from16 v0, v20

    #@1ae
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1b1
    move-result-object v2

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1b6
    .line 1535
    :cond_5
    if-eqz v17, :cond_6

    #@1b8
    .line 1536
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@1bb
    move-result-object v2

    #@1bc
    .line 1537
    move-object/from16 v0, p0

    #@1be
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1c4
    mul-int/2addr v3, v4

    #@1c5
    .line 1538
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@1c8
    move-result v4

    #@1c9
    .line 1537
    div-int/2addr v3, v4

    #@1ca
    .line 1538
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@1cd
    move-result v4

    #@1ce
    .line 1537
    div-int/2addr v3, v4

    #@1cf
    move-object/from16 v0, v17

    #@1d1
    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@1d4
    move-result-object v3

    #@1d5
    .line 1536
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1d8
    move-result-object v2

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@1dd
    .line 1540
    :cond_6
    if-eqz v14, :cond_7

    #@1df
    .line 1541
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    #@1e2
    move-result-object v2

    #@1e3
    .line 1542
    move-object/from16 v0, p0

    #@1e5
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@1eb
    mul-int/2addr v3, v4

    #@1ec
    .line 1543
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@1ef
    move-result v4

    #@1f0
    .line 1542
    div-int/2addr v3, v4

    #@1f1
    .line 1543
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@1f4
    move-result v4

    #@1f5
    .line 1542
    div-int/2addr v3, v4

    #@1f6
    int-to-long v4, v3

    #@1f7
    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@1fa
    move-result-object v3

    #@1fb
    .line 1541
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@1fe
    move-result-object v2

    #@1ff
    move-object/from16 v0, p0

    #@201
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@203
    .line 1545
    :cond_7
    if-eqz v15, :cond_8

    #@205
    .line 1546
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@208
    move-result-object v2

    #@209
    .line 1548
    move-object/from16 v0, p0

    #@20b
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@20d
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@210
    move-result v4

    #@211
    div-int/2addr v3, v4

    #@212
    .line 1549
    move-object/from16 v0, p0

    #@214
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@216
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@219
    move-result v5

    #@21a
    div-int/2addr v4, v5

    #@21b
    .line 1547
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@21e
    move-result-object v3

    #@21f
    .line 1546
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@222
    move-result-object v2

    #@223
    move-object/from16 v0, p0

    #@225
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@227
    .line 1551
    :cond_8
    if-eqz v23, :cond_9

    #@229
    .line 1552
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    #@22c
    move-result-object v2

    #@22d
    move-object/from16 v0, v23

    #@22f
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@232
    move-result-object v2

    #@233
    move-object/from16 v0, p0

    #@235
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@237
    .line 1554
    :cond_9
    if-eqz v19, :cond_a

    #@239
    .line 1555
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@23c
    move-result-object v2

    #@23d
    move-object/from16 v0, v19

    #@23f
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@242
    move-result-object v2

    #@243
    move-object/from16 v0, p0

    #@245
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@247
    .line 1557
    :cond_a
    if-eqz v13, :cond_b

    #@249
    .line 1558
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@24c
    move-result-object v2

    #@24d
    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@250
    move-result-object v2

    #@251
    move-object/from16 v0, p0

    #@253
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@255
    .line 1594
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    #@258
    .line 1435
    return-void

    #@259
    .line 1461
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :catch_0
    move-exception v18

    #@25a
    .line 1462
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@25d
    new-instance v3, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v4, "could not parse size range \'"

    #@265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v3

    #@269
    move-object/from16 v0, v22

    #@26b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v3

    #@26f
    const-string/jumbo v4, "\'"

    #@272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v3

    #@276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v3

    #@27a
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    .line 1463
    const/16 v25, 0x0

    #@27f
    .line 1464
    .local v25, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    #@281
    goto/16 :goto_0

    #@283
    .line 1478
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v25    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_c
    const-string/jumbo v2, "VideoCapabilities"

    #@286
    const-string/jumbo v3, "feature can-swap-width-height is best used with size-range"

    #@289
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28c
    .line 1480
    move-object/from16 v0, p0

    #@28e
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@290
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@293
    move-result-object v2

    #@294
    check-cast v2, Ljava/lang/Integer;

    #@296
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@299
    move-result v3

    #@29a
    move-object/from16 v0, p0

    #@29c
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@29e
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@2a1
    move-result-object v2

    #@2a2
    check-cast v2, Ljava/lang/Integer;

    #@2a4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@2a7
    move-result v2

    #@2a8
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@2ab
    move-result v2

    #@2ac
    .line 1479
    move-object/from16 v0, p0

    #@2ae
    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@2b0
    .line 1481
    move-object/from16 v0, p0

    #@2b2
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2b8
    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    #@2bb
    move-result-object v2

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2c4
    goto/16 :goto_1

    #@2c6
    .line 1493
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :catch_1
    move-exception v18

    #@2c7
    .line 1494
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@2ca
    new-instance v3, Ljava/lang/StringBuilder;

    #@2cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2cf
    const-string/jumbo v4, "frame rate range ("

    #@2d2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v3

    #@2d6
    move-object/from16 v0, v19

    #@2d8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v3

    #@2dc
    .line 1495
    const-string/jumbo v4, ") is out of limits: "

    #@2df
    .line 1494
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v3

    #@2e3
    .line 1495
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    #@2e6
    move-result-object v4

    #@2e7
    .line 1494
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ea
    move-result-object v3

    #@2eb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ee
    move-result-object v3

    #@2ef
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f2
    .line 1496
    const/16 v19, 0x0

    #@2f4
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_2

    #@2f6
    .line 1503
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v18

    #@2f7
    .line 1504
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    #@2fa
    new-instance v3, Ljava/lang/StringBuilder;

    #@2fc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ff
    const-string/jumbo v4, "bitrate range ("

    #@302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v3

    #@306
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@309
    move-result-object v3

    #@30a
    .line 1505
    const-string/jumbo v4, ") is out of limits: "

    #@30d
    .line 1504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v3

    #@311
    .line 1505
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    #@314
    move-result-object v4

    #@315
    .line 1504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v3

    #@319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31c
    move-result-object v3

    #@31d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@320
    .line 1506
    const/4 v13, 0x0

    #@321
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_3

    #@323
    .line 1562
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    if-eqz v25, :cond_e

    #@325
    .line 1563
    move-object/from16 v0, p0

    #@327
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@329
    move-object/from16 v0, v25

    #@32b
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@32e
    move-result-object v2

    #@32f
    move-object/from16 v0, p0

    #@331
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@333
    .line 1565
    :cond_e
    if-eqz v20, :cond_f

    #@335
    .line 1566
    move-object/from16 v0, p0

    #@337
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@339
    move-object/from16 v0, v20

    #@33b
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@33e
    move-result-object v2

    #@33f
    move-object/from16 v0, p0

    #@341
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@343
    .line 1568
    :cond_f
    if-eqz v17, :cond_10

    #@345
    .line 1569
    move-object/from16 v0, p0

    #@347
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@349
    .line 1570
    move-object/from16 v0, p0

    #@34b
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@34d
    move-object/from16 v0, p0

    #@34f
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@351
    mul-int/2addr v3, v4

    #@352
    .line 1571
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@355
    move-result v4

    #@356
    .line 1570
    div-int/2addr v3, v4

    #@357
    .line 1571
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@35a
    move-result v4

    #@35b
    .line 1570
    div-int/2addr v3, v4

    #@35c
    move-object/from16 v0, v17

    #@35e
    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@361
    move-result-object v3

    #@362
    .line 1569
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@365
    move-result-object v2

    #@366
    move-object/from16 v0, p0

    #@368
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@36a
    .line 1573
    :cond_10
    if-eqz v14, :cond_11

    #@36c
    .line 1574
    move-object/from16 v0, p0

    #@36e
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@370
    .line 1575
    move-object/from16 v0, p0

    #@372
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@374
    move-object/from16 v0, p0

    #@376
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@378
    mul-int/2addr v3, v4

    #@379
    .line 1576
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@37c
    move-result v4

    #@37d
    .line 1575
    div-int/2addr v3, v4

    #@37e
    .line 1576
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@381
    move-result v4

    #@382
    .line 1575
    div-int/2addr v3, v4

    #@383
    int-to-long v4, v3

    #@384
    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    #@387
    move-result-object v3

    #@388
    .line 1574
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@38b
    move-result-object v2

    #@38c
    move-object/from16 v0, p0

    #@38e
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@390
    .line 1578
    :cond_11
    if-eqz v15, :cond_12

    #@392
    .line 1579
    move-object/from16 v0, p0

    #@394
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@396
    .line 1581
    move-object/from16 v0, p0

    #@398
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@39a
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    #@39d
    move-result v4

    #@39e
    div-int/2addr v3, v4

    #@39f
    .line 1582
    move-object/from16 v0, p0

    #@3a1
    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@3a3
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    #@3a6
    move-result v5

    #@3a7
    div-int/2addr v4, v5

    #@3a8
    .line 1580
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    #@3ab
    move-result-object v3

    #@3ac
    .line 1579
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3af
    move-result-object v2

    #@3b0
    move-object/from16 v0, p0

    #@3b2
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@3b4
    .line 1584
    :cond_12
    if-eqz v23, :cond_13

    #@3b6
    .line 1585
    move-object/from16 v0, p0

    #@3b8
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@3ba
    move-object/from16 v0, v23

    #@3bc
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3bf
    move-result-object v2

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@3c4
    .line 1587
    :cond_13
    if-eqz v19, :cond_14

    #@3c6
    .line 1588
    move-object/from16 v0, p0

    #@3c8
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3ca
    move-object/from16 v0, v19

    #@3cc
    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3cf
    move-result-object v2

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@3d4
    .line 1590
    :cond_14
    if-eqz v13, :cond_b

    #@3d6
    .line 1591
    move-object/from16 v0, p0

    #@3d8
    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@3da
    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@3dd
    move-result-object v2

    #@3de
    move-object/from16 v0, p0

    #@3e0
    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    #@3e2
    goto/16 :goto_4
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    #@0
    .prologue
    .line 1296
    const/4 v4, 0x1

    #@1
    .line 1298
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 1299
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@7
    invoke-virtual {v6, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_5

    #@d
    .line 1300
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v6

    #@11
    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@13
    rem-int/2addr v6, v7

    #@14
    if-nez v6, :cond_4

    #@16
    const/4 v4, 0x1

    #@17
    .line 1302
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@19
    if-eqz p2, :cond_1

    #@1b
    .line 1303
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@1d
    invoke-virtual {v6, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_7

    #@23
    .line 1304
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v6

    #@27
    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@29
    rem-int/2addr v6, v7

    #@2a
    if-nez v6, :cond_6

    #@2c
    const/4 v4, 0x1

    #@2d
    .line 1306
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    #@2f
    if-eqz p3, :cond_2

    #@31
    .line 1307
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@33
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    #@36
    move-result-wide v8

    #@37
    invoke-static {v8, v9}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    #@3e
    move-result v4

    #@3f
    .line 1309
    .end local v4    # "ok":Z
    :cond_2
    if-eqz v4, :cond_3

    #@41
    if-eqz p2, :cond_3

    #@43
    if-eqz p1, :cond_3

    #@45
    .line 1310
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v6

    #@49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v7

    #@4d
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@50
    move-result v6

    #@51
    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@53
    if-gt v6, v7, :cond_8

    #@55
    const/4 v4, 0x1

    #@56
    .line 1312
    .restart local v4    # "ok":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v6

    #@5a
    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@5c
    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    #@5f
    move-result v5

    #@60
    .line 1313
    .local v5, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@63
    move-result v6

    #@64
    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@66
    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    #@69
    move-result v1

    #@6a
    .line 1314
    .local v1, "heightInBlocks":I
    mul-int v0, v5, v1

    #@6c
    .line 1315
    .local v0, "blockCount":I
    if-eqz v4, :cond_9

    #@6e
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_9

    #@7a
    .line 1316
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@7c
    .line 1317
    new-instance v7, Landroid/util/Rational;

    #@7e
    invoke-direct {v7, v5, v1}, Landroid/util/Rational;-><init>(II)V

    #@81
    .line 1316
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@84
    move-result v6

    #@85
    .line 1315
    if-eqz v6, :cond_9

    #@87
    .line 1318
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@89
    new-instance v7, Landroid/util/Rational;

    #@8b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@8e
    move-result v8

    #@8f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@92
    move-result v9

    #@93
    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    #@96
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@99
    move-result v4

    #@9a
    .line 1319
    .end local v4    # "ok":Z
    :goto_3
    if-eqz v4, :cond_3

    #@9c
    if-eqz p3, :cond_3

    #@9e
    .line 1320
    int-to-double v6, v0

    #@9f
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    #@a2
    move-result-wide v8

    #@a3
    mul-double v2, v6, v8

    #@a5
    .line 1321
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@a7
    .line 1322
    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    #@aa
    move-result-object v7

    #@ab
    .line 1321
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    #@ae
    move-result v4

    #@af
    .line 1325
    .end local v0    # "blockCount":I
    .end local v1    # "heightInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v5    # "widthInBlocks":I
    :cond_3
    return v4

    #@b0
    .line 1300
    .restart local v4    # "ok":Z
    :cond_4
    const/4 v4, 0x0

    #@b1
    goto/16 :goto_0

    #@b3
    .line 1299
    :cond_5
    const/4 v4, 0x0

    #@b4
    goto/16 :goto_0

    #@b6
    .line 1304
    :cond_6
    const/4 v4, 0x0

    #@b7
    goto/16 :goto_1

    #@b9
    .line 1303
    :cond_7
    const/4 v4, 0x0

    #@ba
    goto/16 :goto_1

    #@bc
    .line 1310
    .end local v4    # "ok":Z
    :cond_8
    const/4 v4, 0x0

    #@bd
    .restart local v4    # "ok":Z
    goto :goto_2

    #@be
    .line 1315
    .restart local v0    # "blockCount":I
    .restart local v1    # "heightInBlocks":I
    .restart local v5    # "widthInBlocks":I
    :cond_9
    const/4 v4, 0x0

    #@bf
    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    #@0
    .prologue
    .line 1658
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@2
    .line 1659
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@4
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@6
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@9
    move-result-object v1

    #@a
    .line 1658
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@10
    .line 1660
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@12
    .line 1662
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
    .line 1663
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
    .line 1661
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@51
    move-result-object v0

    #@52
    .line 1660
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    #@58
    .line 1664
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@5a
    .line 1665
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@5c
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@5e
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    #@61
    move-result-object v1

    #@62
    .line 1664
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@65
    move-result-object v0

    #@66
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@68
    .line 1666
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@6a
    .line 1668
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
    .line 1669
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
    .line 1667
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a9
    move-result-object v0

    #@aa
    .line 1666
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@ad
    move-result-object v0

    #@ae
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    #@b0
    .line 1670
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@b2
    .line 1672
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
    .line 1673
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
    .line 1672
    mul-int/2addr v0, v2

    #@cb
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ce
    move-result-object v2

    #@cf
    .line 1674
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
    .line 1675
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
    .line 1674
    mul-int/2addr v0, v3

    #@e8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v0

    #@ec
    .line 1671
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@ef
    move-result-object v0

    #@f0
    .line 1670
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@f3
    move-result-object v0

    #@f4
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@f6
    .line 1676
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@f8
    .line 1677
    new-instance v2, Landroid/util/Rational;

    #@fa
    .line 1678
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
    .line 1677
    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    #@115
    .line 1679
    new-instance v3, Landroid/util/Rational;

    #@117
    .line 1680
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
    .line 1679
    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    #@132
    .line 1676
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@135
    move-result-object v0

    #@136
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    #@138
    .line 1683
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@13a
    .line 1684
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
    .line 1685
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
    .line 1683
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@168
    move-result-object v0

    #@169
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@16b
    .line 1686
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@16d
    .line 1687
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
    .line 1688
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
    .line 1686
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@19b
    move-result-object v0

    #@19c
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@19e
    .line 1689
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@1a0
    .line 1690
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
    .line 1691
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
    .line 1689
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1dd
    move-result-object v0

    #@1de
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    #@1e0
    .line 1694
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@1e2
    .line 1695
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
    .line 1693
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@201
    move-result v0

    #@202
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@204
    .line 1698
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@206
    .line 1699
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
    .line 1700
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
    .line 1698
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@247
    move-result-object v0

    #@248
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@24a
    .line 1701
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@24c
    .line 1702
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
    .line 1703
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
    .line 1702
    div-long/2addr v2, v4

    #@266
    long-to-int v0, v2

    #@267
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26a
    move-result-object v2

    #@26b
    .line 1704
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
    .line 1705
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
    .line 1704
    div-double/2addr v4, v6

    #@286
    double-to-int v0, v4

    #@287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28a
    move-result-object v0

    #@28b
    .line 1701
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@28e
    move-result-object v0

    #@28f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    #@291
    .line 1656
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
    .line 1283
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
    .line 1265
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
    .line 1266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "unsupported size"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1269
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
    .line 1270
    :cond_1
    const-string/jumbo v0, "VideoCapabilities"

    #@27
    const-string/jumbo v1, "Codec did not publish any measurement data."

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1271
    return-object v2

    #@2e
    .line 1274
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
    .line 1379
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
    .line 1029
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
    .line 1369
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1364
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
    .line 1374
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    #@0
    .prologue
    .line 1063
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@2
    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    #@0
    .prologue
    .line 1080
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
    .line 1092
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
    .line 1195
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2
    .line 1196
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
    .line 1197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "unsupported size"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 1200
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
    .line 1203
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
    .line 1204
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
    .line 1203
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@48
    move-result-wide v2

    #@49
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@4c
    move-result-object v3

    #@4d
    .line 1205
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
    .line 1206
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
    .line 1205
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    #@6c
    move-result-wide v4

    #@6d
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@70
    move-result-object v2

    #@71
    .line 1202
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
    .line 1043
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
    .line 1145
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    #@2
    .line 1146
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
    .line 1147
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    #@10
    rem-int v5, p1, v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 1148
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
    .line 1176
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@1e
    .line 1178
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
    .line 1179
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v6, "unsupported width"

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5

    #@41
    .line 1150
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
    .line 1154
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
    .line 1155
    int-to-double v8, v4

    #@58
    .line 1156
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
    .line 1155
    div-double/2addr v8, v10

    #@65
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@68
    move-result-wide v8

    #@69
    double-to-int v5, v8

    #@6a
    .line 1153
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v2

    #@6e
    .line 1158
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
    .line 1159
    int-to-double v8, v4

    #@7d
    .line 1160
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
    .line 1159
    div-double/2addr v8, v10

    #@8a
    double-to-int v5, v8

    #@8b
    .line 1157
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v1

    #@8f
    .line 1162
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
    .line 1163
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    #@9d
    mul-int/2addr v6, v1

    #@9e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a1
    move-result-object v6

    #@a2
    .line 1161
    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a5
    move-result-object v3

    #@a6
    .line 1166
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@a8
    if-le p1, v5, :cond_2

    #@aa
    .line 1167
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
    .line 1172
    :cond_2
    int-to-double v6, p1

    #@ba
    .line 1173
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
    .line 1172
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
    .line 1174
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
    .line 1171
    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@e6
    move-result-object v3

    #@e7
    .line 1175
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
    .line 1036
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
    .line 1101
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    #@2
    .line 1102
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
    .line 1103
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    #@10
    rem-int v5, p1, v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 1104
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
    .line 1132
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@1e
    .line 1134
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
    .line 1135
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@3a
    const-string/jumbo v6, "unsupported height"

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5

    #@41
    .line 1106
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
    .line 1110
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
    .line 1111
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
    .line 1112
    int-to-double v10, v1

    #@64
    .line 1111
    mul-double/2addr v8, v10

    #@65
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@68
    move-result-wide v8

    #@69
    double-to-int v5, v8

    #@6a
    .line 1109
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@6d
    move-result v3

    #@6e
    .line 1114
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
    .line 1115
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
    .line 1116
    int-to-double v10, v1

    #@89
    .line 1115
    mul-double/2addr v8, v10

    #@8a
    double-to-int v5, v8

    #@8b
    .line 1113
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@8e
    move-result v2

    #@8f
    .line 1118
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
    .line 1119
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    #@9d
    mul-int/2addr v6, v2

    #@9e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a1
    move-result-object v6

    #@a2
    .line 1117
    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@a5
    move-result-object v4

    #@a6
    .line 1122
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    #@a8
    if-le p1, v5, :cond_2

    #@aa
    .line 1123
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
    .line 1128
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
    .line 1129
    int-to-double v8, p1

    #@c6
    .line 1128
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
    .line 1130
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
    .line 1127
    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@e6
    move-result-object v4

    #@e7
    .line 1131
    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    #@0
    .prologue
    .line 1053
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
    .line 1355
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    .line 1356
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    #@5
    .line 1357
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    #@8
    .line 1358
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    #@b
    .line 1359
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    #@e
    .line 1354
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1291
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
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 1332
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    .line 1333
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "width"

    #@7
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/lang/Integer;

    #@d
    .line 1334
    .local v3, "width":Ljava/lang/Integer;
    const-string/jumbo v4, "height"

    #@10
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Integer;

    #@16
    .line 1335
    .local v0, "height":Ljava/lang/Integer;
    const-string/jumbo v4, "frame-rate"

    #@19
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/Number;

    #@1f
    .line 1339
    .local v2, "rate":Ljava/lang/Number;
    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    #@22
    move-result v4

    #@23
    return v4
.end method
