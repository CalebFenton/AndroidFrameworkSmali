.class public Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekOperationParams"
.end annotation


# instance fields
.field private final blacklist approxBytesPerFrame:J

.field private blacklist ceilingBytePosition:J

.field private blacklist ceilingTimePosition:J

.field private blacklist floorBytePosition:J

.field private blacklist floorTimePosition:J

.field private blacklist nextSearchBytePosition:J

.field private final blacklist seekTimeUs:J

.field private final blacklist targetTimePosition:J


# direct methods
.method protected constructor blacklist <init>(JJJJJJJ)V
    .registers 15

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 318
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 319
    iput-wide p5, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 320
    iput-wide p7, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 321
    iput-wide p9, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 322
    iput-wide p11, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 323
    iput-wide p13, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 325
    invoke-static/range {p3 .. p14}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .registers 3

    .line 267
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$800(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic blacklist access$900(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .registers 5

    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static blacklist calculateNextSearchBytePosition(JJJJJJ)J
    .registers 16

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v2, v2, p8

    if-gez v2, :cond_27

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-ltz v2, :cond_f

    goto :goto_27

    :cond_f
    sub-long/2addr p0, p2

    sub-long v2, p8, p6

    long-to-float v2, v2

    sub-long/2addr p4, p2

    long-to-float p2, p4

    div-float/2addr v2, p2

    long-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-long p0, p0

    const-wide/16 p2, 0x14

    .line 303
    div-long p2, p0, p2

    add-long/2addr p0, p6

    sub-long/2addr p0, p10

    sub-long p4, p0, p2

    sub-long/2addr p8, v0

    .line 306
    invoke-static/range {p4 .. p9}, Landroid/media/internal/exo/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_27
    :goto_27
    return-wide p6
.end method

.method private blacklist getCeilingBytePosition()J
    .registers 3

    .line 347
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private blacklist getFloorBytePosition()J
    .registers 3

    .line 339
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private blacklist getNextSearchBytePosition()J
    .registers 3

    .line 376
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private blacklist getSeekTimeUs()J
    .registers 3

    .line 357
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private blacklist getTargetTimePosition()J
    .registers 3

    .line 352
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private blacklist updateNextSearchBytePosition()V
    .registers 13

    .line 380
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 381
    invoke-static/range {v0 .. v11}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-void
.end method

.method private blacklist updateSeekCeiling(JJ)V
    .registers 5

    .line 369
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 370
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 371
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method

.method private blacklist updateSeekFloor(JJ)V
    .registers 5

    .line 362
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 363
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 364
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    return-void
.end method
