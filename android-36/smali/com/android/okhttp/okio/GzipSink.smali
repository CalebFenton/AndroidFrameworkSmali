.class public final Lcom/android/okhttp/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private blacklist closed:Z

.field private final blacklist crc:Ljava/util/zip/CRC32;

.field private final blacklist deflater:Ljava/util/zip/Deflater;

.field private final blacklist deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Sink;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_26

    .line 60
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 61
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 62
    new-instance v1, Lcom/android/okhttp/okio/DeflaterSink;

    invoke-direct {v1, p1, v0}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    .line 64
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeHeader()V

    return-void

    .line 59
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist updateCrc(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 8

    .line 133
    iget-object p1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_21

    .line 134
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 135
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 133
    iget-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    :cond_21
    return-void
.end method

.method private blacklist writeFooter()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/okhttp/okio/BufferedSink;->writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;

    return-void
.end method

.method private blacklist writeHeader()V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object p0

    const/16 v0, 0x1f8b

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    const/16 v0, 0x8

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

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

    .line 84
    iget-boolean v0, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_5

    goto :goto_2c

    .line 93
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/DeflaterSink;->finishDeflate()V

    .line 94
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSink;->writeFooter()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    const/4 v0, 0x0

    goto :goto_10

    :catchall_f
    move-exception v0

    .line 100
    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v1

    if-nez v0, :cond_1a

    move-object v0, v1

    .line 106
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    if-nez v0, :cond_24

    move-object v0, v1

    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/android/okhttp/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_2c

    .line 112
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/DeflaterSink;->flush()V

    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSink;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_12

    if-nez v0, :cond_9

    return-void

    .line 71
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/okio/GzipSink;->updateCrc(Lcom/android/okhttp/okio/Buffer;J)V

    .line 72
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSink;->deflaterSink:Lcom/android/okhttp/okio/DeflaterSink;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/DeflaterSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-void

    .line 68
    :cond_12
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
