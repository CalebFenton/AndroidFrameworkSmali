.class public Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field private final blacklist approxBytesPerFrame:J

.field private final blacklist ceilingBytePosition:J

.field private final blacklist ceilingTimePosition:J

.field private final blacklist durationUs:J

.field private final blacklist floorBytePosition:J

.field private final blacklist floorTimePosition:J

.field private final blacklist seekTimestampConverter:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V
    .registers 14

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 500
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    .line 501
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    .line 502
    iput-wide p6, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    .line 503
    iput-wide p8, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    .line 504
    iput-wide p10, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    .line 505
    iput-wide p12, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-void
.end method

.method static synthetic blacklist access$1000(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 481
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$1100(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 481
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$1200(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 481
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$1300(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 481
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    return-wide v0
.end method

.method static synthetic blacklist access$1400(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J
    .registers 3

    .line 481
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    return-wide v0
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 528
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 16

    .line 515
    iget-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 517
    invoke-interface {v0, p1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iget-wide v5, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iget-wide v7, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iget-wide v9, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    iget-wide v11, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    .line 516
    invoke-static/range {v1 .. v12}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    .line 523
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist timeUsToTargetTime(J)J
    .registers 3

    .line 533
    iget-object p0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {p0, p1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide p0

    return-wide p0
.end method
