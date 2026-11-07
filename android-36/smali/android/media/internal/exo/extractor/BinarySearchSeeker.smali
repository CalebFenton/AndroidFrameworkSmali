.class public abstract Landroid/media/internal/exo/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;,
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;,
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Landroid/media/internal/exo/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation


# instance fields
.field private final blacklist minimumSearchRange:I

.field protected final blacklist seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field protected blacklist seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

.field protected final blacklist timestampSeeker:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method protected constructor blacklist <init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V
    .registers 30

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    .line 127
    iput-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->timestampSeeker:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v0, p15

    .line 128
    iput v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->minimumSearchRange:I

    .line 129
    new-instance v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    invoke-direct/range {v0 .. v13}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method


# virtual methods
.method protected blacklist createSeekParamsForTargetTimeUs(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;
    .registers 20

    move-object/from16 v0, p0

    .line 221
    new-instance v1, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v2, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-wide/from16 v3, p1

    .line 223
    invoke-virtual {v2, v3, v4}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->timeUsToTargetTime(J)J

    move-result-wide v5

    iget-object v2, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 224
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1000(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v7

    iget-object v2, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 225
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1100(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v9

    iget-object v2, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 226
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1200(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v11

    iget-object v2, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 227
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1300(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v13

    iget-object v0, v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 228
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;->access$1400(Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;)J

    move-result-wide v15

    move-object v0, v1

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v13

    move-wide v13, v15

    invoke-direct/range {v0 .. v14}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    return-object v0
.end method

.method public final blacklist getSeekMap()Landroid/media/internal/exo/extractor/SeekMap;
    .registers 1

    .line 142
    iget-object p0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekMap:Landroid/media/internal/exo/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-object p0
.end method

.method public blacklist handlePendingSeek(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    :goto_0
    iget-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 176
    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 177
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$100(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v1

    .line 178
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$200(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v3

    .line 179
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$300(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    .line 181
    iget v7, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_25

    .line 183
    invoke-virtual {p0, v4, v1, v2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 184
    invoke-virtual {p0, p1, v1, v2, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekToPosition(Landroid/media/internal/exo/extractor/ExtractorInput;JLandroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 186
    :cond_25
    invoke-virtual {p0, p1, v5, v6}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 187
    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekToPosition(Landroid/media/internal/exo/extractor/ExtractorInput;JLandroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 190
    :cond_30
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 191
    iget-object v1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->timestampSeeker:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 192
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$400(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Landroid/media/internal/exo/extractor/ExtractorInput;J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v1

    .line 194
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->type:I
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$500(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_85

    const/4 v3, -0x2

    if-eq v2, v3, :cond_78

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6c

    if-nez v2, :cond_64

    .line 204
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->skipInputUntilPosition(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z

    const/4 v0, 0x1

    .line 206
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    .line 205
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 208
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v0

    .line 207
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekToPosition(Landroid/media/internal/exo/extractor/ExtractorInput;JLandroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 215
    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid case"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_6c
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 196
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$800(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto :goto_0

    .line 201
    :cond_78
    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->timestampToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$600(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v2

    # getter for: Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->bytePositionToUpdate:J
    invoke-static {v1}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;->access$700(Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSearchResult;)J

    move-result-wide v4

    .line 200
    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V
    invoke-static {v0, v2, v3, v4, v5}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$900(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V

    goto/16 :goto_0

    .line 212
    :cond_85
    invoke-virtual {p0, v4, v5, v6}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->markSeekOperationFinished(ZJ)V

    .line 213
    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekToPosition(Landroid/media/internal/exo/extractor/ExtractorInput;JLandroid/media/internal/exo/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public final blacklist isSeeking()Z
    .registers 1

    .line 159
    iget-object p0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected final blacklist markSeekOperationFinished(ZJ)V
    .registers 5

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 233
    iget-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->timestampSeeker:Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;

    invoke-interface {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->onSeekOperationFinished(ZJ)V

    return-void
.end method

.method protected blacklist onSeekOperationFinished(ZJ)V
    .registers 4

    .line 0
    return-void
.end method

.method protected final blacklist seekToPosition(Landroid/media/internal/exo/extractor/ExtractorInput;JLandroid/media/internal/exo/extractor/PositionHolder;)I
    .registers 5

    .line 253
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_a
    iput-wide p2, p4, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist setSeekTargetUs(J)V
    .registers 5

    .line 151
    iget-object v0, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v0, :cond_d

    # invokes: Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;->access$000(Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_d

    return-void

    .line 154
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->createSeekParamsForTargetTimeUs(J)Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/BinarySearchSeeker;->seekOperationParams:Landroid/media/internal/exo/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method

.method protected final blacklist skipInputUntilPosition(Landroid/media/internal/exo/extractor/ExtractorInput;J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-ltz p0, :cond_18

    const-wide/32 v0, 0x40000

    cmp-long p0, p2, v0

    if-gtz p0, :cond_18

    long-to-int p0, p2

    .line 245
    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
