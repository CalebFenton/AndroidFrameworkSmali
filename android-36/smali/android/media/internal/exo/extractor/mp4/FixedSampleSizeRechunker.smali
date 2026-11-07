.class final Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# direct methods
.method public static blacklist rechunk(I[J[IJ)Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;
    .registers 21

    move-object/from16 v0, p2

    const/16 v1, 0x2000

    .line 71
    div-int v1, v1, p0

    .line 75
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_a
    if-ge v4, v2, :cond_16

    aget v6, v0, v4

    .line 76
    invoke-static {v6, v1}, Landroid/media/internal/exo/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 79
    :cond_16
    new-array v7, v5, [J

    .line 80
    new-array v8, v5, [I

    .line 82
    new-array v10, v5, [J

    .line 83
    new-array v11, v5, [I

    move v2, v3

    move v4, v2

    move v9, v4

    .line 87
    :goto_21
    array-length v5, v0

    if-ge v3, v5, :cond_4c

    .line 88
    aget v5, v0, v3

    .line 89
    aget-wide v12, p1, v3

    :goto_28
    if-lez v5, :cond_49

    .line 92
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 94
    aput-wide v12, v7, v4

    mul-int v14, p0, v6

    .line 95
    aput v14, v8, v4

    .line 96
    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v2

    mul-long v14, v14, p3

    .line 97
    aput-wide v14, v10, v4

    const/4 v14, 0x1

    .line 98
    aput v14, v11, v4

    .line 100
    aget v14, v8, v4

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/2addr v2, v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4c
    int-to-long v0, v2

    mul-long v12, p3, v0

    .line 109
    new-instance v6, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJLandroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v6
.end method
