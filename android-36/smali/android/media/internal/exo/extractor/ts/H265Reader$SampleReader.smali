.class final Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# instance fields
.field private blacklist isFirstPrefixNalUnit:Z

.field private blacklist isFirstSlice:Z

.field private blacklist lookingForFirstSliceFlag:Z

.field private blacklist nalUnitBytesRead:I

.field private blacklist nalUnitHasKeyframeData:Z

.field private blacklist nalUnitPosition:J

.field private blacklist nalUnitTimeUs:J

.field private final blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist readingPrefix:Z

.field private blacklist readingSample:Z

.field private blacklist sampleIsKeyframe:Z

.field private blacklist samplePosition:J

.field private blacklist sampleTimeUs:J


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 2

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method

.method private static blacklist isPrefixNalUnit(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-gt v0, p0, :cond_8

    const/16 v0, 0x23

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x27

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isVclBodyNalUnit(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x28

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist outputSample(I)V
    .registers 10

    .line 557
    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    .line 560
    :cond_c
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 561
    iget-wide v4, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 562
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public blacklist endNalUnit(JIZ)V
    .registers 7

    .line 538
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_10

    .line 540
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    return-void

    .line 542
    :cond_10
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    if-eqz p4, :cond_28

    .line 544
    iget-boolean p4, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_28

    .line 546
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 547
    invoke-direct {p0, p3}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 549
    :cond_28
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 550
    iget-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 551
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 p1, 0x1

    .line 552
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    return-void
.end method

.method public blacklist readNalUnitData([BII)V
    .registers 6

    .line 526
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    .line 527
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    .line 529
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    move p1, p2

    :goto_15
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 530
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 532
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_1e
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 493
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 494
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 495
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 496
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    return-void
.end method

.method public blacklist startNalUnit(JIIJZ)V
    .registers 9

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 502
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 503
    iput-wide p5, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 504
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 505
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    .line 507
    invoke-static {p4}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isVclBodyNalUnit(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2e

    .line 508
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez p1, :cond_21

    if-eqz p7, :cond_1f

    .line 510
    invoke-direct {p0, p3}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 512
    :cond_1f
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 514
    :cond_21
    invoke-static {p4}, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isPrefixNalUnit(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 515
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    .line 516
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_2e
    const/16 p1, 0x10

    if-lt p4, p1, :cond_38

    const/16 p1, 0x15

    if-gt p4, p1, :cond_38

    move p1, p2

    goto :goto_39

    :cond_38
    move p1, v0

    .line 521
    :goto_39
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez p1, :cond_41

    const/16 p1, 0x9

    if-gt p4, p1, :cond_42

    :cond_41
    move v0, p2

    .line 522
    :cond_42
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void
.end method
