.class final Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final blacklist packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist pcrPid:I

.field private final blacklist pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

.field private final blacklist timestampSearchBytes:I


# direct methods
.method public constructor blacklist <init>(ILandroid/media/internal/exo/util/TimestampAdjuster;I)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 78
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 79
    iput p3, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    .line 80
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method

.method private blacklist searchForPcrValueInBuffer(Landroid/media/internal/exo/util/ParsableByteArray;JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 97
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 103
    :goto_13
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_66

    .line 105
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v14

    invoke-static {v13, v14, v4}, Landroid/media/internal/exo/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v4, :cond_2c

    goto :goto_66

    .line 110
    :cond_2c
    iget v5, v0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    invoke-static {v1, v13, v5}, Landroid/media/internal/exo/extractor/ts/TsUtil;->readPcrFromPacket(Landroid/media/internal/exo/util/ParsableByteArray;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_61

    .line 112
    iget-object v15, v0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v15, v5, v6}, Landroid/media/internal/exo/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_50

    cmp-long v0, v11, v7

    if-nez v0, :cond_49

    .line 116
    invoke-static {v5, v6, v2, v3}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_49
    add-long v0, v2, v9

    .line 119
    invoke-static {v0, v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_50
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v9, v9, p2

    if-lez v9, :cond_5f

    int-to-long v0, v13

    add-long/2addr v0, v2

    .line 124
    invoke-static {v0, v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_5f
    int-to-long v9, v13

    move-wide v11, v5

    .line 130
    :cond_61
    invoke-virtual {v1, v14}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    int-to-long v5, v14

    goto :goto_13

    :cond_66
    :goto_66
    cmp-long v0, v11, v7

    if-eqz v0, :cond_71

    add-long v0, v2, v5

    .line 136
    invoke-static {v11, v12, v0, v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    .line 139
    :cond_71
    sget-object v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v0
.end method


# virtual methods
.method public blacklist onSeekFinished()V
    .registers 2

    .line 145
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    sget-object v0, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([B)V

    return-void
.end method

.method public blacklist searchForTimestamp(Landroid/media/internal/exo/extractor/ExtractorInput;J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    .line 87
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    int-to-long v0, v0

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 89
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 90
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 92
    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Landroid/media/internal/exo/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Landroid/media/internal/exo/util/ParsableByteArray;JJ)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p0

    return-object p0
.end method
