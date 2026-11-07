.class final Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# instance fields
.field private blacklist lookingForVopCodingType:Z

.field private final blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist readingSample:Z

.field private blacklist sampleIsKeyframe:Z

.field private blacklist samplePosition:J

.field private blacklist sampleTimeUs:J

.field private blacklist startCodeValue:I

.field private blacklist vopBytesRead:I


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 2

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public blacklist onData([BII)V
    .registers 6

    .line 457
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x1

    .line 458
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1c

    .line 460
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, p2

    :goto_17
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 461
    iput-boolean p2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    return-void

    :cond_1c
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 463
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    :cond_20
    return-void
.end method

.method public blacklist onDataEnd(JIZ)V
    .registers 12

    .line 469
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_25

    if-eqz p4, :cond_25

    iget-boolean p4, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_25

    iget-wide v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v1, v3

    if-eqz p4, :cond_25

    .line 473
    iget-wide v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v3, p1, v3

    long-to-int v4, v3

    .line 474
    iget-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 475
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleMetadata(JIIILandroid/media/internal/exo/extractor/TrackOutput$CryptoData;)V

    .line 480
    :cond_25
    iget p3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2d

    .line 481
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    :cond_2d
    return-void
.end method

.method public blacklist onStartCode(IJ)V
    .registers 8

    .line 447
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_11

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v0

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    .line 449
    :goto_12
    iput-boolean v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v0

    .line 451
    :goto_18
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 452
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 453
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    return-void
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 441
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 442
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v0, -0x1

    .line 443
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    return-void
.end method
