.class public final Landroid/media/internal/exo/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;,
        Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;
    }
.end annotation


# static fields
.field public static final blacklist FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;


# instance fields
.field private blacklist bytesSinceLastSync:I

.field private final blacklist continuityCounters:Landroid/util/SparseIntArray;

.field private final blacklist durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

.field private blacklist hasOutputSeekMap:Z

.field private blacklist id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

.field private final blacklist mode:I

.field private blacklist output:Landroid/media/internal/exo/extractor/ExtractorOutput;

.field private final blacklist payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

.field private blacklist pcrPid:I

.field private blacklist pendingSeekToStart:Z

.field private blacklist remainingPmts:I

.field private final blacklist timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist timestampSearchBytes:I

.field private final blacklist trackIds:Landroid/util/SparseBooleanArray;

.field private final blacklist trackPids:Landroid/util/SparseBooleanArray;

.field private blacklist tracksEnded:Z

.field private blacklist tsBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

.field private final blacklist tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->FACTORY:Landroid/media/internal/exo/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/TsExtractor;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4

    const/4 v0, 0x1

    const v1, 0x1b8a0

    .line 147
    invoke-direct {p0, v0, p1, v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;-><init>(III)V

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 7

    .line 166
    new-instance v0, Landroid/media/internal/exo/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/media/internal/exo/extractor/ts/TsExtractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;)V
    .registers 5

    const v0, 0x1b8a0

    .line 183
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/internal/exo/extractor/ts/TsExtractor;-><init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;I)V
    .registers 5

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p3}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    iput-object p3, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    .line 206
    iput p4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampSearchBytes:I

    .line 207
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_21

    const/4 p3, 0x2

    if-ne p1, p3, :cond_16

    goto :goto_21

    .line 211
    :cond_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 212
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 209
    :cond_21
    :goto_21
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 214
    :goto_27
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 215
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 216
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 217
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 218
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 219
    new-instance p1, Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    invoke-direct {p1, p4}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    .line 220
    sget-object p1, Landroid/media/internal/exo/extractor/ExtractorOutput;->PLACEHOLDER:Landroid/media/internal/exo/extractor/ExtractorOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    const/4 p1, -0x1

    .line 221
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pcrPid:I

    .line 222
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->resetPayloadReaders()V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I
    .registers 1

    .line 55
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I

    return p0
.end method

.method static synthetic blacklist access$1000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    return p0
.end method

