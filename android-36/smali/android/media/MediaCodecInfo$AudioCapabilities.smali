.class public final Landroid/media/MediaCodecInfo$AudioCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioCapabilities"
.end annotation


# static fields
.field static final blacklist AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_INPUT_CHANNEL_COUNT:I = 0x1e

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioCapabilities"


# instance fields
.field private greylist-max-o mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputChannelRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private greylist-max-o mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSampleRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1826
    const-string v0, "mime"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->AUDIO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o applyLevelLimits()V
    .registers 23

    .line 1610
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1611
    .local v1, "sampleRates":[I
    const/4 v2, 0x0

    .local v2, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1612
    .local v3, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v4, 0x1e

    .line 1613
    .local v4, "maxChannels":I
    iget-object v5, v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v5, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 1614
    .local v5, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-object v6, v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1616
    .local v6, "mime":Ljava/lang/String;
    const-string v7, "audio/mpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v9, 0x1f40

    .line 1621
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1616
    const/4 v11, 0x1

    .line 1736
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1616
    if-eqz v7, :cond_3e

    .line 1617
    const/16 v7, 0x9

    new-array v7, v7, [I

    fill-array-data v7, :array_388

    move-object v1, v7

    .line 1621
    const v7, 0x4e200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1622
    const/4 v4, 0x2

    move/from16 v21, v11

    const/16 v16, 0x0

    goto/16 :goto_34e

    .line 1623
    :cond_3e
    const-string v7, "audio/3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1624
    filled-new-array {v9}, [I

    move-result-object v7

    move-object v1, v7

    .line 1625
    const/16 v7, 0x128e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x2fa8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1626
    const/4 v4, 0x1

    move/from16 v21, v11

    const/16 v16, 0x0

    goto/16 :goto_34e

    .line 1627
    :cond_62
    const-string v7, "audio/amr-wb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v13, 0x3e80

    if-eqz v7, :cond_88

    .line 1628
    filled-new-array {v13}, [I

    move-result-object v7

    move-object v1, v7

    .line 1629
    const/16 v7, 0x19c8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x5d2a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1630
    const/4 v4, 0x1

    move/from16 v21, v11

    const/16 v16, 0x0

    goto/16 :goto_34e

    .line 1631
    :cond_88
    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const v14, 0x7c830

    if-eqz v7, :cond_ab

    .line 1632
    const/16 v7, 0xd

    new-array v7, v7, [I

    fill-array-data v7, :array_39e

    move-object v1, v7

    .line 1638
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1639
    const/16 v4, 0x30

    move/from16 v21, v11

    const/16 v16, 0x0

    goto/16 :goto_34e

    .line 1640
    :cond_ab
    const-string v7, "audio/vorbis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v15, 0x7d00

    const/16 v16, 0x0

    const v8, 0x2ee00

    if-eqz v7, :cond_d7

    .line 1641
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v9, 0x7a120

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1642
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1643
    const/16 v4, 0xff

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1644
    :cond_d7
    const-string v7, "audio/opus"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v10, 0x5dc0

    move/from16 v17, v14

    const v14, 0xbb80

    if-eqz v7, :cond_101

    .line 1645
    const/16 v7, 0x1770

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1646
    const/16 v7, 0x2ee0

    filled-new-array {v9, v7, v13, v10, v14}, [I

    move-result-object v7

    move-object v1, v7

    .line 1647
    const/16 v4, 0xff

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1648
    :cond_101
    const-string v7, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_122

    .line 1649
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1650
    const v7, 0x989680

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1651
    sget v4, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1652
    :cond_122
    const-string v7, "audio/flac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 1653
    const v7, 0x9fff6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1655
    const/16 v4, 0xff

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1656
    :cond_13b
    const-string v7, "audio/g711-alaw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_338

    .line 1657
    const-string v7, "audio/g711-mlaw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14f

    move/from16 v21, v11

    goto/16 :goto_33a

    .line 1661
    :cond_14f
    const-string v7, "audio/gsm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16f

    .line 1662
    filled-new-array {v9}, [I

    move-result-object v7

    move-object v1, v7

    .line 1663
    const/16 v7, 0x32c8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1664
    const/4 v4, 0x1

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1665
    :cond_16f
    const-string v7, "audio/ac3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17c

    .line 1666
    const/4 v4, 0x6

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1667
    :cond_17c
    const-string v7, "audio/eac3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18a

    .line 1668
    const/16 v4, 0x10

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1669
    :cond_18a
    const-string v7, "audio/eac3-joc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ac

    .line 1670
    filled-new-array {v14}, [I

    move-result-object v7

    move-object v1, v7

    .line 1671
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x5dc000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1672
    const/16 v4, 0x10

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1673
    :cond_1ac
    const-string v7, "audio/ac4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const v9, 0xac44

    move/from16 v17, v13

    const v13, 0x17700

    if-eqz v7, :cond_1d6

    .line 1674
    filled-new-array {v9, v14, v13, v8}, [I

    move-result-object v7

    move-object v1, v7

    .line 1675
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x290400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1676
    const/16 v4, 0x18

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1677
    :cond_1d6
    const-string v7, "audio/vnd.dts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f7

    .line 1678
    filled-new-array {v9, v14}, [I

    move-result-object v7

    move-object v1, v7

    .line 1679
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x174120

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1680
    const/4 v4, 0x6

    move/from16 v21, v11

    goto/16 :goto_34e

    .line 1681
    :cond_1f7
    const-string v7, "audio/vnd.dts.hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const v17, 0xbb800

    const-string v8, "AudioCapabilities"

    const v18, 0x175d720

    move/from16 v19, v13

    if-eqz v7, :cond_28f

    .line 1682
    array-length v7, v5

    move/from16 v20, v15

    move/from16 v15, v16

    :goto_20e
    if-ge v15, v7, :cond_289

    move/from16 v21, v11

    aget-object v11, v5, v15

    .line 1683
    .local v11, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v13, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v13, :pswitch_data_374

    .line 1694
    :pswitch_219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unrecognized profile "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v13, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " for "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v9, v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v13, v9, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v9, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 1697
    const/4 v9, 0x6

    new-array v13, v9, [I

    fill-array-data v13, :array_3bc

    .line 1698
    .end local v1    # "sampleRates":[I
    .local v13, "sampleRates":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    move-object v3, v1

    move-object v1, v13

    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_281

    .line 1685
    .end local v13    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .restart local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_258
    const/16 v13, 0x5622

    filled-new-array {v13, v10, v9, v14}, [I

    move-result-object v13

    .line 1686
    .end local v1    # "sampleRates":[I
    .restart local v13    # "sampleRates":[I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1687
    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v3, v1

    move-object v1, v13

    goto :goto_281

    .line 1690
    .end local v13    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .restart local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_26d
    const/4 v9, 0x6

    new-array v13, v9, [I

    fill-array-data v13, :array_3cc

    .line 1691
    .end local v1    # "sampleRates":[I
    .restart local v13    # "sampleRates":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1692
    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object v3, v1

    move-object v1, v13

    .line 1682
    .end local v11    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .restart local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_281
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v21

    const v9, 0xac44

    goto :goto_20e

    .line 1701
    :cond_289
    move/from16 v21, v11

    const/16 v4, 0x8

    goto/16 :goto_34e

    .line 1702
    :cond_28f
    move/from16 v21, v11

    const-string v7, "audio/vnd.dts.uhd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_319

    .line 1703
    array-length v7, v5

    move/from16 v9, v16

    :goto_29c
    if-ge v9, v7, :cond_34e

    aget-object v10, v5, v9

    .line 1704
    .local v10, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v11, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v11, :pswitch_data_380

    .line 1716
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unrecognized profile "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v11, v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v13, v11, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v11, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 1719
    const/4 v11, 0x6

    new-array v13, v11, [I

    fill-array-data v13, :array_3dc

    .line 1720
    .end local v1    # "sampleRates":[I
    .restart local v13    # "sampleRates":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1721
    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v3, 0x20

    move v4, v3

    move-object v3, v1

    move-object v1, v13

    .end local v4    # "maxChannels":I
    .local v3, "maxChannels":I
    goto :goto_316

    .line 1706
    .end local v13    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .local v3, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v4    # "maxChannels":I
    :pswitch_2e7
    filled-new-array {v14}, [I

    move-result-object v11

    .line 1707
    .end local v1    # "sampleRates":[I
    .local v11, "sampleRates":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1708
    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v3, 0xa

    .line 1709
    .end local v4    # "maxChannels":I
    .local v3, "maxChannels":I
    move v4, v3

    move-object v3, v1

    move-object v1, v11

    const/4 v11, 0x6

    goto :goto_316

    .line 1711
    .end local v11    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .local v3, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v4    # "maxChannels":I
    :pswitch_2fe
    const/4 v11, 0x6

    new-array v13, v11, [I

    fill-array-data v13, :array_3ec

    .line 1712
    .end local v1    # "sampleRates":[I
    .restart local v13    # "sampleRates":[I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1713
    .end local v3    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v3, 0x20

    .line 1714
    .end local v4    # "maxChannels":I
    .local v3, "maxChannels":I
    move v4, v3

    const/4 v11, 0x6

    move-object v3, v1

    move-object v1, v13

    .line 1703
    .end local v10    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "sampleRates":[I
    .local v1, "sampleRates":[I
    .local v3, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v4    # "maxChannels":I
    :goto_316
    add-int/lit8 v9, v9, 0x1

    goto :goto_29c

    .line 1725
    :cond_319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object v7, v0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v8, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    goto :goto_34e

    .line 1656
    :cond_338
    move/from16 v21, v11

    .line 1658
    :goto_33a
    filled-new-array {v9}, [I

    move-result-object v7

    move-object v1, v7

    .line 1659
    const v7, 0xfa00

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1730
    :cond_34e
    :goto_34e
    if-eqz v1, :cond_356

    .line 1731
    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([I)V

    move/from16 v7, v21

    goto :goto_364

    .line 1732
    :cond_356
    if-eqz v2, :cond_362

    .line 1733
    move/from16 v7, v21

    new-array v8, v7, [Landroid/util/Range;

    aput-object v2, v8, v16

    invoke-direct {v0, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    goto :goto_364

    .line 1732
    :cond_362
    move/from16 v7, v21

    .line 1736
    :goto_364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    .line 1738
    .local v8, "channelRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-array v7, v7, [Landroid/util/Range;

    aput-object v8, v7, v16

    invoke-direct {v0, v7, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 1739
    return-void

    :pswitch_data_374
    .packed-switch 0x1
        :pswitch_26d
        :pswitch_258
        :pswitch_219
        :pswitch_26d
    .end packed-switch

    :pswitch_data_380
    .packed-switch 0x1
        :pswitch_2fe
        :pswitch_2e7
    .end packed-switch

    :array_388
    .array-data 4
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
    .end array-data

    :array_39e
    .array-data 4
        0x1cb6
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
        0xfa00
        0x15888
        0x17700
    .end array-data

    :array_3bc
    .array-data 4
        0xac44
        0xbb80
        0x15888
        0x17700
        0x2b110
        0x2ee00
    .end array-data

    :array_3cc
    .array-data 4
        0xac44
        0xbb80
        0x15888
        0x17700
        0x2b110
        0x2ee00
    .end array-data

    :array_3dc
    .array-data 4
        0xac44
        0xbb80
        0x15888
        0x17700
        0x2b110
        0x2ee00
    .end array-data

    :array_3ec
    .array-data 4
        0xac44
        0xbb80
        0x15888
        0x17700
        0x2b110
        0x2ee00
    .end array-data
.end method

.method private blacklist applyLimits([Landroid/util/Range;Landroid/util/Range;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1744
    .local p1, "inputChannels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p2, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Range;

    .line 1745
    .local v0, "myInputChannels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_3b

    .line 1746
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1747
    .local v2, "lower":I
    aget-object v3, p1, v1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1748
    .local v3, "upper":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1745
    .end local v2    # "lower":I
    .end local v3    # "upper":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1752
    .end local v1    # "i":I
    :cond_3b
    invoke-static {v0}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 1753
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1754
    invoke-static {v0, v1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object v1

    .line 1755
    .local v1, "joinedChannelList":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1757
    if-eqz p2, :cond_50

    .line 1758
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, p2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1760
    :cond_50
    return-void
.end method

.method public static greylist-max-o create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;
    .registers 3
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1524
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;-><init>()V

    .line 1525
    .local v0, "caps":Landroid/media/MediaCodecInfo$AudioCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1526
    return-object v0
.end method

.method private greylist-max-o createDiscreteSampleRates()V
    .registers 4

    .line 1588
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 1590
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1592
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private greylist-max-o init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 3
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1530
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1531
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->initWithPlatformLimits()V

    .line 1532
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLevelLimits()V

    .line 1533
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1534
    return-void
.end method

.method private greylist-max-o initWithPlatformLimits()V
    .registers 7

    .line 1537
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1538
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1540
    nop

    .line 1541
    const-string v2, "ro.mediacodec.min_sample_rate"

    const/16 v3, 0x1cb6

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1542
    .local v2, "minSampleRate":I
    nop

    .line 1543
    const-string v3, "ro.mediacodec.max_sample_rate"

    const v4, 0x2ee00

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1544
    .local v3, "maxSampleRate":I
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    aput-object v4, v1, v0

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1546
    return-void
.end method

.method private greylist-max-o limitSampleRates([I)V
    .registers 8
    .param p1, "rates"    # [I

    .line 1576
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2b

    aget v3, p1, v2

    .line 1579
    .local v3, "rate":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1580
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    .end local v3    # "rate":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1583
    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1584
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 1585
    return-void
.end method

.method private greylist-max-o limitSampleRates([Landroid/util/Range;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1596
    .local p1, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 1597
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v0, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1600
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 1601
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1603
    return-void

    .line 1600
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1606
    :cond_2a
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 1607
    return-void
.end method

.method private greylist-max-o parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 15
    .param p1, "info"    # Landroid/media/MediaFormat;

    .line 1763
    const/16 v0, 0x1e

    .line 1764
    .local v0, "maxInputChannels":I
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    const/4 v5, 0x0

    .line 1798
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1764
    aput-object v4, v3, v5

    .line 1765
    .local v3, "channels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    .line 1767
    .local v4, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string v7, "sample-rate-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ","

    const/4 v10, 0x0

    if-eqz v8, :cond_44

    .line 1768
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1769
    .local v7, "rateStrings":[Ljava/lang/String;
    array-length v8, v7

    new-array v8, v8, [Landroid/util/Range;

    .line 1770
    .local v8, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_33
    array-length v12, v7

    if-ge v11, v12, :cond_41

    .line 1771
    aget-object v12, v7, v11

    invoke-static {v12, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1770
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 1773
    .end local v11    # "i":I
    :cond_41
    invoke-direct {p0, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    .line 1777
    .end local v7    # "rateStrings":[Ljava/lang/String;
    .end local v8    # "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_44
    const-string v7, "channel-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 1778
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "channelStrings":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Landroid/util/Range;

    .line 1780
    .local v2, "channelRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    array-length v6, v1

    if-ge v5, v6, :cond_66

    .line 1781
    aget-object v6, v1, v5

    invoke-static {v6, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1780
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 1783
    .end local v5    # "i":I
    :cond_66
    move-object v3, v2

    .line 1784
    .end local v1    # "channelStrings":[Ljava/lang/String;
    .end local v2    # "channelRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_bb

    :cond_68
    const-string v7, "channel-range"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1785
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 1787
    .local v2, "oneRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-array v1, v1, [Landroid/util/Range;

    aput-object v2, v1, v5

    move-object v3, v1

    .line 1788
    .end local v2    # "oneRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_bb

    :cond_7e
    const-string v7, "max-channel-count"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 1789
    nop

    .line 1790
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1789
    invoke-static {v7, v0}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v0

    .line 1791
    if-nez v0, :cond_9b

    .line 1792
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    goto :goto_bb

    .line 1794
    :cond_9b
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    goto :goto_bb

    .line 1796
    :cond_a9
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_bb

    .line 1797
    const/4 v0, 0x0

    .line 1798
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    .line 1801
    :cond_bb
    :goto_bb
    const-string v1, "bitrate-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1802
    nop

    .line 1803
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 1802
    invoke-virtual {v4, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 1806
    :cond_d0
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 1807
    return-void
.end method

.method private greylist-max-o supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 5
    .param p1, "sampleRate"    # Ljava/lang/Integer;
    .param p2, "inputChannels"    # Ljava/lang/Integer;

    .line 1550
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1551
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    invoke-static {v1, p2}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result v1

    .line 1553
    .local v1, "ix":I
    if-gez v1, :cond_c

    .line 1554
    return v0

    .line 1557
    .end local v1    # "ix":I
    :cond_c
    if-eqz p1, :cond_17

    .line 1558
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v1, p1}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result v1

    .line 1560
    .restart local v1    # "ix":I
    if-gez v1, :cond_17

    .line 1561
    return v0

    .line 1564
    .end local v1    # "ix":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
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

    .line 1437
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getDefaultFormat(Landroid/media/MediaFormat;)V
    .registers 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1812
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1813
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1815
    :cond_25
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 1817
    const-string v0, "channel-count"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1819
    :cond_31
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    array-length v0, v0

    if-ne v0, v1, :cond_44

    .line 1820
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "sample-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1822
    :cond_44
    return-void
.end method

.method public whitelist getInputChannelCountRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getMaxInputChannelCount()I
    .registers 4

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, "overall_max":I
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1c

    .line 1477
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1478
    .local v2, "lmax":I
    if-le v2, v0, :cond_19

    .line 1479
    move v0, v2

    .line 1476
    .end local v2    # "lmax":I
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1482
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method public whitelist getMinInputChannelCount()I
    .registers 4

    .line 1494
    const/16 v0, 0x1e

    .line 1495
    .local v0, "overall_min":I
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1d

    .line 1496
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1497
    .local v2, "lmin":I
    if-ge v2, v0, :cond_1a

    .line 1498
    move v0, v2

    .line 1495
    .end local v2    # "lmin":I
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1501
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public whitelist getSupportedSampleRateRanges()[Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedSampleRates()[I
    .registers 3

    .line 1446
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public whitelist isSampleRateSupported(I)Z
    .registers 4
    .param p1, "sampleRate"    # I

    .line 1571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 7
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1836
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1837
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "sample-rate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1838
    .local v1, "sampleRate":Ljava/lang/Integer;
    const-string v2, "channel-count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1840
    .local v2, "channels":Ljava/lang/Integer;
    invoke-direct {p0, v1, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 1841
    return v4

    .line 1844
    :cond_1c
    iget-object v3, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1845
    return v4

    .line 1851
    :cond_25
    const/4 v3, 0x1

    return v3
.end method
