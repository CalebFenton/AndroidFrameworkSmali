.class final Lcom/android/okhttp/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSink;


# instance fields
.field public final blacklist buffer:Lcom/android/okhttp/okio/Buffer;

.field private blacklist closed:Z

.field public final blacklist sink:Lcom/android/okhttp/okio/Sink;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 3

    .line 36
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSink;-><init>(Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/okio/Buffer;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/okio/Buffer;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 31
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    .line 32
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    return-void

    .line 30
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    return p0
.end method


# virtual methods
.method public blacklist buffer()Lcom/android/okhttp/okio/Buffer;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    return-object p0
.end method

.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_5

    goto :goto_2a

    .line 234
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_17

    .line 235
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x0

    .line 242
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v1

    if-nez v0, :cond_22

    move-object v0, v1

    :cond_22
    :goto_22
    const/4 v1, 0x1

    .line 246
    iput-boolean v1, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_2a

    .line 248
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist emit()Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    .line 183
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    .line 184
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_17
    return-object p0

    .line 182
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    .line 177
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_17
    return-object p0

    .line 175
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_19

    .line 221
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_13

    .line 222
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 224
    :cond_13
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->flush()V

    return-void

    .line 220
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 189
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSink$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->sink:Lcom/android/okhttp/okio/Sink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 52
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 51
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Source;J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1d

    .line 112
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    sub-long/2addr p2, v0

    .line 115
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_0

    .line 113
    :cond_17
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1d
    return-object p0
.end method

.method public blacklist write([B)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    .line 91
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 89
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist write([BII)Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 96
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 97
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 95
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_d

    .line 46
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 47
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    return-void

    .line 45
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeAll(Lcom/android/okhttp/okio/Source;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_18

    const-wide/16 v0, 0x0

    .line 103
    :goto_4
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    add-long/2addr v0, v2

    .line 105
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_4

    :cond_17
    return-wide v0

    .line 101
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 122
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 123
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 121
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    .line 165
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 163
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 170
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    .line 171
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 169
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeInt(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 140
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    .line 141
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 139
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 146
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeIntLe(I)Lcom/android/okhttp/okio/Buffer;

    .line 147
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 145
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    .line 153
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 151
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeLongLe(J)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 158
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLongLe(J)Lcom/android/okhttp/okio/Buffer;

    .line 159
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 157
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeShort(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    .line 129
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 127
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeShortLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 134
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShortLe(I)Lcom/android/okhttp/okio/Buffer;

    .line 135
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 133
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    .line 85
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 83
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    .line 78
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 76
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    .line 59
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 57
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 65
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    .line 66
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 64
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist writeUtf8CodePoint(I)Lcom/android/okhttp/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 71
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 72
    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    return-object p0

    .line 70
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
