.class final Landroid/media/internal/exo/extractor/mp3/ConstantBitrateSeeker;
.super Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mp3/Seeker;


# direct methods
.method public constructor blacklist <init>(JJLandroid/media/internal/exo/audio/MpegAudioUtil$Header;Z)V
    .registers 15

    .line 42
    iget v5, p5, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Landroid/media/internal/exo/audio/MpegAudioUtil$Header;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public blacklist getDataEndPosition()J
    .registers 3

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getTimeUs(J)J
    .registers 3

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p0

    return-wide p0
.end method
