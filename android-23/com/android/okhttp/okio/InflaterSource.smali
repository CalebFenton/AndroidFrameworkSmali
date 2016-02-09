.class public final Lcom/android/okhttp/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "source == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 50
    :cond_0
    if-nez p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "inflater == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 51
    :cond_1
    iput-object p1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1b
    .line 52
    iput-object p2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@1d
    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    #@7
    .line 39
    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 113
    :cond_0
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@7
    iget-object v2, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@9
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    #@c
    move-result v2

    #@d
    sub-int v0, v1, v2

    #@f
    .line 114
    .local v0, "toRelease":I
    iget v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@11
    sub-int/2addr v1, v0

    #@12
    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@14
    .line 115
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@16
    int-to-long v2, v0

    #@17
    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@1a
    .line 111
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@7
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    #@a
    .line 125
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    #@d
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@f
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    #@12
    .line 122
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 57
    cmp-long v4, p2, v6

    #@4
    if-gez v4, :cond_0

    #@6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "byteCount < 0: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 58
    :cond_0
    iget-boolean v4, p0, Lcom/android/okhttp/okio/InflaterSource;->closed:Z

    #@22
    if-eqz v4, :cond_1

    #@24
    new-instance v4, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v5, "closed"

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 59
    :cond_1
    cmp-long v4, p2, v6

    #@2f
    if-nez v4, :cond_2

    #@31
    return-wide v6

    #@32
    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/okhttp/okio/InflaterSource;->refill()Z

    #@35
    move-result v2

    #@36
    .line 66
    .local v2, "sourceExhausted":Z
    const/4 v4, 0x1

    #@37
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@3a
    move-result-object v3

    #@3b
    .line 67
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@3d
    iget-object v5, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@3f
    iget v6, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@41
    iget v7, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@43
    rsub-int v7, v7, 0x800

    #@45
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@48
    move-result v0

    #@49
    .line 68
    .local v0, "bytesInflated":I
    if-lez v0, :cond_3

    #@4b
    .line 69
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4d
    add-int/2addr v4, v0

    #@4e
    iput v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@50
    .line 70
    iget-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@52
    int-to-long v6, v0

    #@53
    add-long/2addr v4, v6

    #@54
    iput-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@56
    .line 71
    int-to-long v4, v0

    #@57
    return-wide v4

    #@58
    .line 73
    :cond_3
    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@5a
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_4

    #@60
    iget-object v4, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@62
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_6

    #@68
    .line 74
    :cond_4
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    #@6b
    .line 75
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@6d
    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@6f
    if-ne v4, v5, :cond_5

    #@71
    .line 77
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@74
    move-result-object v4

    #@75
    iput-object v4, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@77
    .line 78
    invoke-static {v3}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@7a
    .line 80
    :cond_5
    const-wide/16 v4, -0x1

    #@7c
    return-wide v4

    #@7d
    .line 82
    :cond_6
    if-eqz v2, :cond_2

    #@7f
    new-instance v4, Ljava/io/EOFException;

    #@81
    const-string/jumbo v5, "source exhausted prematurely"

    #@84
    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@87
    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    .line 83
    .end local v0    # "bytesInflated":I
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    :catch_0
    move-exception v1

    #@89
    .line 84
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/io/IOException;

    #@8b
    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@8e
    throw v4
.end method

.method public refill()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 95
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@3
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    return v5

    #@a
    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/okio/InflaterSource;->releaseInflatedBytes()V

    #@d
    .line 98
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@f
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "?"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@20
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    const/4 v1, 0x1

    #@27
    return v1

    #@28
    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2a
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@2d
    move-result-object v1

    #@2e
    iget-object v0, v1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@30
    .line 105
    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@32
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@34
    sub-int/2addr v1, v2

    #@35
    iput v1, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@37
    .line 106
    iget-object v1, p0, Lcom/android/okhttp/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    #@39
    iget-object v2, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@3b
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@3d
    iget v4, p0, Lcom/android/okhttp/okio/InflaterSource;->bufferBytesHeldByInflater:I

    #@3f
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@42
    .line 107
    return v5
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/okio/InflaterSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
