.class public final Landroid/media/internal/exo/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "IndexSeekMap.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/SeekMap;


# instance fields
.field private final blacklist durationUs:J

.field private final blacklist isSeekable:Z

.field private final blacklist positions:[J

.field private final blacklist timesUs:[J


# direct methods
.method public constructor blacklist <init>([J[JJ)V
    .registers 13

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkArgument(Z)V

    .line 44
    array-length v0, p2

    if-lez v0, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    .line 45
    :goto_15
    iput-boolean v1, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->isSeekable:Z

    if-eqz v1, :cond_32

    .line 46
    aget-wide v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_32

    add-int/lit8 v1, v0, 0x1

    .line 48
    new-array v4, v1, [J

    iput-object v4, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->positions:[J

    .line 49
    new-array v1, v1, [J

    iput-object v1, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    .line 50
    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-static {p2, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_36

    .line 53
    :cond_32
    iput-object p1, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->positions:[J

    .line 54
    iput-object p2, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    .line 56
    :goto_36
    iput-wide p3, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public blacklist getDurationUs()J
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public blacklist getSeekPoints(J)Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;
    .registers 10

    .line 71
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->isSeekable:Z

    if-nez v0, :cond_c

    .line 72
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    sget-object p1, Landroid/media/internal/exo/extractor/SeekPoint;->START:Landroid/media/internal/exo/extractor/SeekPoint;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0

    .line 74
    :cond_c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    const/4 v1, 0x1

    .line 75
    invoke-static {v0, p1, p2, v1, v1}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 76
    new-instance v2, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object v3, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->positions:[J

    aget-wide v5, v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 77
    iget-wide v3, v2, Landroid/media/internal/exo/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_2d

    goto :goto_41

    .line 80
    :cond_2d
    new-instance p1, Landroid/media/internal/exo/extractor/SeekPoint;

    iget-object p2, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->timesUs:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p0, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->positions:[J

    aget-wide v0, p0, v0

    invoke-direct {p1, v3, v4, v0, v1}, Landroid/media/internal/exo/extractor/SeekPoint;-><init>(JJ)V

    .line 82
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0

    .line 78
    :cond_41
    :goto_41
    new-instance p0, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/SeekMap$SeekPoints;-><init>(Landroid/media/internal/exo/extractor/SeekPoint;)V

    return-object p0
.end method

.method public blacklist isSeekable()Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Landroid/media/internal/exo/extractor/IndexSeekMap;->isSeekable:Z

    return p0
.end method
