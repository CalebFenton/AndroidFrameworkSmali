.class public final Landroid/media/internal/exo/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private final blacklist durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

.field private blacklist foundAllTracks:Z

.field private blacklist foundAudioTrack:Z

.field private blacklist foundVideoTrack:Z

.field private blacklist hasOutputSeekMap:Z

.field private blacklist lastTrackPosition:J

.field private blacklist output:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private blacklist psBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

.field private final blacklist psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 77
    new-instance v0, Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/PsExtractor;-><init>(Landroid/media/internal/exo/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/util/TimestampAdjuster;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 82
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 83
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 84
    new-instance p1, Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    return-void
.end method

.method private blacklist maybeOutputSeekMap(J)V
    .registers 10

    .line 294
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 296
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 297
    new-instance v1, Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    .line 299
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Landroid/media/internal/exo/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    .line 300
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;-><init>(Landroid/media/internal/exo/util/TimestampAdjuster;JJ)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

    .line 302
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->getSeekMap()Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    return-void

    .line 304
    :cond_34
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 2

    .line 133
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    .line 177
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 178
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/PsDurationReader;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ts/PsDurationReader;->readDuration(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 180
    :cond_1e
    invoke-direct {p0, v0, v1}, Landroid/media/internal/exo/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 181
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 182
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->handlePendingSeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 185
    :cond_32
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v4, :cond_3d

    .line 187
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_3e

    :cond_3d
    move-wide v0, v2

    :goto_3e
    cmp-long p2, v0, v2

    const/4 v2, -0x1

    if-eqz p2, :cond_4a

    const-wide/16 v3, 0x4

    cmp-long p2, v0, v3

    if-gez p2, :cond_4a

    return v2

    .line 192
    :cond_4a
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, p2, v1, v0, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_5a

    return v2

    .line 196
    :cond_5a
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 197
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p2

    const/16 v0, 0x1b9

    if-ne p2, v0, :cond_6a

    return v2

    :cond_6a
    const/16 v0, 0x1ba

    if-ne p2, v0, :cond_8e

    .line 202
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 205
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0xe

    .line 211
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_8e
    const/16 v0, 0x1bb

    const/4 v2, 0x2

    const/4 v4, 0x6

    if-ne p2, v0, :cond_ad

    .line 215
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 218
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 219
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    add-int/2addr p0, v4

    .line 220
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_ad
    and-int/lit16 v0, p2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v3, :cond_b7

    .line 223
    invoke-interface {p1, v3}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_b7
    and-int/lit16 v0, p2, 0xff

    .line 232
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;

    .line 233
    iget-boolean v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v6, :cond_13c

    if-nez v5, :cond_11c

    const/16 v6, 0xbd

    if-ne v0, v6, :cond_d9

    .line 240
    new-instance p2, Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    invoke-direct {p2}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;-><init>()V

    .line 241
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 242
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_102

    :cond_d9
    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_ed

    .line 244
    new-instance p2, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;

    invoke-direct {p2}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;-><init>()V

    .line 245
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 246
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_102

    :cond_ed
    and-int/lit16 p2, p2, 0xf0

    const/16 v6, 0xe0

    if-ne p2, v6, :cond_101

    .line 248
    new-instance p2, Landroid/media/internal/exo/extractor/ts/H262Reader;

    invoke-direct {p2}, Landroid/media/internal/exo/extractor/ts/H262Reader;-><init>()V

    .line 249
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 250
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_102

    :cond_101
    const/4 p2, 0x0

    :goto_102
    if-eqz p2, :cond_11c

    .line 253
    new-instance v5, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v6, 0x100

    invoke-direct {v5, v0, v6}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 254
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p2, v6, v5}, Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 255
    new-instance v5, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;

    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-direct {v5, p2, v6}, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;Landroid/media/internal/exo/util/TimestampAdjuster;)V

    .line 256
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    :cond_11c
    iget-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_12a

    iget-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_12a

    .line 261
    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_12d

    :cond_12a
    const-wide/32 v6, 0x100000

    .line 263
    :goto_12d
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_13c

    .line 264
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 265
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-interface {p2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 270
    :cond_13c
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 271
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 272
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v5, :cond_157

    .line 277
    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_178

    .line 279
    :cond_157
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 281
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 282
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 283
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5, p1}, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;)V

    .line 284
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    :goto_178
    return v1
.end method

.method public blacklist seek(JJ)V
    .registers 10

    .line 143
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_13

    move p1, v2

    goto :goto_14

    :cond_13
    move p1, p2

    :goto_14
    if-nez p1, :cond_2d

    .line 145
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    cmp-long p1, v3, p3

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, p2

    :goto_2c
    move p1, v2

    :cond_2d
    if-eqz p1, :cond_34

    .line 155
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->timestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Landroid/media/internal/exo/util/TimestampAdjuster;->reset(J)V

    .line 158
    :cond_34
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_3b

    .line 159
    invoke-virtual {p1, p3, p4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 161
    :cond_3b
    :goto_3b
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_51

    .line 162
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_51
    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0xe

    .line 91
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 92
    invoke-interface {p1, v0, v1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 95
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_2a

    return v1

    :cond_2a
    const/4 p0, 0x4

    .line 103
    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_34

    return v1

    :cond_34
    const/4 v6, 0x6

    .line 107
    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3b

    return v1

    .line 111
    :cond_3b
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_41

    return v1

    :cond_41
    const/16 p0, 0x9

    .line 115
    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_49

    return v1

    :cond_49
    const/16 p0, 0xc

    .line 119
    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_51

    return v1

    :cond_51
    const/16 p0, 0xd

    .line 123
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    .line 124
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 126
    invoke-interface {p1, v0, v1, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 127
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_71

    return v2

    :cond_71
    return v1
.end method
