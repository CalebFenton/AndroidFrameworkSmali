.class final Lcom/android/okhttp/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;


# instance fields
.field public final blacklist buffer:Lcom/android/okhttp/okio/Buffer;

.field private blacklist closed:Z

.field public final blacklist source:Lcom/android/okhttp/okio/Source;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 3

    .line 38
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 33
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    .line 34
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    return-void

    .line 32
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    return p0
.end method

.method private blacklist rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    return-object p0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    .line 397
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    .line 398
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    return-void
.end method

.method public blacklist exhausted()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_20

    .line 61
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p0, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0

    .line 60
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist indexOf(B)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist indexOf(BJ)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_37

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v1, p2, v1

    const-wide/16 v2, 0x2000

    const-wide/16 v4, -0x1

    if-ltz v1, :cond_1b

    .line 307
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-wide v4

    .line 310
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-nez v0, :cond_36

    .line 311
    iget-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p2, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 312
    iget-object p3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {p3, p2, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p2

    cmp-long p2, p2, v4

    if-nez p2, :cond_34

    return-wide v4

    :cond_34
    move-wide p2, v0

    goto :goto_1b

    :cond_36
    return-wide p2

    .line 305
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist indexOf(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist indexOf(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_21

    :goto_6
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p1, v0}, Lcom/android/okhttp/okio/ByteString;->getByte(I)B

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    return-wide v0

    .line 328
    :cond_16
    invoke-direct {p0, p2, p3, p1}, Lcom/android/okhttp/okio/RealBufferedSource;->rangeEquals(JLcom/android/okhttp/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-wide p2

    :cond_1d
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    goto :goto_6

    .line 322
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bytes is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_37

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v1, p2, v1

    const-wide/16 v2, 0x2000

    const-wide/16 v4, -0x1

    if-ltz v1, :cond_1b

    .line 342
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-wide v4

    .line 345
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-nez v0, :cond_36

    .line 346
    iget-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p2, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 347
    iget-object p3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {p3, p2, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p2

    cmp-long p2, p2, v4

    if-nez p2, :cond_34

    return-wide v4

    :cond_34
    move-wide p2, v0

    goto :goto_1b

    :cond_36
    return-wide p2

    .line 340
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist inputStream()Ljava/io/InputStream;
    .registers 2

    .line 357
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public blacklist read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->read([BII)I

    move-result p0

    return p0
.end method

.method public blacklist read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 125
    iget-object p3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p3, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p3, v1, v2}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_21

    const/4 p0, -0x1

    return p0

    .line 130
    :cond_21
    iget-object p3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p3, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 131
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_51

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    .line 48
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_32

    .line 50
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v3, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_23

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    return-wide v2

    .line 55
    :cond_23
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 56
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    .line 48
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3a
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

    .line 46
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readAll(Lcom/android/okhttp/okio/Sink;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_41

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 149
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_26

    .line 150
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    add-long/2addr v2, v4

    .line 153
    iget-object v6, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    goto :goto_5

    .line 156
    :cond_26
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_40

    .line 157
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 158
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_40
    return-wide v2

    .line 146
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 79
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result p0

    return p0
.end method

.method public blacklist readByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 94
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist readByteArray(J)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 99
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 84
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 89
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readDecimalLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 255
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 256
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1e

    const/16 v3, 0x39

    if-le v2, v3, :cond_25

    :cond_1e
    if-nez v0, :cond_27

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_25

    goto :goto_27

    :cond_25
    move v0, v1

    goto :goto_6

    :cond_27
    :goto_27
    if-eqz v0, :cond_2a

    goto :goto_3e

    .line 260
    :cond_2a
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 261
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 260
    const-string v1, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_9

    .line 142
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readFully(Lcom/android/okhttp/okio/Buffer;J)V

    return-void

    :catch_9
    move-exception p2

    .line 139
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1, p0}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 140
    throw p2
.end method

.method public blacklist readFully([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    .line 119
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    return-void

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    .line 112
    :goto_d
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v3, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_27

    long-to-int v3, v3

    .line 113
    invoke-virtual {v2, p1, v1, v3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    add-int/2addr v1, v2

    goto :goto_d

    .line 114
    :cond_21
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 117
    :cond_27
    throw v0
.end method

.method public blacklist readHexadecimalUnsignedLong()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 273
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 274
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1e

    const/16 v3, 0x39

    if-le v2, v3, :cond_2f

    :cond_1e
    const/16 v3, 0x61

    if-lt v2, v3, :cond_26

    const/16 v3, 0x66

    if-le v2, v3, :cond_2f

    :cond_26
    const/16 v3, 0x41

    if-lt v2, v3, :cond_31

    const/16 v3, 0x46

    if-le v2, v3, :cond_2f

    goto :goto_31

    :cond_2f
    move v0, v1

    goto :goto_6

    :cond_31
    :goto_31
    if-eqz v0, :cond_34

    goto :goto_48

    .line 278
    :cond_34
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 279
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 278
    const-string v1, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_48
    :goto_48
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 234
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    move-result p0

    return p0
.end method

.method public blacklist readIntLe()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 239
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readIntLe()I

    move-result p0

    return p0
.end method

.method public blacklist readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 244
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 249
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 224
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    move-result p0

    return p0
.end method

.method public blacklist readShortLe()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 229
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result p0

    return p0
.end method

.method public blacklist readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    if-eqz p3, :cond_c

    .line 183
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 177
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist readUtf8()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 165
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readUtf8(J)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 170
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readUtf8CodePoint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 210
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_19

    const-wide/16 v0, 0x2

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    :cond_19
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_25

    const-wide/16 v0, 0x3

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    :cond_25
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_30

    const-wide/16 v0, 0x4

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    .line 219
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readUtf8CodePoint()I

    move-result p0

    return p0
.end method

.method public blacklist readUtf8Line()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 190
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_1d
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist readUtf8LineStrict()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    .line 204
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_13
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x20

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 201
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist request(J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2c

    .line 70
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_24

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_22

    .line 72
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0

    .line 70
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist require(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public blacklist skip(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_39

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_38

    .line 291
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v3, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    goto :goto_27

    .line 292
    :cond_21
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 294
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 295
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_4

    :cond_38
    return-void

    .line 289
    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
