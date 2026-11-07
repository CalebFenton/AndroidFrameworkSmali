.class public final Lcom/android/okhttp/okio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;
.implements Lcom/android/okhttp/okio/BufferedSink;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o DIGITS:[B

.field static final greylist-max-o REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field greylist-max-o head:Lcom/android/okhttp/okio/Segment;

.field greylist-max-o size:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o readFrom(Ljava/io/InputStream;JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_a

    if-eqz p4, :cond_26

    :cond_a
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 244
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 245
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    if-eqz p4, :cond_27

    :cond_26
    return-void

    .line 248
    :cond_27
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 250
    :cond_2d
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 251
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_2

    .line 241
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist-max-o clear()V
    .registers 3

    .line 764
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 766
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public blacklist clone()Lcom/android/okhttp/okio/Buffer;
    .registers 6

    .line 1412
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1413
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    .line 1415
    :cond_e
    new-instance v1, Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    invoke-direct {v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    iput-object v1, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1416
    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1417
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    :goto_1d
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v1, v2, :cond_30

    .line 1418
    iget-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    new-instance v3, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v3, v1}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    goto :goto_1d

    .line 1420
    :cond_30
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    iput-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist-max-o completeSegmentByteCount()J
    .registers 6

    .line 262
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 266
    :cond_9
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object p0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 267
    iget v2, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v3, :cond_1c

    .line 268
    iget p0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public greylist-max-o copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;
    .registers 14

    if-eqz p1, :cond_60

    .line 170
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-nez p4, :cond_10

    goto :goto_5f

    .line 173
    :cond_10
    iget-wide p4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr p4, v4

    iput-wide p4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 176
    iget-object p4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 177
    :goto_17
    iget p5, p4, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v0, p4, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v1, p5, v0

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_28

    sub-int/2addr p5, v0

    int-to-long v0, p5

    sub-long/2addr v2, v0

    iget-object p4, p4, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_17

    :cond_28
    move-object v0, p4

    move-wide p4, v4

    :goto_2a
    cmp-long v1, p4, p2

    if-lez v1, :cond_5f

    .line 183
    new-instance v1, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v1, v0}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    .line 184
    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    .line 185
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 186
    iget-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v2, :cond_4f

    .line 187
    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    goto :goto_54

    .line 189
    :cond_4f
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 191
    :goto_54
    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sub-long/2addr p4, v1

    .line 182
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    move-wide v2, p2

    goto :goto_2a

    :cond_5f
    :goto_5f
    return-object p0

    .line 169
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o copyTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 137
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 146
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-nez p4, :cond_10

    goto :goto_42

    .line 150
    :cond_10
    iget-object p4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 151
    :goto_12
    iget p5, p4, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v0, p4, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v1, p5, v0

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_23

    sub-int/2addr p5, v0

    int-to-long v0, p5

    sub-long/2addr v2, v0

    iget-object p4, p4, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_12

    :cond_23
    move-object v0, p4

    move-wide p4, v4

    :goto_25
    cmp-long v1, p4, p2

    if-lez v1, :cond_42

    .line 157
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 158
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 159
    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v2

    sub-long/2addr p4, v1

    .line 156
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    move-wide v2, p2

    goto :goto_25

    :cond_42
    :goto_42
    return-object p0

    .line 145
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o emit()Lcom/android/okhttp/okio/BufferedSink;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist-max-o emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 0
    return-object p0
.end method

.method public bridge synthetic greylist-max-o emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1343
    :cond_4
    instance-of v1, p1, Lcom/android/okhttp/okio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1344
    :cond_a
    check-cast p1, Lcom/android/okhttp/okio/Buffer;

    .line 1345
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    iget-wide v5, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    .line 1348
    :cond_1c
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1349
    iget-object p1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1350
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1351
    iget v4, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1353
    :goto_24
    iget-wide v7, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_61

    .line 1354
    iget v7, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v2

    :goto_36
    int-to-long v10, v9

    cmp-long v10, v10, v7

    if-gez v10, :cond_4f

    .line 1357
    iget-object v10, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    .line 1360
    :cond_4f
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v3, v9, :cond_57

    .line 1361
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1362
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 1365
    :cond_57
    iget v9, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v4, v9, :cond_5f

    .line 1366
    iget-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1367
    iget v4, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public greylist-max-o exhausted()Z
    .registers 5

    .line 100
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist-max-o getByte(J)B
    .registers 9

    .line 297
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 298
    iget-object p0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 299
    :goto_a
    iget v0, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1b

    .line 300
    iget-object p0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    long-to-int p1, p1

    add-int/2addr v1, p1

    aget-byte p0, p0, v1

    return p0

    :cond_1b
    sub-long/2addr p1, v2

    .line 298
    iget-object p0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_a
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1375
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v1, 0x1

    .line 1379
    :cond_7
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 1380
    iget-object v4, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1382
    :cond_17
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1383
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public greylist-max-o indexOf(B)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1228
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public greylist-max-o indexOf(BJ)J
    .registers 19

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_46

    .line 1238
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    const-wide/16 v4, -0x1

    if-nez v3, :cond_d

    return-wide v4

    :cond_d
    move-wide/from16 v6, p2

    move-wide v8, v1

    .line 1242
    :goto_10
    iget v10, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v11, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v12, v10, v11

    int-to-long v12, v12

    cmp-long v14, v6, v12

    if-ltz v14, :cond_20

    sub-long/2addr v6, v12

    move-wide v1, v6

    :goto_1d
    move/from16 v6, p1

    goto :goto_3a

    .line 1246
    :cond_20
    iget-object v14, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    int-to-long v1, v11

    add-long/2addr v1, v6

    long-to-int v1, v1

    :goto_25
    if-ge v1, v10, :cond_37

    .line 1248
    aget-byte v2, v14, v1

    move/from16 v6, p1

    if-ne v2, v6, :cond_34

    int-to-long v0, v1

    add-long/2addr v8, v0

    iget v0, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v0, v0

    sub-long/2addr v8, v0

    return-wide v8

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_37
    const-wide/16 v1, 0x0

    goto :goto_1d

    :goto_3a
    add-long/2addr v8, v12

    .line 1253
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1254
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v3, v7, :cond_42

    return-wide v4

    :cond_42
    move-wide v6, v1

    const-wide/16 v1, 0x0

    goto :goto_10

    .line 1236
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o indexOf(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1259
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOf(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public greylist-max-o indexOf(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_21

    :goto_6
    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p1, v0}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    return-wide v0

    .line 1269
    :cond_16
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/okhttp/okio/Buffer;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-wide p2

    :cond_1d
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    goto :goto_6

    .line 1263
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bytes is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1277
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public greylist-max-o indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 23

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_5d

    .line 1283
    iget-object v3, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    const-wide/16 v4, -0x1

    if-nez v3, :cond_f

    return-wide v4

    .line 1286
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v6

    move-wide/from16 v7, p2

    move-wide v9, v1

    .line 1288
    :goto_16
    iget v11, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v12, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v13, v11, v12

    int-to-long v13, v13

    cmp-long v15, v7, v13

    if-ltz v15, :cond_25

    sub-long/2addr v7, v13

    :goto_22
    move-wide/from16 v17, v4

    goto :goto_50

    .line 1292
    :cond_25
    iget-object v15, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    int-to-long v1, v12

    add-long/2addr v1, v7

    int-to-long v7, v11

    :goto_2a
    cmp-long v11, v1, v7

    if-gez v11, :cond_4d

    long-to-int v11, v1

    .line 1294
    aget-byte v11, v15, v11

    .line 1295
    array-length v12, v6

    const/16 v16, 0x0

    move-wide/from16 v17, v4

    move/from16 v4, v16

    :goto_38
    if-ge v4, v12, :cond_47

    aget-byte v5, v6, v4

    if-ne v11, v5, :cond_44

    add-long/2addr v9, v1

    .line 1296
    iget v0, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v0, v0

    sub-long/2addr v9, v0

    return-wide v9

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_47
    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    move-wide/from16 v4, v17

    goto :goto_2a

    :cond_4d
    const-wide/16 v7, 0x0

    goto :goto_22

    :goto_50
    add-long/2addr v9, v13

    .line 1302
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 1303
    iget-object v1, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-ne v3, v1, :cond_58

    return-wide v17

    :cond_58
    move-wide/from16 v4, v17

    const-wide/16 v1, 0x0

    goto :goto_16

    .line 1281
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o inputStream()Ljava/io/InputStream;
    .registers 2

    .line 112
    new-instance v0, Lcom/android/okhttp/okio/Buffer$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$2;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    return-object v0
.end method

.method public greylist-max-o outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 70
    new-instance v0, Lcom/android/okhttp/okio/Buffer$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$1;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    return-object v0
.end method

.method greylist-max-o rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z
    .registers 9

    .line 1308
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    .line 1309
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_e

    return v2

    :cond_e
    move v1, v2

    :goto_f
    if-ge v1, v0, :cond_21

    int-to-long v3, v1

    add-long/2addr v3, p1

    .line 1313
    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v3

    invoke-virtual {p3, v1}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o read([B)I
    .registers 4

    .line 727
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public greylist-max-o read([BII)I
    .registers 11

    .line 740
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 742
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_d

    const/4 p0, -0x1

    return p0

    .line 744
    :cond_d
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 745
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    iget p1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 748
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 750
    iget p2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne p1, p2, :cond_35

    .line 751
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 752
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    :cond_35
    return p3
.end method

.method public greylist-max-o read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 8

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 1221
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 1223
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-wide p2

    .line 1220
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1219
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readAll(Lcom/android/okhttp/okio/Sink;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 545
    invoke-interface {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_b
    return-wide v0
.end method

.method public greylist-max-o readByte()B
    .registers 10

    .line 275
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    .line 277
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 278
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 279
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 281
    iget-object v5, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v6, v3, 0x1

    .line 282
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 283
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    if-ne v6, v4, :cond_25

    .line 286
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 287
    invoke-static {v2}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    return v3

    .line 289
    :cond_25
    iput v6, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    return v3

    .line 275
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "size == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readByteArray()[B
    .registers 3

    .line 709
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 711
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public greylist-max-o readByteArray(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 716
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v4, p1

    if-gtz p1, :cond_16

    long-to-int p1, v4

    .line 721
    new-array p1, p1, [B

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    return-object p1

    .line 718
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 527
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public greylist-max-o readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public greylist-max-o readDecimalLong()J
    .registers 16

    .line 413
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b7

    const/4 v0, 0x0

    const-wide/16 v4, -0x7

    move v1, v0

    move-wide v5, v4

    move-wide v3, v2

    move v2, v1

    .line 425
    :cond_f
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 427
    iget-object v8, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 428
    iget v9, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 429
    iget v10, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    :goto_17
    if-ge v9, v10, :cond_98

    .line 432
    aget-byte v11, v8, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_69

    const/16 v12, 0x39

    if-gt v11, v12, :cond_69

    rsub-int/lit8 v12, v11, 0x30

    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v3, v13

    if-ltz v13, :cond_3c

    if-nez v13, :cond_36

    int-to-long v13, v12

    cmp-long v13, v13, v5

    if-gez v13, :cond_36

    goto :goto_3c

    :cond_36
    const-wide/16 v13, 0xa

    mul-long/2addr v3, v13

    int-to-long v11, v12

    add-long/2addr v3, v11

    goto :goto_74

    .line 438
    :cond_3c
    :goto_3c
    new-instance p0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v11}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    if-nez v1, :cond_4e

    .line 439
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    .line 440
    :cond_4e
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/16 v12, 0x2d

    const/4 v13, 0x1

    if-ne v11, v12, :cond_79

    if-nez v0, :cond_79

    const-wide/16 v11, 0x1

    sub-long/2addr v5, v11

    move v1, v13

    :goto_74
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_79
    if-eqz v0, :cond_7d

    move v2, v13

    goto :goto_98

    .line 449
    :cond_7d
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    :goto_98
    if-ne v9, v10, :cond_a4

    .line 459
    invoke-virtual {v7}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 460
    invoke-static {v7}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_a6

    .line 462
    :cond_a4
    iput v9, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_a6
    if-nez v2, :cond_ac

    .line 464
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v7, :cond_f

    .line 466
    :cond_ac
    iget-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v7, v0

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    if-eqz v1, :cond_b5

    return-wide v3

    :cond_b5
    neg-long v0, v3

    return-wide v0

    .line 413
    :cond_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "size == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readFrom(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 229
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public greylist-max-o readFrom(Ljava/io/InputStream;J)Lcom/android/okhttp/okio/Buffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    .line 235
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 535
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    .line 539
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-void

    .line 536
    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 537
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public greylist-max-o readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 732
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 733
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    .line 734
    :cond_f
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_15
    return-void
.end method

.method public greylist-max-o readHexadecimalUnsignedLong()J
    .registers 15

    .line 471
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a9

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 478
    :cond_b
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 480
    iget-object v7, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 481
    iget v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 482
    iget v9, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_8e

    .line 487
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_37

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2d

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2d

    add-int/lit8 v11, v10, -0x57

    goto :goto_37

    :cond_2d
    const/16 v11, 0x41

    if-lt v10, v11, :cond_6f

    const/16 v11, 0x46

    if-gt v10, v11, :cond_6f

    add-int/lit8 v11, v10, -0x37

    :goto_37
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_47

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 506
    :cond_47
    new-instance p0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    .line 507
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    if-eqz v0, :cond_73

    const/4 v1, 0x1

    goto :goto_8e

    .line 496
    :cond_73
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    :goto_8e
    if-ne v8, v9, :cond_9a

    .line 515
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 516
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_9c

    .line 518
    :cond_9a
    iput v8, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_9c
    if-nez v1, :cond_a2

    .line 520
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v6, :cond_b

    .line 522
    :cond_a2
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-wide v4

    .line 471
    :cond_a9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "size == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readInt()I
    .registers 13

    .line 335
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_69

    .line 337
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 338
    iget v5, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 339
    iget v6, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    .line 343
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 344
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 345
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 346
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 349
    :cond_35
    iget-object v7, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v9, v5, 0x1

    .line 350
    aget-byte v10, v7, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v5, 0x2

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v9, v11

    add-int/2addr v5, v8

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    sub-long/2addr v0, v2

    .line 354
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    if-ne v5, v6, :cond_66

    .line 357
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 358
    invoke-static {v4}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    return v7

    .line 360
    :cond_66
    iput v5, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    return v7

    .line 335
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readIntLe()I
    .registers 1

    .line 405
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-o readLong()J
    .registers 20

    move-object/from16 v0, p0

    .line 367
    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_93

    .line 369
    iget-object v5, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 370
    iget v6, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 371
    iget v7, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int v8, v7, v6

    const/16 v9, 0x20

    const/16 v10, 0x8

    if-ge v8, v10, :cond_2d

    .line 375
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v9

    .line 376
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result v0

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0

    .line 379
    :cond_2d
    iget-object v8, v5, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v11, v6, 0x1

    .line 380
    aget-byte v12, v8, v6

    int-to-long v12, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v16, 0x38

    shl-long v12, v12, v16

    add-int/lit8 v16, v6, 0x2

    aget-byte v11, v8, v11

    move-wide/from16 v17, v3

    int-to-long v3, v11

    and-long/2addr v3, v14

    const/16 v11, 0x30

    shl-long/2addr v3, v11

    or-long/2addr v3, v12

    add-int/lit8 v11, v6, 0x3

    aget-byte v12, v8, v16

    int-to-long v12, v12

    and-long/2addr v12, v14

    const/16 v16, 0x28

    shl-long v12, v12, v16

    or-long/2addr v3, v12

    add-int/lit8 v12, v6, 0x4

    aget-byte v11, v8, v11

    move/from16 v16, v9

    move v13, v10

    int-to-long v9, v11

    and-long/2addr v9, v14

    shl-long v9, v9, v16

    or-long/2addr v3, v9

    add-int/lit8 v9, v6, 0x5

    aget-byte v10, v8, v12

    int-to-long v10, v10

    and-long/2addr v10, v14

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v3, v10

    add-int/lit8 v10, v6, 0x6

    aget-byte v9, v8, v9

    int-to-long v11, v9

    and-long/2addr v11, v14

    const/16 v9, 0x10

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x7

    aget-byte v10, v8, v10

    int-to-long v10, v10

    and-long/2addr v10, v14

    shl-long/2addr v10, v13

    or-long/2addr v3, v10

    add-int/2addr v6, v13

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v3, v8

    sub-long v1, v1, v17

    .line 388
    iput-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    if-ne v6, v7, :cond_90

    .line 391
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 392
    invoke-static {v5}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    return-wide v3

    .line 394
    :cond_90
    iput v6, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    return-wide v3

    .line 367
    :cond_93
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o readLongLe()J
    .registers 3

    .line 409
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o readShort()S
    .registers 12

    .line 306
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_47

    .line 308
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 309
    iget v5, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 310
    iget v6, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    .line 314
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 315
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 319
    :cond_24
    iget-object v7, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    add-int/lit8 v9, v5, 0x1

    .line 320
    aget-byte v10, v7, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v5, v8

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v10

    sub-long/2addr v0, v2

    .line 322
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    if-ne v5, v6, :cond_43

    .line 325
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 326
    invoke-static {v4}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_45

    .line 328
    :cond_43
    iput v5, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_45
    int-to-short p0, v7

    return p0

    .line 306
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o readShortLe()S
    .registers 1

    .line 401
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    move-result p0

    invoke-static {p0}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    move-result p0

    return p0
.end method

.method public greylist-max-o readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 571
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_6a

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v4, p1

    if-gtz p1, :cond_53

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-nez p1, :cond_1a

    .line 576
    const-string p0, ""

    return-object p0

    .line 578
    :cond_1a
    iget-object p1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 579
    iget p2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v0, p2

    add-long/2addr v0, v4

    iget v2, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 581
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 584
    :cond_31
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    long-to-int v2, v4

    invoke-direct {v0, v1, p2, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 585
    iget p2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long p2, p2

    add-long/2addr p2, v4

    long-to-int p2, p2

    iput p2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 586
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 588
    iget p3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne p2, p3, :cond_52

    .line 589
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object p2

    iput-object p2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 590
    invoke-static {p1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    :cond_52
    return-object v0

    .line 574
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 572
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 564
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 566
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public greylist-max-o readUtf8()Ljava/lang/String;
    .registers 4

    .line 552
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sget-object v2, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 554
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public greylist-max-o readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 633
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    .line 635
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    goto :goto_3e

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_27

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    move v6, v3

    goto :goto_3e

    :cond_27
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_33

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3e

    :cond_33
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a6

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 670
    :goto_3e
    iget-wide v7, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_74

    :goto_45
    if-ge v2, v5, :cond_5c

    int-to-long v7, v2

    .line 679
    invoke-virtual {p0, v7, v8}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_58

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 685
    :cond_58
    invoke-virtual {p0, v7, v8}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return v4

    .line 690
    :cond_5c
    invoke-virtual {p0, v9, v10}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_65

    return v4

    :cond_65
    const p0, 0xd800

    if-lt v1, p0, :cond_70

    const p0, 0xdfff

    if-gt v1, p0, :cond_70

    return v4

    :cond_70
    if-ge v1, v6, :cond_73

    return v4

    :cond_73
    return v1

    .line 671
    :cond_74
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a6
    const-wide/16 v0, 0x1

    .line 666
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return v4

    .line 633
    :cond_ac
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public greylist-max-o readUtf8Line()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 600
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 603
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o readUtf8Line(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1c

    sub-long v3, p1, v1

    .line 618
    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_1c

    .line 620
    invoke-virtual {p0, v3, v4}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 621
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return-object p1

    .line 626
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return-object p1
.end method

.method public greylist-max-o readUtf8LineStrict()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 614
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 609
    :cond_11
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    const-wide/16 v2, 0x20

    .line 610
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 611
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " content="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o request(J)Z
    .registers 5

    .line 108
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o require(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 104
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method greylist-max-o segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_7

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1333
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    :goto_1c
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v1, v2, :cond_2f

    .line 1336
    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2f
    return-object v0
.end method

.method public greylist-max-o size()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-wide v0
.end method

.method public greylist-max-o skip(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_37

    .line 773
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eqz v0, :cond_31

    .line 775
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v0, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 776
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr p1, v3

    .line 778
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v2, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 780
    iget v0, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v0, :cond_0

    .line 782
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 783
    invoke-static {v1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_0

    .line 773
    :cond_31
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_37
    return-void
.end method

.method public greylist-max-o snapshot()Lcom/android/okhttp/okio/ByteString;
    .registers 5

    .line 1426
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    long-to-int v0, v0

    .line 1429
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->snapshot(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0

    .line 1427
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o snapshot(I)Lcom/android/okhttp/okio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    .line 1436
    sget-object p0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    return-object p0

    .line 1437
    :cond_5
    new-instance v0, Lcom/android/okhttp/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;-><init>(Lcom/android/okhttp/okio/Buffer;I)V

    return-object v0
.end method

.method public greylist-max-o timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 1327
    sget-object p0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1388
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 1389
    const-string p0, "Buffer[size=0]"

    return-object p0

    :cond_b
    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    .line 1393
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 1394
    iget-wide v1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Buffer[size=%s data=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1398
    :cond_2e
    :try_start_2e
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1399
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v1, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 1400
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    :goto_42
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eq v1, v2, :cond_53

    .line 1401
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_42

    .line 1403
    :cond_53
    const-string v1, "Buffer[size=%s md5=%s]"

    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1404
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1403
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_6f} :catch_70

    return-object p0

    .line 1406
    :catch_70
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method greylist-max-o writableSegment(I)Lcom/android/okhttp/okio/Segment;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2c

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2c

    .line 1115
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v1, :cond_16

    .line 1116
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1117
    iput-object p1, p1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    return-object p1

    .line 1120
    :cond_16
    iget-object p0, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 1121
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_23

    iget-boolean p1, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    return-object p0

    .line 1122
    :cond_23
    :goto_23
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    move-result-object p0

    return-object p0

    .line 1113
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;
    .registers 2

    if-eqz p1, :cond_6

    .line 790
    invoke-virtual {p1, p0}, Lcom/android/okhttp/okio/ByteString;->write(Lcom/android/okhttp/okio/Buffer;)V

    return-object p0

    .line 789
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteString == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o write([B)Lcom/android/okhttp/okio/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 933
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    .line 932
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o write([BII)Lcom/android/okhttp/okio/Buffer;
    .registers 11

    if-eqz p1, :cond_2f

    .line 938
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_a
    if-ge p2, p3, :cond_29

    const/4 v0, 0x1

    .line 942
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 944
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 945
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 948
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    goto :goto_a

    .line 951
    :cond_29
    iget-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0

    .line 937
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic greylist-max-o write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/Source;J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    .line 966
    invoke-interface {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    sub-long/2addr p2, v0

    goto :goto_0

    .line 967
    :cond_12
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_18
    return-object p0
.end method

.method public bridge synthetic greylist-max-o write([B)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o write([BII)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10

    if-eqz p1, :cond_8d

    if-eq p1, p0, :cond_85

    .line 1180
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_84

    .line 1184
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-gez v1, :cond_56

    .line 1185
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_4f

    .line 1186
    iget-boolean v2, v1, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v2, :cond_4f

    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    .line 1187
    iget-boolean v4, v1, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    goto :goto_38

    :cond_36
    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_38
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4f

    long-to-int v2, p2

    .line 1189
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    .line 1190
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1191
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-void

    :cond_4f
    long-to-int v1, p2

    .line 1196
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Segment;->split(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1201
    :cond_56
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1202
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1203
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1204
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v3, :cond_6f

    .line 1205
    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 1206
    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_78

    .line 1208
    :cond_6f
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 1209
    invoke-virtual {v3, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->compact()V

    .line 1212
    :goto_78
    iget-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 1213
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_84
    return-void

    .line 1179
    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1178
    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeAll(Lcom/android/okhttp/okio/Source;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    .line 958
    invoke-interface {p1, p0, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    .line 956
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeByte(I)Lcom/android/okhttp/okio/Buffer;
    .registers 6

    const/4 v0, 0x1

    .line 974
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v0

    .line 975
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 976
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 v3, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1c

    .line 1043
    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    :cond_1c
    move v2, v3

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-wide/32 v4, 0x5f5e100

    cmp-long v4, p1, v4

    const-wide/16 v5, 0xa

    if-gez v4, :cond_6b

    const-wide/16 v7, 0x2710

    cmp-long v4, p1, v7

    if-gez v4, :cond_49

    const-wide/16 v7, 0x64

    cmp-long v4, p1, v7

    if-gez v4, :cond_3d

    cmp-long v4, p1, v5

    if-gez v4, :cond_3a

    goto/16 :goto_e3

    :cond_3a
    const/4 v3, 0x2

    goto/16 :goto_e3

    :cond_3d
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_46

    const/4 v3, 0x3

    goto/16 :goto_e3

    :cond_46
    const/4 v3, 0x4

    goto/16 :goto_e3

    :cond_49
    const-wide/32 v3, 0xf4240

    cmp-long v3, p1, v3

    if-gez v3, :cond_5d

    const-wide/32 v3, 0x186a0

    cmp-long v3, p1, v3

    if-gez v3, :cond_5a

    const/4 v3, 0x5

    goto/16 :goto_e3

    :cond_5a
    const/4 v3, 0x6

    goto/16 :goto_e3

    :cond_5d
    const-wide/32 v3, 0x989680

    cmp-long v3, p1, v3

    if-gez v3, :cond_67

    const/4 v3, 0x7

    goto/16 :goto_e3

    :cond_67
    const/16 v3, 0x8

    goto/16 :goto_e3

    :cond_6b
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_99

    const-wide v3, 0x2540be400L

    cmp-long v3, p1, v3

    if-gez v3, :cond_8a

    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    if-gez v3, :cond_87

    const/16 v3, 0x9

    goto :goto_e3

    :cond_87
    const/16 v3, 0xa

    goto :goto_e3

    :cond_8a
    const-wide v3, 0x174876e800L

    cmp-long v3, p1, v3

    if-gez v3, :cond_96

    const/16 v3, 0xb

    goto :goto_e3

    :cond_96
    const/16 v3, 0xc

    goto :goto_e3

    :cond_99
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_bd

    const-wide v3, 0x9184e72a000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_ae

    const/16 v3, 0xd

    goto :goto_e3

    :cond_ae
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_ba

    const/16 v3, 0xe

    goto :goto_e3

    :cond_ba
    const/16 v3, 0xf

    goto :goto_e3

    :cond_bd
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d5

    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d2

    const/16 v3, 0x10

    goto :goto_e3

    :cond_d2
    const/16 v3, 0x11

    goto :goto_e3

    :cond_d5
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_e1

    const/16 v3, 0x12

    goto :goto_e3

    :cond_e1
    const/16 v3, 0x13

    :goto_e3
    if-eqz v2, :cond_e7

    add-int/lit8 v3, v3, 0x1

    .line 1072
    :cond_e7
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v4

    .line 1073
    iget-object v7, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1074
    iget v8, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v8, v3

    :goto_f0
    cmp-long v9, p1, v0

    if-eqz v9, :cond_101

    .line 1076
    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    .line 1077
    sget-object v10, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1078
    div-long/2addr p1, v5

    goto :goto_f0

    :cond_101
    if-eqz v2, :cond_109

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1081
    aput-byte p1, v7, v8

    .line 1084
    :cond_109
    iget p1, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr p1, v3

    iput p1, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1085
    iget-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 p1, 0x30

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    .line 1095
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1097
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    .line 1098
    iget-object v3, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1099
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-lt v5, v4, :cond_35

    .line 1100
    sget-object v6, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 1103
    :cond_35
    iget p1, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1104
    iget-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeInt(I)Lcom/android/okhttp/okio/Buffer;
    .registers 9

    const/4 v0, 0x4

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 997
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 998
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 999
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1000
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1001
    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1002
    aput-byte p1, v2, v4

    .line 1003
    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1004
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeInt(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeIntLe(I)Lcom/android/okhttp/okio/Buffer;
    .registers 2

    .line 1009
    invoke-static {p1}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeIntLe(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeLong(J)Lcom/android/okhttp/okio/Buffer;
    .registers 14

    const/16 v0, 0x8

    .line 1013
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 1014
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 1015
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1016
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x30

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1017
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    const/16 v6, 0x28

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1018
    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x4

    const/16 v6, 0x20

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1019
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x5

    const/16 v6, 0x18

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1020
    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x6

    const/16 v6, 0x10

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1021
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x7

    ushr-long v9, p1, v0

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1022
    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-long/2addr p1, v7

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1023
    aput-byte p1, v2, v4

    .line 1024
    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 1025
    iget-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeLongLe(J)Lcom/android/okhttp/okio/Buffer;
    .registers 3

    .line 1030
    invoke-static {p1, p2}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeLongLe(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLongLe(J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeShort(I)Lcom/android/okhttp/okio/Buffer;
    .registers 8

    const/4 v0, 0x2

    .line 981
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    .line 982
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 983
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 984
    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 985
    aput-byte p1, v2, v4

    .line 986
    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 987
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeShort(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeShortLe(I)Lcom/android/okhttp/okio/Buffer;
    .registers 2

    int-to-short p1, p1

    .line 992
    invoke-static {p1}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeShortLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShortLe(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .registers 6

    if-eqz p1, :cond_8b

    if-ltz p2, :cond_74

    if-lt p3, p2, :cond_55

    .line 921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    .line 926
    sget-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    .line 927
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 928
    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0

    .line 925
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 922
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 919
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 917
    :cond_74
    new-instance p0, Ljava/lang/IllegalAccessError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 916
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .registers 5

    .line 911
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 206
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 208
    iget-object p2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    move-object v0, p2

    move-wide p2, v4

    :cond_e
    :goto_e
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_41

    .line 210
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 211
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 214
    iget-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr p2, v5

    .line 217
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v1, :cond_e

    .line 219
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 220
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    move-object v0, v1

    goto :goto_e

    :cond_41
    return-object p0

    .line 205
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;
    .registers 4

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;
    .registers 11

    if-eqz p1, :cond_125

    if-ltz p2, :cond_10e

    if-lt p3, p2, :cond_ef

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_cc

    :goto_c
    if-ge p2, p3, :cond_cb

    .line 811
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4c

    const/4 v2, 0x1

    .line 814
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v2

    .line 815
    iget-object v3, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 816
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 817
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 820
    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    .line 825
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 827
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    .line 830
    iget p2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    add-int/2addr p2, v4

    .line 831
    iput p2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 832
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    move p2, v6

    goto :goto_c

    :cond_4c
    const/16 v2, 0x800

    if-ge v0, v2, :cond_60

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 836
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 837
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    :goto_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_60
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b6

    const v2, 0xdfff

    if-le v0, v2, :cond_6d

    goto :goto_b6

    :cond_6d
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_76

    .line 850
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_77

    :cond_76
    const/4 v5, 0x0

    :goto_77
    const v6, 0xdbff

    if-gt v0, v6, :cond_b0

    const v6, 0xdc00

    if-lt v5, v6, :cond_b0

    if-le v5, v2, :cond_84

    goto :goto_b0

    :cond_84
    const v2, -0xd801

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    const v2, -0xdc01

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 864
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 865
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    .line 852
    :cond_b0
    :goto_b0
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b6
    :goto_b6
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 842
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 843
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 844
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_5d

    :cond_cb
    return-object p0

    .line 805
    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 802
    :cond_ef
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 800
    :cond_10e
    new-instance p0, Ljava/lang/IllegalAccessError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 799
    :cond_125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic greylist-max-o writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic greylist-max-o writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 877
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-object p0

    :cond_8
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1a

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 882
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-object p0

    :cond_1a
    const/high16 v1, 0x10000

    .line 884
    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_5a

    const v1, 0xd800

    if-lt p1, v1, :cond_44

    const v1, 0xdfff

    if-le p1, v1, :cond_2b

    goto :goto_44

    .line 886
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 891
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 892
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-object p0

    :cond_5a
    const v1, 0x10ffff

    if-gt p1, v1, :cond_7d

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 897
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 898
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 899
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    return-object p0

    .line 903
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic greylist-max-o writeUtf8CodePoint(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    return-object p0
.end method
