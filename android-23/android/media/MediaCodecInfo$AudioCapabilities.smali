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
.field private static final MAX_INPUT_CHANNEL_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AudioCapabilities"


# instance fields
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

.field private mMaxInputChannelCount:I

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRates:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private applyLevelLimits()V
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x3e80

    #@2
    const/16 v6, 0x32c8

    #@4
    const/4 v10, 0x0

    #@5
    const/16 v9, 0x1f40

    #@7
    const/4 v8, 0x1

    #@8
    .line 870
    const/4 v4, 0x0

    #@9
    .line 871
    .local v4, "sampleRates":[I
    const/4 v3, 0x0

    #@a
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@b
    .line 872
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@c
    .line 873
    .local v1, "maxChannels":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@e
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 875
    .local v2, "mime":Ljava/lang/String;
    const-string/jumbo v5, "audio/mpeg"

    #@15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 876
    const/16 v5, 0x9

    #@1d
    new-array v4, v5, [I

    #@1f
    .local v4, "sampleRates":[I
    fill-array-data v4, :array_0

    #@22
    .line 880
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v5

    #@26
    const v6, 0x4e200

    #@29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@30
    move-result-object v0

    #@31
    .line 881
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    #@32
    .line 930
    .end local v0    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "sampleRates":[I
    :goto_0
    if-eqz v4, :cond_c

    #@34
    .line 931
    invoke-direct {p0, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([I)V

    #@37
    .line 935
    :cond_0
    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits(ILandroid/util/Range;)V

    #@3a
    .line 869
    return-void

    #@3b
    .line 882
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_1
    const-string/jumbo v5, "audio/3gpp"

    #@3e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_2

    #@44
    .line 883
    new-array v4, v8, [I

    #@46
    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    #@48
    .line 884
    .local v4, "sampleRates":[I
    const/16 v5, 0x128e

    #@4a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v5

    #@4e
    const/16 v6, 0x2fa8

    #@50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v6

    #@54
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@57
    move-result-object v0

    #@58
    .line 885
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 886
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_2
    const-string/jumbo v5, "audio/amr-wb"

    #@5d
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_3

    #@63
    .line 887
    new-array v4, v8, [I

    #@65
    .end local v4    # "sampleRates":[I
    aput v11, v4, v10

    #@67
    .line 888
    .local v4, "sampleRates":[I
    const/16 v5, 0x19c8

    #@69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v5

    #@6d
    const/16 v6, 0x5d2a

    #@6f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v6

    #@73
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@76
    move-result-object v0

    #@77
    .line 889
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    #@78
    goto :goto_0

    #@79
    .line 890
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_3
    const-string/jumbo v5, "audio/mp4a-latm"

    #@7c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7f
    move-result v5

    #@80
    if-eqz v5, :cond_4

    #@82
    .line 891
    const/16 v5, 0xd

    #@84
    new-array v4, v5, [I

    #@86
    .local v4, "sampleRates":[I
    fill-array-data v4, :array_1

    #@89
    .line 897
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v5

    #@8d
    const v6, 0x7c830

    #@90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v6

    #@94
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@97
    move-result-object v0

    #@98
    .line 898
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0x30

    #@9a
    goto :goto_0

    #@9b
    .line 899
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_4
    const-string/jumbo v5, "audio/vorbis"

    #@9e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a1
    move-result v5

    #@a2
    if-eqz v5, :cond_5

    #@a4
    .line 900
    const/16 v5, 0x7d00

    #@a6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v5

    #@aa
    const v6, 0x7a120

    #@ad
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b0
    move-result-object v6

    #@b1
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@b4
    move-result-object v0

    #@b5
    .line 901
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v5

    #@b9
    const v6, 0x2ee00

    #@bc
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf
    move-result-object v6

    #@c0
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@c3
    move-result-object v3

    #@c4
    .line 902
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    #@c6
    goto/16 :goto_0

    #@c8
    .line 903
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_5
    const-string/jumbo v5, "audio/opus"

    #@cb
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ce
    move-result v5

    #@cf
    if-eqz v5, :cond_6

    #@d1
    .line 904
    const/16 v5, 0x1770

    #@d3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6
    move-result-object v5

    #@d7
    const v6, 0x7c830

    #@da
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@dd
    move-result-object v6

    #@de
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@e1
    move-result-object v0

    #@e2
    .line 905
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v5, 0x2ee0

    #@e4
    const/16 v6, 0x5dc0

    #@e6
    const v7, 0xbb80

    #@e9
    filled-new-array {v9, v5, v11, v6, v7}, [I

    #@ec
    move-result-object v4

    #@ed
    .line 906
    .local v4, "sampleRates":[I
    const/16 v1, 0xff

    #@ef
    goto/16 :goto_0

    #@f1
    .line 907
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_6
    const-string/jumbo v5, "audio/raw"

    #@f4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f7
    move-result v5

    #@f8
    if-eqz v5, :cond_7

    #@fa
    .line 908
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fd
    move-result-object v5

    #@fe
    const v6, 0x17700

    #@101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@104
    move-result-object v6

    #@105
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@108
    move-result-object v3

    #@109
    .line 909
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10c
    move-result-object v5

    #@10d
    const v6, 0x989680

    #@110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@113
    move-result-object v6

    #@114
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@117
    move-result-object v0

    #@118
    .line 910
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0x8

    #@11a
    goto/16 :goto_0

    #@11c
    .line 911
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_7
    const-string/jumbo v5, "audio/flac"

    #@11f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@122
    move-result v5

    #@123
    if-eqz v5, :cond_8

    #@125
    .line 912
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@128
    move-result-object v5

    #@129
    const v6, 0x9fff6

    #@12c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12f
    move-result-object v6

    #@130
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@133
    move-result-object v3

    #@134
    .line 914
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v1, 0xff

    #@136
    goto/16 :goto_0

    #@138
    .line 915
    .local v3, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v5, "audio/g711-alaw"

    #@13b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13e
    move-result v5

    #@13f
    if-nez v5, :cond_9

    #@141
    .line 916
    const-string/jumbo v5, "audio/g711-mlaw"

    #@144
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@147
    move-result v5

    #@148
    .line 915
    if-eqz v5, :cond_a

    #@14a
    .line 917
    :cond_9
    new-array v4, v8, [I

    #@14c
    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    #@14e
    .line 918
    .local v4, "sampleRates":[I
    const v5, 0xfa00

    #@151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@154
    move-result-object v5

    #@155
    const v6, 0xfa00

    #@158
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15b
    move-result-object v6

    #@15c
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@15f
    move-result-object v0

    #@160
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_0

    #@162
    .line 920
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_a
    const-string/jumbo v5, "audio/gsm"

    #@165
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@168
    move-result v5

    #@169
    if-eqz v5, :cond_b

    #@16b
    .line 921
    new-array v4, v8, [I

    #@16d
    .end local v4    # "sampleRates":[I
    aput v9, v4, v10

    #@16f
    .line 922
    .local v4, "sampleRates":[I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@172
    move-result-object v5

    #@173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@176
    move-result-object v6

    #@177
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@17a
    move-result-object v0

    #@17b
    .line 923
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    #@17c
    goto/16 :goto_0

    #@17e
    .line 925
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v4, "sampleRates":[I
    :cond_b
    const-string/jumbo v5, "AudioCapabilities"

    #@181
    new-instance v6, Ljava/lang/StringBuilder;

    #@183
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@186
    const-string/jumbo v7, "Unsupported mime "

    #@189
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v6

    #@18d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v6

    #@191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v6

    #@195
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@198
    .line 926
    iget-object v5, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@19a
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@19c
    or-int/lit8 v6, v6, 0x2

    #@19e
    iput v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    #@1a0
    goto/16 :goto_0

    #@1a2
    .line 932
    .end local v0    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "sampleRates":[I
    :cond_c
    if-eqz v3, :cond_0

    #@1a4
    .line 933
    new-array v5, v8, [Landroid/util/Range;

    #@1a6
    aput-object v3, v5, v10

    #@1a8
    invoke-direct {p0, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    #@1ab
    goto/16 :goto_1

    #@1ad
    .line 876
    nop

    #@1ae
    :array_0
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

    #@1c4
    .line 891
    :array_1
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
.end method

.method private applyLimits(ILandroid/util/Range;)V
    .locals 2
    .param p1, "maxInputChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 939
    .local p2, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    iget v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@e
    move-result-object v0

    #@f
    .line 940
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    .line 939
    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/Integer;

    #@19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@1f
    .line 941
    if-eqz p2, :cond_0

    #@21
    .line 942
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@23
    invoke-virtual {v0, p2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@29
    .line 938
    :cond_0
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 790
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities;

    #@2
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;-><init>()V

    #@5
    .line 791
    .local v0, "caps":Landroid/media/MediaCodecInfo$AudioCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    #@8
    .line 792
    return-object v0
.end method

.method private createDiscreteSampleRates()V
    .locals 3

    #@0
    .prologue
    .line 848
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@2
    array-length v1, v1

    #@3
    new-array v1, v1, [I

    #@5
    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@7
    .line 849
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 850
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@f
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/Integer;

    #@19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    aput v1, v2, v0

    #@1f
    .line 849
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 847
    :cond_0
    return-void
.end method

.method private initWithPlatformLimits()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 804
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    const v1, 0x7fffffff

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@12
    .line 805
    const/16 v0, 0x1e

    #@14
    iput v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@16
    .line 807
    const/4 v0, 0x1

    #@17
    new-array v0, v0, [Landroid/util/Range;

    #@19
    const/16 v1, 0x1f40

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v1

    #@1f
    const v2, 0x17700

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@29
    move-result-object v1

    #@2a
    aput-object v1, v0, v3

    #@2c
    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@2e
    .line 808
    const/4 v0, 0x0

    #@2f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@31
    .line 803
    return-void
.end method

.method private limitSampleRates([I)V
    .locals 6
    .param p1, "rates"    # [I

    #@0
    .prologue
    .line 836
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    #@3
    .line 837
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 838
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    #@9
    array-length v3, p1

    #@a
    :goto_0
    if-ge v2, v3, :cond_1

    #@c
    aget v1, p1, v2

    #@e
    .line 839
    .local v1, "rate":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    invoke-direct {p0, v4, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 840
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v5

    #@21
    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 838
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 843
    .end local v1    # "rate":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v2

    #@2f
    new-array v2, v2, [Landroid/util/Range;

    #@31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, [Landroid/util/Range;

    #@37
    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@39
    .line 844
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    #@3c
    .line 835
    return-void
.end method

.method private limitSampleRates([Landroid/util/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 856
    .local p1, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    #@3
    .line 857
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@5
    invoke-static {v1, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@b
    .line 860
    iget-object v3, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@d
    const/4 v1, 0x0

    #@e
    array-length v4, v3

    #@f
    move v2, v1

    #@10
    :goto_0
    if-ge v2, v4, :cond_1

    #@12
    aget-object v0, v3, v2

    #@14
    .line 861
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 862
    const/4 v1, 0x0

    #@25
    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@27
    .line 863
    return-void

    #@28
    .line 860
    :cond_0
    add-int/lit8 v1, v2, 0x1

    #@2a
    move v2, v1

    #@2b
    goto :goto_0

    #@2c
    .line 866
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    #@2f
    .line 855
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 947
    const/16 v2, 0x1e

    #@2
    .line 948
    .local v2, "maxInputChannels":I
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    #@5
    move-result-object v0

    #@6
    .line 950
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "sample-rate-ranges"

    #@9
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 951
    const-string/jumbo v5, "sample-rate-ranges"

    #@12
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    const-string/jumbo v6, ","

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 952
    .local v4, "rateStrings":[Ljava/lang/String;
    array-length v5, v4

    #@1e
    new-array v3, v5, [Landroid/util/Range;

    #@20
    .line 953
    .local v3, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    array-length v5, v4

    #@22
    if-ge v1, v5, :cond_0

    #@24
    .line 954
    aget-object v5, v4, v1

    #@26
    const/4 v6, 0x0

    #@27
    invoke-static {v5, v6}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@2a
    move-result-object v5

    #@2b
    aput-object v5, v3, v1

    #@2d
    .line 953
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 956
    :cond_0
    invoke-direct {p0, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    #@33
    .line 958
    .end local v1    # "i":I
    .end local v3    # "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v4    # "rateStrings":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "max-channel-count"

    #@36
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 960
    const-string/jumbo v5, "max-channel-count"

    #@3f
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 959
    invoke-static {v5, v2}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    #@46
    move-result v2

    #@47
    .line 962
    :cond_2
    const-string/jumbo v5, "bitrate-range"

    #@4a
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_3

    #@50
    .line 964
    const-string/jumbo v5, "bitrate-range"

    #@53
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v5, v0}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@5a
    move-result-object v5

    #@5b
    .line 963
    invoke-virtual {v0, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    #@5e
    move-result-object v0

    #@5f
    .line 966
    :cond_3
    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits(ILandroid/util/Range;)V

    #@62
    .line 946
    return-void
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "sampleRate"    # Ljava/lang/Integer;
    .param p2, "inputChannels"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 813
    if-eqz p2, :cond_1

    #@4
    .line 814
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v1

    #@8
    if-lt v1, v4, :cond_0

    #@a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    iget v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 815
    :cond_0
    return v3

    #@13
    .line 817
    :cond_1
    if-eqz p1, :cond_2

    #@15
    .line 819
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@17
    .line 818
    invoke-static {v1, p1}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    #@1a
    move-result v0

    #@1b
    .line 820
    .local v0, "ix":I
    if-gez v0, :cond_2

    #@1d
    .line 821
    return v3

    #@1e
    .line 824
    .end local v0    # "ix":I
    :cond_2
    return v4
.end method


# virtual methods
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
    .line 755
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getMaxInputChannelCount()I
    .locals 1

    #@0
    .prologue
    .line 781
    iget v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@2
    return v0
.end method

.method public getSupportedSampleRateRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 773
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/util/Range;

    #@b
    return-object v0
.end method

.method public getSupportedSampleRates()[I
    .locals 2

    #@0
    .prologue
    .line 764
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@2
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 797
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    .line 798
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->initWithPlatformLimits()V

    #@5
    .line 799
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLevelLimits()V

    #@8
    .line 800
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    #@b
    .line 796
    return-void
.end method

.method public isSampleRateSupported(I)Z
    .locals 2
    .param p1, "sampleRate"    # I

    #@0
    .prologue
    .line 831
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public setDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 972
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@3
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@b
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 973
    const-string/jumbo v1, "bitrate"

    #@18
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    #@1a
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/Integer;

    #@20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v0

    #@24
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@27
    .line 975
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mMaxInputChannelCount:I

    #@29
    if-ne v0, v2, :cond_1

    #@2b
    .line 977
    const-string/jumbo v0, "channel-count"

    #@2e
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@31
    .line 979
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@33
    if-eqz v0, :cond_2

    #@35
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@37
    array-length v0, v0

    #@38
    if-ne v0, v2, :cond_2

    #@3a
    .line 980
    const-string/jumbo v0, "sample-rate"

    #@3d
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    #@3f
    const/4 v2, 0x0

    #@40
    aget v1, v1, v2

    #@42
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@45
    .line 970
    :cond_2
    return-void
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 986
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    .line 987
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "sample-rate"

    #@7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/lang/Integer;

    #@d
    .line 988
    .local v2, "sampleRate":Ljava/lang/Integer;
    const-string/jumbo v3, "channel-count"

    #@10
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Integer;

    #@16
    .line 989
    .local v0, "channels":Ljava/lang/Integer;
    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 990
    const/4 v3, 0x0

    #@1d
    return v3

    #@1e
    .line 996
    :cond_0
    const/4 v3, 0x1

    #@1f
    return v3
.end method
