.class public final Landroid/media/EncoderProfiles$AudioProfile;
.super Ljava/lang/Object;
.source "EncoderProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioProfile"
.end annotation


# instance fields
.field private blacklist bitrate:I

.field private blacklist channels:I

.field private blacklist codec:I

.field private blacklist profile:I

.field private blacklist sampleRate:I


# direct methods
.method constructor blacklist <init>(IIIII)V
    .registers 6
    .param p1, "codec"    # I
    .param p2, "channels"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitrate"    # I
    .param p5, "profile"    # I

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    .line 457
    iput p2, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    .line 458
    iput p3, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    .line 459
    iput p4, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    .line 460
    iput p5, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    .line 461
    return-void
.end method


# virtual methods
.method public whitelist getBitrate()I
    .registers 2

    .line 414
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->bitrate:I

    return v0
.end method

.method public whitelist getChannels()I
    .registers 2

    .line 428
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->channels:I

    return v0
.end method

.method public whitelist getCodec()I
    .registers 2

    .line 385
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    return v0
.end method

.method public whitelist getMediaType()Ljava/lang/String;
    .registers 3

    .line 393
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 394
    const-string v0, "audio/3gpp"

    return-object v0

    .line 395
    :cond_8
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 396
    const-string v0, "audio/amr-wb"

    return-object v0

    .line 397
    :cond_10
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_20

    goto :goto_38

    .line 401
    :cond_20
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_28

    .line 402
    const-string v0, "audio/vorbis"

    return-object v0

    .line 403
    :cond_28
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_30

    .line 404
    const-string v0, "audio/opus"

    return-object v0

    .line 407
    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown codec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_38
    :goto_38
    const-string v0, "audio/mp4a-latm"

    return-object v0
.end method

.method public whitelist getProfile()I
    .registers 4

    .line 438
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 439
    const/4 v0, 0x1

    return v0

    .line 440
    :cond_7
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne v0, v1, :cond_e

    .line 441
    return v2

    .line 442
    :cond_e
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->codec:I

    if-ne v0, v2, :cond_15

    .line 443
    const/16 v0, 0x27

    return v0

    .line 445
    :cond_15
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->profile:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 421
    iget v0, p0, Landroid/media/EncoderProfiles$AudioProfile;->sampleRate:I

    return v0
.end method
