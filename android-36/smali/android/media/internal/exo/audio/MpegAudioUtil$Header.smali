.class public final Landroid/media/internal/exo/audio/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/audio/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public blacklist bitrate:I

.field public blacklist channels:I

.field public blacklist frameSize:I

.field public blacklist mimeType:Ljava/lang/String;

.field public blacklist sampleRate:I

.field public blacklist samplesPerFrame:I

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setForHeaderData(I)Z
    .registers 10

    .line 53
    # invokes: Landroid/media/internal/exo/audio/MpegAudioUtil;->isMagicPresent(I)Z
    invoke-static {p1}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    if-ne v5, v6, :cond_21

    goto/16 :goto_ad

    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_27

    return v1

    .line 78
    :cond_27
    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->version:I

    .line 79
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 80
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_42

    .line 83
    div-int/2addr v1, v6

    iput v1, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_48

    :cond_42
    if-nez v0, :cond_48

    .line 86
    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    :cond_48
    :goto_48
    ushr-int/lit8 v1, p1, 0x9

    and-int/2addr v1, v3

    .line 89
    # invokes: Landroid/media/internal/exo/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I
    invoke-static {v0, v4}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$300(II)I

    move-result v7

    iput v7, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    if-ne v4, v2, :cond_71

    if-ne v0, v2, :cond_5d

    .line 92
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L1:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$400()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_64

    :cond_5d
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2_L1:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$500()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_64
    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->bitrate:I

    mul-int/lit8 v0, v0, 0xc

    .line 93
    iget v4, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    :cond_71
    const/16 v7, 0x90

    if-ne v0, v2, :cond_90

    if-ne v4, v6, :cond_7f

    .line 98
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L2:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$600()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_86

    :cond_7f
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L3:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$700()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_86
    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v0, v7

    .line 99
    iget v4, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    .line 102
    :cond_90
    # getter for: Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2:[I
    invoke-static {}, Landroid/media/internal/exo/audio/MpegAudioUtil;->access$800()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    iput v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->bitrate:I

    if-ne v4, v3, :cond_9d

    const/16 v7, 0x48

    :cond_9d
    mul-int/2addr v7, v0

    .line 103
    iget v0, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v7, v0

    add-int/2addr v7, v1

    iput v7, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    :goto_a4
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_aa

    move v6, v3

    .line 106
    :cond_aa
    iput v6, p0, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->channels:I

    return v3

    :cond_ad
    :goto_ad
    return v1
.end method
