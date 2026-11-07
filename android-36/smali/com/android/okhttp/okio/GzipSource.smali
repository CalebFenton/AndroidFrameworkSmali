.class public final Lcom/android/okhttp/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# static fields
.field private static final blacklist FCOMMENT:B = 0x4t

.field private static final blacklist FEXTRA:B = 0x2t

.field private static final blacklist FHCRC:B = 0x1t

.field private static final blacklist FNAME:B = 0x3t

.field private static final blacklist SECTION_BODY:B = 0x1t

.field private static final blacklist SECTION_DONE:B = 0x3t

.field private static final blacklist SECTION_HEADER:B = 0x0t

.field private static final blacklist SECTION_TRAILER:B = 0x2t


# instance fields
.field private final blacklist crc:Ljava/util/zip/CRC32;

.field private final blacklist inflater:Ljava/util/zip/Inflater;

.field private final blacklist inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private blacklist section:I

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 60
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_25

    .line 64
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 65
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 66
    new-instance v1, Lcom/android/okhttp/okio/InflaterSource;

    invoke-direct {v1, p1, v0}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    return-void

    .line 63
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkEqual(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p3, p2, :cond_3

    return-void

    .line 207
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 207
    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist consumeHeader()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0xa

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 117
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    move-result v6

    shr-int/lit8 v1, v6, 0x1

    const/4 v7, 0x1

    and-int/2addr v1, v7

    const/4 v8, 0x0

    if-ne v1, v7, :cond_1e

    move v9, v7

    goto :goto_1f

    :cond_1e
    move v9, v8

    :goto_1f
    if-eqz v9, :cond_2e

    .line 119
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 121
    :cond_2e
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v1

    .line 122
    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-direct {v0, v2, v3, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 123
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    shr-int/lit8 v1, v6, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_7f

    .line 130
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    if-eqz v9, :cond_5d

    .line 131
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 132
    :cond_5d
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    move-result v1

    .line 133
    iget-object v2, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    if-eqz v9, :cond_7a

    .line 134
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 135
    :cond_7a
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    :cond_7f
    shr-int/lit8 v1, v6, 0x3

    and-int/2addr v1, v7

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x1

    if-ne v1, v7, :cond_ae

    .line 143
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1, v8}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v14

    cmp-long v1, v14, v10

    if-eqz v1, :cond_a8

    if-eqz v9, :cond_a1

    .line 145
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v14, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 146
    :cond_a1
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    add-long/2addr v14, v12

    invoke-interface {v1, v14, v15}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_ae

    .line 144
    :cond_a8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_ae
    :goto_ae
    shr-int/lit8 v1, v6, 0x4

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_d9

    .line 154
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1, v8}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-eqz v1, :cond_d3

    if-eqz v9, :cond_cc

    .line 156
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v6, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    .line 157
    :cond_cc
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    add-long/2addr v6, v12

    invoke-interface {v1, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_d9

    .line 155
    :cond_d3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d9
    :goto_d9
    if-eqz v9, :cond_f3

    .line 165
    iget-object v1, v0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, v0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const-string v3, "FHCRC"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 166
    iget-object v0, v0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_f3
    return-void
.end method

.method private blacklist consumeTrailer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void
.end method

.method private blacklist updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V
    .registers 10

    .line 190
    iget-object p1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 191
    :goto_2
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_13

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_2

    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_34

    .line 197
    iget v2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    .line 198
    iget p3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 199
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 196
    iget-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    move-wide p2, v0

    goto :goto_13

    :cond_34
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/InflaterSource;->close()V

    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4d

    if-nez v2, :cond_9

    return-wide v0

    .line 74
    :cond_9
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 75
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeHeader()V

    .line 76
    iput v1, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 80
    :cond_13
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_30

    .line 81
    iget-wide v7, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/InflaterSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v9

    cmp-long p2, v9, v3

    if-eqz p2, :cond_2c

    move-object v5, p0

    move-object v6, p1

    .line 84
    invoke-direct/range {v5 .. v10}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    return-wide v9

    :cond_2c
    move-object v5, p0

    .line 87
    iput v2, v5, Lcom/android/okhttp/okio/GzipSource;->section:I

    goto :goto_31

    :cond_30
    move-object v5, p0

    .line 93
    :goto_31
    iget p0, v5, Lcom/android/okhttp/okio/GzipSource;->section:I

    if-ne p0, v2, :cond_4c

    .line 94
    invoke-direct {v5}, Lcom/android/okhttp/okio/GzipSource;->consumeTrailer()V

    const/4 p0, 0x3

    .line 95
    iput p0, v5, Lcom/android/okhttp/okio/GzipSource;->section:I

    .line 101
    iget-object p0, v5, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_4c

    .line 102
    :cond_44
    new-instance p0, Ljava/io/IOException;

    const-string p1, "gzip finished without exhausting source"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    :goto_4c
    return-wide v3

    .line 70
    :cond_4d
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

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method
