.class public final Landroid/media/internal/exo/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ExtractorInput;


# instance fields
.field private final blacklist dataReader:Landroid/media/internal/exo/upstream/DataReader;

.field private blacklist peekBuffer:[B

.field private blacklist peekBufferLength:I

.field private blacklist peekBufferPosition:I

.field private blacklist position:J

.field private final blacklist scratchSpace:[B

.field private final blacklist streamLength:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-string v0, "goog.exo.extractor"

    invoke-static {v0}, Landroid/media/internal/exo/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/upstream/DataReader;JJ)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->dataReader:Landroid/media/internal/exo/upstream/DataReader;

    .line 57
    iput-wide p2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->position:J

    .line 58
    iput-wide p4, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    .line 59
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    .line 60
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method

.method private blacklist commitBytesRead(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 308
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->position:J

    :cond_9
    return-void
.end method

.method private blacklist ensureSpaceForPeek(I)V
    .registers 5

    .line 211
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 212
    iget-object p1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 213
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    .line 214
    invoke-static {p1, v1, v0}, Landroid/media/internal/exo/util/Util;->constrainValue(III)I

    move-result p1

    .line 218
    iget-object v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_1d
    return-void
.end method

.method private blacklist readFromPeekBuffer([BII)I
    .registers 6

    .line 243
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 246
    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 247
    iget-object v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    invoke-direct {p0, p3}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method private blacklist readFromUpstream([BIIIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 291
    iget-object p0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->dataReader:Landroid/media/internal/exo/upstream/DataReader;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {p0, p1, p2, p3}, Landroid/media/internal/exo/upstream/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p1

    .line 296
    :cond_16
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1c
    add-int/2addr p4, p0

    return p4

    .line 289
    :cond_1e
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method private blacklist skipFromPeekBuffer(I)I
    .registers 3

    .line 229
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 230
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method private blacklist updatePeekBuffer(I)V
    .registers 7

    .line 258
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    .line 259
    iput v1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 260
    iget-object v2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 261
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_16

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 262
    new-array v3, v3, [B

    goto :goto_17

    :cond_16
    move-object v3, v2

    .line 264
    :goto_17
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v3, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method


# virtual methods
.method public blacklist advancePeekPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public blacklist advancePeekPosition(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 161
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_9
    if-ge v5, p1, :cond_24

    .line 163
    iget-object v2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 164
    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    const/4 p0, -0x1

    if-ne v5, p0, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_1b
    iget p0, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p0, v5

    iput p0, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    move-object p0, v1

    move p1, v4

    move p2, v6

    goto :goto_9

    :cond_24
    move-object v1, p0

    move v4, p1

    .line 170
    iget p0, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p0, v4

    iput p0, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getLength()J
    .registers 3

    .line 196
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public blacklist getPeekPosition()J
    .registers 5

    .line 186
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->position:J

    iget p0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getPosition()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public blacklist peek([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p3}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 121
    iget v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1e

    .line 124
    iget-object v2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 125
    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_18

    return p3

    .line 134
    :cond_18
    iget p3, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr p3, p0

    iput p3, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_24

    :cond_1e
    move-object v1, p0

    move v4, p3

    .line 136
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 138
    :goto_24
    iget-object p3, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {p3, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget p1, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, p0

    iput p1, v1, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return p0
.end method

.method public blacklist peekFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public blacklist peekFully([BIIZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p3, p4}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_8
    iget-object p4, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget p0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr p0, p3

    invoke-static {p4, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 68
    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_12

    :cond_11
    move-object v1, p0

    .line 71
    :goto_12
    invoke-direct {v1, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public blacklist readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public blacklist readFully([BIIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 80
    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_14
    move-object v1, p0

    .line 82
    invoke-direct {v1, v5}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resetPeekPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 181
    iput v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public blacklist skip(I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_16

    .line 95
    iget-object v2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_17

    :cond_16
    move-object v1, p0

    .line 97
    :goto_17
    invoke-direct {v1, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public blacklist skipFully(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public blacklist skipFully(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1c

    if-eq v5, v0, :cond_1c

    .line 105
    iget-object v0, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 106
    iget-object v2, p0, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 107
    invoke-direct/range {v1 .. v6}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_1c
    move-object v1, p0

    .line 109
    invoke-direct {v1, v5}, Landroid/media/internal/exo/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
