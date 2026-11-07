.class public final Landroid/media/internal/exo/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final blacklist ID3_IDENTIFIER:[B


# instance fields
.field private final blacklist adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

.field private blacklist bytesRead:I

.field private blacklist currentFrameVersion:I

.field private blacklist currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist currentSampleDuration:J

.field private final blacklist exposeId3:Z

.field private blacklist firstFrameSampleRateIndex:I

.field private blacklist firstFrameVersion:I

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist foundFirstFrame:Z

.field private blacklist hasCrc:Z

.field private blacklist hasOutputFormat:Z

.field private final blacklist id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private blacklist id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private final blacklist language:Ljava/lang/String;

.field private blacklist matchState:I

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist sampleDurationUs:J

.field private blacklist sampleSize:I

.field private blacklist state:I

.field private blacklist timeUs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    .line 112
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object v1, Landroid/media/internal/exo/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 113
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setFindingSampleState()V

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 115
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 117
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    .line 118
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->exposeId3:Z

    .line 119
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private blacklist assertTracksCreated()V
    .registers 2

    .line 546
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist checkAdtsHeader(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    .line 331
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 336
    :cond_7
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v0, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p1

    aget-byte p1, v1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 338
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 339
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 340
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    if-eq p1, v0, :cond_30

    .line 343
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->resetSync()V

    return-void

    .line 347
    :cond_30
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 349
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 350
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 352
    :cond_3d
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    return-void
.end method

.method private blacklist checkSyncPositionValid(Landroid/media/internal/exo/util/ParsableByteArray;I)Z
    .registers 11

    add-int/lit8 v0, p2, 0x1

    .line 378
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 379
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v0, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->tryRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 384
    :cond_12
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 385
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 386
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-eq v0, v4, :cond_26

    return v2

    .line 391
    :cond_26
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4b

    .line 392
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v4, v4, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->tryRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_36

    return v1

    .line 396
    :cond_36
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 397
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 398
    iget v7, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v7, :cond_46

    return v2

    :cond_46
    add-int/lit8 v4, p2, 0x2

    .line 401
    invoke-virtual {p1, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 405
    :cond_4b
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v4, v4, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->tryRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_56

    return v1

    .line 409
    :cond_56
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 410
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_69

    return v2

    .line 417
    :cond_69
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 418
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p1

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_75

    return v1

    .line 424
    :cond_75
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_8f

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_7d

    return v1

    .line 429
    :cond_7d
    aget-byte p1, v4, p2

    invoke-direct {p0, v5, p1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result p0

    if-eqz p0, :cond_8e

    aget-byte p0, v4, p2

    and-int/lit8 p0, p0, 0x8

    shr-int/lit8 p0, p0, 0x3

    if-ne p0, v0, :cond_8e

    return v1

    :cond_8e
    return v2

    :cond_8f
    const/16 p0, 0x49

    if-eq v3, p0, :cond_94

    return v2

    :cond_94
    add-int/lit8 p0, p2, 0x1

    if-ne p0, p1, :cond_99

    return v1

    .line 439
    :cond_99
    aget-byte p0, v4, p0

    const/16 v0, 0x44

    if-eq p0, v0, :cond_a0

    return v2

    :cond_a0
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_a4

    return v1

    .line 446
    :cond_a4
    aget-byte p0, v4, p2

    const/16 p1, 0x33

    if-ne p0, p1, :cond_ab

    return v1

    :cond_ab
    return v2
.end method

.method private blacklist continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 218
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 220
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist findNextSample(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 11

    .line 278
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 280
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_7b

    add-int/lit8 v3, v1, 0x1

    .line 282
    aget-byte v4, v0, v1

    and-int/lit16 v5, v4, 0xff

    .line 283
    iget v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    const/16 v7, 0x200

    if-ne v6, v7, :cond_4c

    int-to-byte v6, v5

    const/4 v8, -0x1

    invoke-direct {p0, v8, v6}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 284
    iget-boolean v6, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v6, :cond_2e

    add-int/lit8 v6, v1, -0x1

    .line 285
    invoke-direct {p0, p1, v6}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->checkSyncPositionValid(Landroid/media/internal/exo/util/ParsableByteArray;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    :cond_2e
    and-int/lit8 v0, v4, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 286
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentFrameVersion:I

    const/4 v0, 0x1

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 287
    :goto_3b
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->hasCrc:Z

    .line 288
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_45

    .line 289
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_48

    .line 291
    :cond_45
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 293
    :goto_48
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 298
    :cond_4c
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v4

    const/16 v6, 0x149

    if-eq v5, v6, :cond_75

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_72

    const/16 v6, 0x344

    if-eq v5, v6, :cond_6d

    const/16 v6, 0x433

    if-eq v5, v6, :cond_66

    const/16 v5, 0x100

    if-eq v4, v5, :cond_79

    .line 316
    iput v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    goto :goto_c

    .line 309
    :cond_66
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 310
    invoke-virtual {p1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_6d
    const/16 v1, 0x400

    .line 306
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    goto :goto_79

    .line 300
    :cond_72
    iput v7, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    goto :goto_79

    :cond_75
    const/16 v1, 0x300

    .line 303
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    :cond_79
    :goto_79
    move v1, v3

    goto :goto_c

    .line 322
    :cond_7b
    invoke-virtual {p1, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private blacklist isAdtsSyncBytes(BB)Z
    .registers 3

    and-int/lit16 p0, p1, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    .line 452
    invoke-static {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAdtsSyncWord(I)Z
    .registers 2

    .line 0
    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist parseAdtsHeader()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->setPosition(I)V

    .line 478
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v0, :cond_8f

    .line 479
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq v0, v1, :cond_31

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdtsReader"

    invoke-static {v3, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move v1, v0

    .line 494
    :goto_32
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 495
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 497
    iget v3, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 498
    invoke-static {v1, v3, v0}, Landroid/media/internal/exo/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig([B)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object v1

    .line 501
    new-instance v3, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v3}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 503
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    const-string v4, "audio/mp4a-latm"

    .line 504
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 505
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    .line 506
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    iget v1, v1, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    .line 507
    invoke-virtual {v3, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 508
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    .line 513
    iget v1, v0, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v3, v1

    const-wide/32 v5, 0x3d090000

    div-long/2addr v5, v3

    iput-wide v5, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 514
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 515
    iput-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_96

    .line 517
    :cond_8f
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 520
    :goto_96
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 521
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    .line 522
    iget-boolean v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_ac

    add-int/lit8 v1, v0, -0x9

    :cond_ac
    move v7, v1

    .line 526
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setReadingSampleState(Landroid/media/internal/exo/extractor/TrackOutput;JII)V

    return-void
.end method

.method private blacklist parseId3Header()V
    .registers 10

    .line 467
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 468
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 469
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 470
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 469
    invoke-direct/range {v3 .. v8}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setReadingSampleState(Landroid/media/internal/exo/extractor/TrackOutput;JII)V

    return-void
.end method

.method private blacklist readSample(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 9

    .line 532
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 533
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 534
    iget p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    .line 535
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v4, :cond_38

    .line 536
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_35

    .line 537
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 538
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    .line 540
    :cond_35
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_38
    return-void
.end method

.method private blacklist resetSync()V
    .registers 2

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 205
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method private blacklist setCheckingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x1

    .line 267
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private blacklist setFindingSampleState()V
    .registers 2

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    .line 227
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    .line 228
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method private blacklist setReadingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x3

    .line 261
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private blacklist setReadingId3HeaderState()V
    .registers 2

    const/4 v0, 0x2

    .line 236
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    .line 237
    sget-object v0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleSize:I

    .line 239
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private blacklist setReadingSampleState(Landroid/media/internal/exo/extractor/TrackOutput;JII)V
    .registers 7

    const/4 v0, 0x4

    .line 252
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    .line 253
    iput p4, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->bytesRead:I

    .line 254
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 255
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 256
    iput p5, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method

.method private blacklist tryRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z
    .registers 5

    .line 457
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    const/4 v0, 0x0

    if-ge p0, p3, :cond_8

    return v0

    .line 460
    :cond_8
    invoke-virtual {p1, p2, v0, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->assertTracksCreated()V

    .line 162
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_52

    .line 163
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->state:I

    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 182
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->readSample(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_3

    .line 185
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 176
    :cond_23
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x7

    goto :goto_2a

    :cond_29
    const/4 v0, 0x5

    .line 177
    :goto_2a
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->adtsScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    iget-object v1, v1, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_3

    .line 168
    :cond_38
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->continueRead(Landroid/media/internal/exo/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_3

    .line 173
    :cond_4a
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->checkAdtsHeader(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_3

    .line 165
    :cond_4e
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->findNextSample(Landroid/media/internal/exo/util/ParsableByteArray;)V

    goto :goto_3

    :cond_52
    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 135
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 136
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 137
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 138
    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->currentOutput:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 139
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_43

    .line 140
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 141
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 142
    new-instance p0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 144
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    const-string p2, "application/id3"

    .line 145
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    .line 142
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    return-void

    .line 148
    :cond_43
    new-instance p1, Landroid/media/internal/exo/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->id3Output:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method

.method public blacklist getSampleDurationUs()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public blacklist packetFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    .line 155
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/AdtsReader;->timeUs:J

    .line 130
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/AdtsReader;->resetSync()V

    return-void
.end method
