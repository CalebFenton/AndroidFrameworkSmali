.class public final Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "TrueHdSampleRechunker.java"


# instance fields
.field private blacklist chunkFlags:I

.field private blacklist chunkOffset:I

.field private blacklist chunkSampleCount:I

.field private blacklist chunkSize:I

.field private blacklist chunkTimeUs:J

.field private blacklist foundSyncframe:Z

.field private final blacklist syncframePrefix:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 40
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    return-void
.end method


# virtual methods
.method public blacklist outputPendingSampleMetadata(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V
    .registers 11

    .line 88
    iget v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-lez v0, :cond_14

    .line 89
    iget-wide v2, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    iget v4, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkFlags:I

    iget v5, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSize:I

    iget v6, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkOffset:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_14
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    .line 45
    iput v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    return-void
.end method

.method public blacklist sampleMetadata(Landroid/media/internal/exo/extractor/TrackOutput;JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V
    .registers 11

    .line 67
    iget v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkOffset:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0, v1}, Landroid/media/internal/exo/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 70
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_14

    goto :goto_30

    .line 73
    :cond_14
    iget v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v0, :cond_22

    .line 75
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    .line 76
    iput p4, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkFlags:I

    .line 77
    iput v2, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 79
    :cond_22
    iget p2, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr p2, p5

    iput p2, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 80
    iput p6, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->chunkOffset:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_30

    .line 82
    invoke-virtual {p0, p1, p7}, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroid/media/internal/exo/extractor/TrackOutput;Landroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public blacklist startSample(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_5

    goto :goto_18

    .line 52
    :cond_5
    iget-object v0, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 53
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 54
    iget-object p1, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {p1}, Landroid/media/internal/exo/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result p1

    if-nez p1, :cond_19

    :goto_18
    return-void

    :cond_19
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    return-void
.end method
