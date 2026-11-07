.class public final Lcom/android/okhttp/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private blacklist closed:Z

.field private final blacklist deflater:Ljava/util/zip/Deflater;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 56
    iput-object p1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 57
    iput-object p2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void

    .line 55
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inflater == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V
    .registers 3

    .line 45
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private blacklist deflate(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    if-eqz p1, :cond_1b

    .line 97
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_27

    .line 98
    :cond_1b
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_27
    if-lez v2, :cond_3a

    .line 101
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 102
    iget-wide v3, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 103
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_6

    .line 104
    :cond_3a
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    iget p0, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget p1, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne p0, p1, :cond_51

    .line 107
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object p0

    iput-object p0, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 108
    invoke-static {v1}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    :cond_51
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_5

    goto :goto_27

    .line 132
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    const/4 v0, 0x0

    goto :goto_b

    :catchall_a
    move-exception v0

    .line 138
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v1

    if-nez v0, :cond_15

    move-object v0, v1

    .line 144
    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v1

    if-nez v0, :cond_1f

    move-object v0, v1

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_27

    .line 150
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method blacklist finishDeflate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 117
    iget-object p0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->flush()V

    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_42

    .line 65
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 66
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 67
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, v2}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    .line 73
    iget-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 74
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 75
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v1, :cond_40

    .line 76
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 77
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    :cond_40
    sub-long/2addr p2, v4

    goto :goto_8

    :cond_42
    return-void
.end method
