.class public final Lcom/android/okhttp/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Sink;)V
    .locals 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    #@5
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    #@a
    .line 57
    if-nez p1, :cond_0

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "sink == null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 58
    :cond_0
    new-instance v0, Ljava/util/zip/Deflater;

    #@17
    const/4 v1, -0x1

    #@18
    const/4 v2, 0x1

    #@19
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@1c
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    #@1e
    .line 59
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@24
    .line 60
    new-instance v0, Lcom/android/okhttp/okio/DeflaterSink;

    #@26
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@28
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    #@2a
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    #@2d
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    #@2f
    .line 62
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeHeader()V

    #@32
    .line 56
    return-void
.end method

.method private updateCrc(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    #@0
    .prologue
    .line 131
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2
    .local v0, "head":Lcom/android/okhttp/okio/Segment;
    :goto_0
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, p2, v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 132
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@a
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@c
    sub-int/2addr v2, v3

    #@d
    int-to-long v2, v2

    #@e
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@11
    move-result-wide v2

    #@12
    long-to-int v1, v2

    #@13
    .line 133
    .local v1, "segmentLength":I
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    #@15
    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@17
    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@19
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    #@1c
    .line 134
    int-to-long v2, v1

    #@1d
    sub-long/2addr p2, v2

    #@1e
    .line 131
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@20
    goto :goto_0

    #@21
    .line 130
    .end local v1    # "segmentLength":I
    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    #@4
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@7
    move-result-wide v2

    #@8
    long-to-int v1, v2

    #@9
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    #@c
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@e
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    #@10
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    #@13
    move-result v1

    #@14
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    #@17
    .line 124
    return-void
.end method

.method private writeHeader()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@6
    move-result-object v0

    #@7
    .line 116
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    const/16 v1, 0x1f8b

    #@9
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    #@c
    .line 117
    const/16 v1, 0x8

    #@e
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@11
    .line 118
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@14
    .line 119
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    #@17
    .line 120
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@1a
    .line 121
    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@1d
    .line 113
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
    .line 82
    iget-boolean v2, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    return-void

    #@5
    .line 89
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 91
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V

    #@b
    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 98
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    #@10
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 104
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@15
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    #@18
    .line 108
    :cond_2
    :goto_2
    const/4 v2, 0x1

    #@19
    iput-boolean v2, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    #@1b
    .line 110
    if-eqz v1, :cond_3

    #@1d
    invoke-static {v1}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    #@20
    .line 81
    :cond_3
    return-void

    #@21
    .line 93
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@22
    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@23
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@24
    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@25
    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    #@27
    move-object v1, v0

    #@28
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1

    #@29
    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    #@2a
    .line 106
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    #@2c
    move-object v1, v0

    #@2d
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_2
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
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/DeflaterSink;->flush()V

    #@5
    .line 73
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 4
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
    .line 66
    cmp-long v0, p2, v2

    #@4
    if-gez v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "byteCount < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 67
    :cond_0
    cmp-long v0, p2, v2

    #@22
    if-nez v0, :cond_1

    #@24
    return-void

    #@25
    .line 69
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/okio/GzipSink;->updateCrc(Lcom/android/okhttp/okio/Buffer;J)V

    #@28
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    #@2a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/DeflaterSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@2d
    .line 65
    return-void
.end method
