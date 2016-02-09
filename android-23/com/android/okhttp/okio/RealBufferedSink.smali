.class final Lcom/android/okhttp/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/android/okhttp/okio/Buffer;

.field private closed:Z

.field public final sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Sink;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 35
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/okio/Buffer;)V

    #@8
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/okio/Buffer;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .param p2, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "sink == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 30
    :cond_0
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@10
    .line 31
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@12
    .line 28
    return-void
.end method


# virtual methods
.method public buffer()Lcom/android/okhttp/okio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    return-void

    #@5
    .line 231
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 233
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@8
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@a
    const-wide/16 v4, 0x0

    #@c
    cmp-long v2, v2, v4

    #@e
    if-lez v2, :cond_1

    #@10
    .line 234
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@12
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@14
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@16
    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    #@18
    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 241
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@1d
    invoke-interface {v2}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    .line 245
    :cond_2
    :goto_1
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@23
    .line 247
    if-eqz v1, :cond_3

    #@25
    invoke-static {v1}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    #@28
    .line 226
    :cond_3
    return-void

    #@29
    .line 236
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@2a
    .line 237
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@2b
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@2c
    .line 242
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@2d
    .line 243
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    #@2f
    move-object v1, v0

    #@30
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public emit()Lcom/android/okhttp/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "closed"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@12
    move-result-wide v0

    #@13
    .line 183
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    #@15
    cmp-long v2, v0, v2

    #@17
    if-lez v2, :cond_1

    #@19
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@1b
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    invoke-interface {v2, v3, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@20
    .line 184
    :cond_1
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "closed"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    #@12
    move-result-wide v0

    #@13
    .line 176
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    #@15
    cmp-long v2, v0, v2

    #@17
    if-lez v2, :cond_1

    #@19
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@1b
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    invoke-interface {v2, v3, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@20
    .line 177
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@11
    const-wide/16 v2, 0x0

    #@13
    cmp-long v0, v0, v2

    #@15
    if-lez v0, :cond_1

    #@17
    .line 221
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@19
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1b
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1f
    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@22
    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@24
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V

    #@27
    .line 218
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 188
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSink;)V

    #@5
    return-object v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "buffer("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

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

.method public write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 52
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Source;J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 4
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    :goto_0
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p2, v2

    #@4
    if-lez v2, :cond_1

    #@6
    .line 111
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@8
    invoke-interface {p1, v2, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@b
    move-result-wide v0

    #@c
    .line 112
    .local v0, "read":J
    const-wide/16 v2, -0x1

    #@e
    cmp-long v2, v0, v2

    #@10
    if-nez v2, :cond_0

    #@12
    new-instance v2, Ljava/io/EOFException;

    #@14
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@17
    throw v2

    #@18
    .line 113
    :cond_0
    sub-long/2addr p2, v0

    #@19
    .line 114
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@1c
    goto :goto_0

    #@1d
    .line 116
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public write([B)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 90
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public write([BII)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 96
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@12
    .line 46
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    .line 43
    return-void
.end method

.method public writeAll(Lcom/android/okhttp/okio/Source;)J
    .locals 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "source == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 101
    :cond_0
    const-wide/16 v2, 0x0

    #@d
    .line 102
    .local v2, "totalBytesRead":J
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    const-wide/16 v6, 0x800

    #@11
    invoke-interface {p1, v4, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@14
    move-result-wide v0

    #@15
    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    #@17
    cmp-long v4, v0, v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 103
    add-long/2addr v2, v0

    #@1c
    .line 104
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@1f
    goto :goto_0

    #@20
    .line 106
    :cond_1
    return-wide v2
.end method

.method public writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 122
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 164
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 170
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeInt(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 140
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeIntLe(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 146
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 152
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeLongLe(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLongLe(J)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 158
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeShort(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 128
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeShortLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShortLe(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 134
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 84
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 77
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 58
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 65
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 2
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 71
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
