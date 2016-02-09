.class public final Lcom/android/okhttp/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
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
    .line 53
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
    .line 54
    :cond_1
    iput-object p1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@1b
    .line 55
    iput-object p2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@1d
    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    #@7
    .line 42
    return-void
.end method

.method private deflate(Z)V
    .locals 8
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@5
    move-result-object v0

    #@6
    .line 88
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@7
    invoke-virtual {v0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@a
    move-result-object v2

    #@b
    .line 94
    .local v2, "s":Lcom/android/okhttp/okio/Segment;
    if-eqz p1, :cond_1

    #@d
    .line 95
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@f
    iget-object v4, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    #@11
    iget v5, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@13
    iget v6, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@15
    rsub-int v6, v6, 0x800

    #@17
    const/4 v7, 0x2

    #@18
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    #@1b
    move-result v1

    #@1c
    .line 98
    .local v1, "deflated":I
    :goto_1
    if-lez v1, :cond_2

    #@1e
    .line 99
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@20
    add-int/2addr v3, v1

    #@21
    iput v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@23
    .line 100
    iget-wide v4, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@25
    int-to-long v6, v1

    #@26
    add-long/2addr v4, v6

    #@27
    iput-wide v4, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@29
    .line 101
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2b
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@2e
    goto :goto_0

    #@2f
    .line 96
    .end local v1    # "deflated":I
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@31
    iget-object v4, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    #@33
    iget v5, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@35
    iget v6, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@37
    rsub-int v6, v6, 0x800

    #@39
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@3c
    move-result v1

    #@3d
    .restart local v1    # "deflated":I
    goto :goto_1

    #@3e
    .line 102
    :cond_2
    iget-object v3, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@40
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_0

    #@46
    .line 103
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@48
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4a
    if-ne v3, v4, :cond_3

    #@4c
    .line 105
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@4f
    move-result-object v3

    #@50
    iput-object v3, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@52
    .line 106
    invoke-static {v2}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@55
    .line 108
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-boolean v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    return-void

    #@5
    .line 128
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 130
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 136
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@b
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@e
    .line 142
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@10
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@13
    .line 146
    :cond_2
    :goto_2
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/android/okhttp/okio/DeflaterSink;->closed:Z

    #@16
    .line 148
    if-eqz v1, :cond_3

    #@18
    invoke-static {v1}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    #@1b
    .line 123
    :cond_3
    return-void

    #@1c
    .line 131
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@1d
    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@1e
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@1f
    .line 137
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@20
    .line 138
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    #@22
    move-object v1, v0

    #@23
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1

    #@24
    .line 143
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    #@25
    .line 144
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    #@27
    move-object v1, v0

    #@28
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_2
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    #@5
    .line 120
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    #@9
    .line 118
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    #@4
    .line 115
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@6
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@9
    .line 113
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DeflaterSink("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/DeflaterSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 60
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    move-wide v4, p2

    #@5
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@8
    .line 61
    :goto_0
    cmp-long v0, p2, v2

    #@a
    if-lez v0, :cond_1

    #@c
    .line 63
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@e
    .line 64
    .local v6, "head":Lcom/android/okhttp/okio/Segment;
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@10
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@12
    sub-int/2addr v0, v1

    #@13
    int-to-long v0, v0

    #@14
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@17
    move-result-wide v0

    #@18
    long-to-int v7, v0

    #@19
    .line 65
    .local v7, "toDeflate":I
    iget-object v0, p0, Lcom/android/okhttp/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    #@1b
    iget-object v1, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    #@1d
    iget v4, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1f
    invoke-virtual {v0, v1, v4, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@22
    .line 68
    const/4 v0, 0x0

    #@23
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/DeflaterSink;->deflate(Z)V

    #@26
    .line 71
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@28
    int-to-long v4, v7

    #@29
    sub-long/2addr v0, v4

    #@2a
    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2c
    .line 72
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2e
    add-int/2addr v0, v7

    #@2f
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@31
    .line 73
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@33
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@35
    if-ne v0, v1, :cond_0

    #@37
    .line 74
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@3d
    .line 75
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@40
    .line 78
    :cond_0
    int-to-long v0, v7

    #@41
    sub-long/2addr p2, v0

    #@42
    goto :goto_0

    #@43
    .line 59
    .end local v6    # "head":Lcom/android/okhttp/okio/Segment;
    .end local v7    # "toDeflate":I
    :cond_1
    return-void
.end method
