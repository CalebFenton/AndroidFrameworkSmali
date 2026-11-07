.class public final Lcom/android/okhttp/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# instance fields
.field private blacklist bufferBytesHeldByInflater:I

.field private blacklist closed:Z

.field private final blacklist inflater:Ljava/util/zip/Inflater;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 53
    iput-object p1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 54
    iput-object p2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void

    .line 52
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inflater == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V
    .registers 3

    .line 42
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private blacklist releaseInflatedBytes()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 116
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 117
    iget-object p0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->close()V

    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_70

    .line 60
    iget-boolean p2, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    if-nez p2, :cond_68

    if-nez v2, :cond_d

    return-wide v0

    .line 64
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    move-result p2

    const/4 p3, 0x1

    .line 68
    :try_start_12
    invoke-virtual {p1, p3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object p3

    .line 69
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v1, p3, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v2, p3, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v3, v2, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-lez v0, :cond_30

    .line 71
    iget p0, p3, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr p0, v0

    iput p0, p3, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 72
    iget-wide p2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    return-wide v0

    .line 75
    :cond_30
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_4c

    :cond_41
    if-nez p2, :cond_44

    goto :goto_d

    .line 84
    :cond_44
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "source exhausted prematurely"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_4c
    :goto_4c
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 77
    iget p0, p3, Lcom/android/okhttp/okio/Segment;->pos:I

    iget p2, p3, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne p0, p2, :cond_5e

    .line 79
    invoke-virtual {p3}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object p0

    iput-object p0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 80
    invoke-static {p3}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V
    :try_end_5e
    .catch Ljava/util/zip/DataFormatException; {:try_start_12 .. :try_end_5e} :catch_61

    :cond_5e
    const-wide/16 p0, -0x1

    return-wide p0

    :catch_61
    move-exception p0

    .line 86
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_70
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

.method public blacklist refill()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 99
    :cond_a
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    .line 100
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_36

    .line 103
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    return p0

    .line 106
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 107
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 108
    iget-object p0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {p0, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    .line 100
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method
