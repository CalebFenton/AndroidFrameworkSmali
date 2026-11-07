.class public final Landroid/media/EncoderProfiles$VideoProfile;
.super Ljava/lang/Object;
.source "EncoderProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderProfiles$VideoProfile$ChromaSubsampling;,
        Landroid/media/EncoderProfiles$VideoProfile$HdrFormat;
    }
.end annotation


# static fields
.field public static final whitelist HDR_DOLBY_VISION:I = 0x4

.field public static final whitelist HDR_HDR10:I = 0x2

.field public static final whitelist HDR_HDR10PLUS:I = 0x3

.field public static final whitelist HDR_HLG:I = 0x1

.field public static final whitelist HDR_NONE:I = 0x0

.field public static final whitelist YUV_420:I = 0x0

.field public static final whitelist YUV_422:I = 0x1

.field public static final whitelist YUV_444:I = 0x2


# instance fields
.field private blacklist bitDepth:I

.field private blacklist bitrate:I

.field private blacklist chromaSubsampling:I

.field private blacklist codec:I

.field private blacklist frameRate:I

.field private blacklist hdrFormat:I

.field private blacklist height:I

.field private blacklist profile:I

.field private blacklist width:I


# direct methods
.method constructor blacklist <init>(IIIIII)V
    .registers 17
    .param p1, "codec"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitrate"    # I
    .param p6, "profile"    # I

    .line 267
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/media/EncoderProfiles$VideoProfile;-><init>(IIIIIIIII)V

    .line 269
    return-void
.end method

.method constructor blacklist <init>(IIIIIIIII)V
    .registers 10
    .param p1, "codec"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitrate"    # I
    .param p6, "profile"    # I
    .param p7, "chromaSubsampling"    # I
    .param p8, "bitDepth"    # I
    .param p9, "hdrFormat"    # I

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    .line 251
    iput p2, p0, Landroid/media/EncoderProfiles$VideoProfile;->width:I

    .line 252
    iput p3, p0, Landroid/media/EncoderProfiles$VideoProfile;->height:I

    .line 253
    iput p4, p0, Landroid/media/EncoderProfiles$VideoProfile;->frameRate:I

    .line 254
    iput p5, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitrate:I

    .line 255
    iput p6, p0, Landroid/media/EncoderProfiles$VideoProfile;->profile:I

    .line 256
    iput p7, p0, Landroid/media/EncoderProfiles$VideoProfile;->chromaSubsampling:I

    .line 257
    iput p8, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitDepth:I

    .line 258
    iput p9, p0, Landroid/media/EncoderProfiles$VideoProfile;->hdrFormat:I

    .line 259
    return-void
.end method


# virtual methods
.method public whitelist getBitDepth()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitDepth:I

    return v0
.end method

.method public whitelist getBitrate()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->bitrate:I

    return v0
.end method

.method public whitelist getChromaSubsampling()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->chromaSubsampling:I

    return v0
.end method

.method public whitelist getCodec()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    return v0
.end method

.method public whitelist getFrameRate()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->frameRate:I

    return v0
.end method

.method public whitelist getHdrFormat()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->hdrFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->height:I

    return v0
.end method

.method public whitelist getMediaType()Ljava/lang/String;
    .registers 3

    .line 93
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 94
    const-string v0, "video/3gpp"

    return-object v0

    .line 95
    :cond_8
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 96
    const-string v0, "video/avc"

    return-object v0

    .line 97
    :cond_10
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 98
    const-string v0, "video/mp4v-es"

    return-object v0

    .line 99
    :cond_18
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 100
    const-string v0, "video/x-vnd.on2.vp8"

    return-object v0

    .line 101
    :cond_20
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 102
    const-string v0, "video/hevc"

    return-object v0

    .line 103
    :cond_28
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_30

    .line 104
    const-string v0, "video/x-vnd.on2.vp9"

    return-object v0

    .line 105
    :cond_30
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_38

    .line 106
    const-string v0, "video/dolby-vision"

    return-object v0

    .line 107
    :cond_38
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->codec:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 108
    const-string v0, "video/av01"

    return-object v0

    .line 111
    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown codec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProfile()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->profile:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/media/EncoderProfiles$VideoProfile;->width:I

    return v0
.end method
