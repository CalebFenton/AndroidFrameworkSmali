.class final Lorg/apache/xml/serializer/SerializerTraceWriter;
.super Ljava/io/Writer;
.source "SerializerTraceWriter.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private greylist buf:[B

.field private greylist buf_length:I

.field private greylist count:I

.field private final greylist m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private final greylist m_writer:Ljava/io/Writer;


# direct methods
.method public constructor greylist <init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    .line 100
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 p1, 0x400

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    return-void
.end method

.method private greylist flushBuffer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-lez v0, :cond_21

    .line 118
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    .line 119
    :goto_8
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-ge v3, v4, :cond_16

    .line 120
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 122
    :cond_16
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v3, :cond_1f

    const/16 v4, 0xc

    .line 123
    invoke-interface {v3, v4, v1, v2, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    .line 129
    :cond_1f
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    :cond_21
    return-void
.end method

.method private greylist setBufferSize(I)V
    .registers 3

    add-int/lit8 v0, p1, 0x3

    .line 81
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    .line 82
    iput p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

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

    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 155
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 158
    :cond_7
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 144
    :cond_7
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 337
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    instance-of v0, p0, Lorg/apache/xml/serializer/WriterChain;

    if-eqz v0, :cond_d

    .line 338
    check-cast p0, Lorg/apache/xml/serializer/WriterChain;

    invoke-interface {p0}, Lorg/apache/xml/serializer/WriterChain;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 327
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 184
    :cond_7
    iget v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_10

    .line 185
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_10
    const/16 v0, 0x80

    if-ge p1, v0, :cond_20

    .line 189
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void

    :cond_20
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3e

    .line 193
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v4, p1, 0x6

    add-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    .line 194
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    return-void

    .line 198
    :cond_3e
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v4, p1, 0xc

    add-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 199
    iput v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v2, v2, 0x3

    .line 200
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 275
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 286
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v1, v2, :cond_1a

    .line 293
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v2, v1, 0x2

    .line 294
    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 297
    :cond_1a
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_24

    .line 299
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_81

    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3b

    .line 307
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    goto :goto_7e

    :cond_3b
    const/16 v4, 0x800

    if-ge v2, v4, :cond_59

    .line 310
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v7, v2, 0x6

    add-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x2

    .line 311
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    goto :goto_7e

    .line 315
    :cond_59
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v7, v2, 0xc

    add-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v7, v5, 0x2

    .line 316
    iput v7, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    add-int/lit8 v5, v5, 0x3

    .line 317
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_81
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_7
    shl-int/lit8 v0, p3, 0x1

    add-int/2addr v0, p3

    .line 225
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_16

    .line 232
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v1, v0, 0x2

    .line 233
    invoke-direct {p0, v1}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 237
    :cond_16
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_20

    .line 239
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_20
    add-int/2addr p3, p2

    :goto_21
    if-ge p2, p3, :cond_7b

    .line 245
    aget-char v0, p1, p2

    const/16 v1, 0x80

    if-ge v0, v1, :cond_35

    .line 248
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_78

    :cond_35
    const/16 v2, 0x800

    if-ge v0, v2, :cond_53

    .line 251
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v5, v0, 0x6

    add-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x2

    .line 252
    iput v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    goto :goto_78

    .line 256
    :cond_53
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v5, v0, 0xc

    add-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    .line 257
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v3, v3, 0x3

    .line 258
    iput v3, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v0, v0, 0x3f

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    :goto_78
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_7b
    return-void
.end method
