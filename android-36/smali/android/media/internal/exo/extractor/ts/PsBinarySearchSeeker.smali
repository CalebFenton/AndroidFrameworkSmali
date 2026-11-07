.class final Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;
.super Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.source "PsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/util/TimestampAdjuster;JJ)V
    .registers 22

    .line 44
    new-instance v1, Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker$1;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3e8

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;-><init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method

.method static synthetic blacklist access$100([BI)I
    .registers 2

    .line 36
    invoke-static {p0, p1}, Landroid/media/internal/exo/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I

    move-result p0

    return p0
.end method

.method private static blacklist peekIntAtPosition([BI)I
    .registers 4

    .line 206
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