.method static synthetic blacklist access$1002(Landroid/media/internal/exo/extractor/ts/TsExtractor;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic blacklist access$102(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 55
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic blacklist access$108(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I
    .registers 3

    .line 55
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I
    .registers 1

    .line 55
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Ljava/util/List;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic blacklist access$402(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)I
    .registers 2

    .line 55
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    return-object p0
.end method

.method static synthetic blacklist access$502(Landroid/media/internal/exo/extractor/ts/TsExtractor;Landroid/media/internal/exo/extractor/ts/TsPayloadReader;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    .registers 2

    .line 55
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic blacklist access$600(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    return-object p0
.end method

.method static synthetic blacklist access$700(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ExtractorOutput;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-object p0
.end method

.method static synthetic blacklist access$800(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic blacklist access$900(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 55
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private blacklist fillBufferWithAtLeastOnePacket(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 420
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_29

    .line 421
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_24

    .line 423
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    :cond_24
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 428
    :cond_29
    :goto_29
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_48

    .line 429
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    .line 430
    invoke-interface {p1, v0, v1, v4}, Landroid/media/internal/exo/extractor/ExtractorInput;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    return v2

    .line 434
    :cond_41
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    goto :goto_29

    :cond_48
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist findEndOfFirstTsPacketInBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 447
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    .line 448
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 449
    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/media/internal/exo/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 452
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_38

    .line 455
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 456
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_37

    const/16 p0, 0x178

    if-gt v1, p0, :cond_2f

    goto :goto_37

    .line 457
    :cond_2f
    const-string p0, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_37
    :goto_37
    return v3

    :cond_38
    const/4 v0, 0x0

    .line 462
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return v3
.end method

.method private blacklist maybeOutputSeekMap(J)V
    .registers 12

    .line 400
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 402
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 403
    new-instance v1, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    .line 405
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Landroid/media/internal/exo/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    .line 406
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v3

    iget v7, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pcrPid:I

    iget v8, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;-><init>(Landroid/media/internal/exo/util/TimestampAdjuster;JJII)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

    .line 410
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    invoke-virtual {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->getSeekMap()Landroid/media/internal/exo/extractor/SeekMap;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    return-void

    .line 412
    :cond_38
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    new-instance p2, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroid/media/internal/exo/extractor/ExtractorOutput;->seekMap(Landroid/media/internal/exo/extractor/SeekMap;)V

    :cond_48
    return-void
.end method

.method private blacklist resetPayloadReaders()V
    .registers 8

    .line 474
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 475
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 476
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    .line 477
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_2a

    .line 480
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 482
    :cond_2a
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v1, Landroid/media/internal/exo/extractor/ts/SectionReader;

    new-instance v3, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;-><init>(Landroid/media/internal/exo/extractor/ts/TsExtractor;)V

    invoke-direct {v1, v3}, Landroid/media/internal/exo/extractor/ts/SectionReader;-><init>(Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    return-void
.end method

.method private blacklist shouldConsumePacketPayload(I)Z
    .registers 4

    .line 468
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    return v0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/ExtractorOutput;)V
    .registers 2

    .line 250
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 298
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 299
    iget-boolean v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_56

    cmp-long v5, v3, v6

    if-eqz v5, :cond_2c

    .line 300
    iget v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    if-eq v5, v8, :cond_2c

    .line 301
    iget-object v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 302
    iget-object v3, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->durationReader:Landroid/media/internal/exo/extractor/ts/TsDurationReader;

    iget v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v3, v1, v2, v0}, Landroid/media/internal/exo/extractor/ts/TsDurationReader;->readDuration(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;I)I

    move-result v0

    return v0

    .line 304
    :cond_2c
    invoke-direct {v0, v3, v4}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 306
    iget-boolean v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v5, :cond_45

    .line 307
    iput-boolean v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v11, 0x0

    .line 308
    invoke-virtual {v0, v11, v12, v11, v12}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->seek(JJ)V

    .line 309
    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    cmp-long v5, v13, v11

    if-eqz v5, :cond_45

    .line 310
    iput-wide v11, v2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return v9

    .line 315
    :cond_45
    iget-object v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

    if-eqz v5, :cond_56

    invoke-virtual {v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 316
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->handlePendingSeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 320
    :cond_56
    invoke-direct/range {p0 .. p1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Landroid/media/internal/exo/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_5e

    const/4 v0, -0x1

    return v0

    .line 324
    :cond_5e
    invoke-direct {v0}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v1

    .line 325
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    if-le v1, v2, :cond_6b

    return v10

    .line 333
    :cond_6b
    iget-object v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v11, 0x800000

    and-int/2addr v11, v5

    if-eqz v11, :cond_7c

    .line 336
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v10

    :cond_7c
    const/high16 v11, 0x400000

    and-int/2addr v11, v5

    if-eqz v11, :cond_83

    move v11, v9

    goto :goto_84

    :cond_83
    move v11, v10

    :goto_84
    const v12, 0x1fff00

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x8

    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_90

    move v13, v9

    goto :goto_91

    :cond_90
    move v13, v10

    :goto_91
    and-int/lit8 v14, v5, 0x10

    if-eqz v14, :cond_9e

    .line 346
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    goto :goto_9f

    :cond_9e
    const/4 v14, 0x0

    :goto_9f
    if-nez v14, :cond_a7

    .line 348
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v10

    .line 353
    :cond_a7
    iget v15, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    if-eq v15, v8, :cond_cd

    and-int/lit8 v5, v5, 0xf

    .line 355
    iget-object v15, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    move-wide/from16 v16, v6

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v15, v12, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 356
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v6, v5, :cond_c4

    .line 359
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v10

    :cond_c4
    add-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    if-eq v5, v6, :cond_cf

    .line 363
    invoke-interface {v14}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;->seek()V

    goto :goto_cf

    :cond_cd
    move-wide/from16 v16, v6

    :cond_cf
    :goto_cf
    if-eqz v13, :cond_eb

    .line 369
    iget-object v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 370
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_e3

    move v6, v8

    goto :goto_e4

    :cond_e3
    move v6, v10

    :goto_e4
    or-int/2addr v11, v6

    .line 376
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    sub-int/2addr v5, v9

    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 380
    :cond_eb
    iget-boolean v5, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 381
    invoke-direct {v0, v12}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 382
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 383
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-interface {v14, v6, v11}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;->consume(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 384
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 386
    :cond_102
    iget v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    if-eq v2, v8, :cond_112

    if-nez v5, :cond_112

    iget-boolean v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v2, :cond_112

    cmp-long v2, v3, v16

    if-eqz v2, :cond_112

    .line 390
    iput-boolean v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 393
    :cond_112
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v10
.end method

.method public blacklist seek(JJ)V
    .registers 14

    .line 255
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_9

    move p1, v0

    goto :goto_a

    :cond_9
    move p1, v1

    :goto_a
    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    .line 256
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_14
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_4d

    .line 258
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 264
    invoke-virtual {v4}, Landroid/media/internal/exo/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_2f

    move v5, v0

    goto :goto_30

    :cond_2f
    move v5, v1

    :goto_30
    if-nez v5, :cond_45

    .line 266
    invoke-virtual {v4}, Landroid/media/internal/exo/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_44

    cmp-long v2, v5, v2

    if-eqz v2, :cond_44

    cmp-long v2, v5, p3

    if-eqz v2, :cond_44

    move v5, v0

    goto :goto_45

    :cond_44
    move v5, v1

    :cond_45
    :goto_45
    if-eqz v5, :cond_4a

    .line 276
    invoke-virtual {v4, p3, p4}, Landroid/media/internal/exo/util/TimestampAdjuster;->reset(J)V

    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_4d
    cmp-long p1, p3, v2

    if-eqz p1, :cond_58

    .line 279
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;

    if-eqz p1, :cond_58

    .line 280
    invoke-virtual {p1, p3, p4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 282
    :cond_58
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 283
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    .line 284
    :goto_63
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_79

    .line 285
    iget-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    invoke-interface {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_63

    .line 287
    :cond_79
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return-void
.end method

.method public blacklist sniff(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPacketBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/16 v0, 0x3ac

    const/4 v1, 0x0

    .line 230
    invoke-interface {p1, p0, v1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    move v0, v1

    :goto_d
    const/16 v2, 0xbc

    if-ge v0, v2, :cond_29

    move v2, v1

    :goto_12
    const/4 v3, 0x5

    if-ge v2, v3, :cond_24

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v0

    .line 235
    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 241
    :cond_24
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1
.end method
