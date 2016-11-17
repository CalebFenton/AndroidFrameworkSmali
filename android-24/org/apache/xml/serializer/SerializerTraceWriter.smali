.class final Lorg/apache/xml/serializer/SerializerTraceWriter;
.super Ljava/io/Writer;
.source "SerializerTraceWriter.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# instance fields
.field private buf:[B

.field private buf_length:I

.field private count:I

.field private final m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private final m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "tracer"    # Lorg/apache/xml/serializer/SerializerTrace;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@5
    .line 100
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@7
    .line 101
    const/16 v0, 0x400

    #@9
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    #@c
    .line 97
    return-void
.end method

.method private flushBuffer()V
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
    .line 116
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@3
    if-lez v2, :cond_2

    #@5
    .line 118
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@7
    new-array v0, v2, [C

    #@9
    .line 119
    .local v0, "chars":[C
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 120
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@10
    aget-byte v2, v2, v1

    #@12
    int-to-char v2, v2

    #@13
    aput-char v2, v0, v1

    #@15
    .line 119
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 122
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 123
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@1e
    .line 127
    array-length v3, v0

    #@1f
    .line 124
    const/16 v4, 0xc

    #@21
    .line 123
    invoke-interface {v2, v4, v0, v5, v3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    #@24
    .line 129
    :cond_1
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@26
    .line 112
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private setBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 81
    add-int/lit8 v0, p1, 0x3

    #@2
    new-array v0, v0, [B

    #@4
    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@6
    .line 82
    iput p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@8
    .line 83
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@b
    .line 79
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
    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@6
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    #@9
    .line 158
    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@c
    .line 151
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
    .line 140
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@6
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@9
    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@c
    .line 137
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    .line 337
    .local v0, "retval":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@3
    instance-of v1, v1, Lorg/apache/xml/serializer/WriterChain;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 338
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@9
    check-cast v1, Lorg/apache/xml/serializer/WriterChain;

    #@b
    invoke-interface {v1}, Lorg/apache/xml/serializer/WriterChain;->getOutputStream()Ljava/io/OutputStream;

    #@e
    move-result-object v0

    #@f
    .line 339
    .end local v0    # "retval":Ljava/io/OutputStream;
    :cond_0
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@2
    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x80

    #@2
    .line 176
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 177
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@8
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    #@b
    .line 184
    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@d
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@f
    if-lt v0, v1, :cond_1

    #@11
    .line 185
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@14
    .line 187
    :cond_1
    if-ge p1, v2, :cond_2

    #@16
    .line 189
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@18
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@1e
    int-to-byte v2, p1

    #@1f
    aput-byte v2, v0, v1

    #@21
    .line 173
    :goto_0
    return-void

    #@22
    .line 191
    :cond_2
    const/16 v0, 0x800

    #@24
    if-ge p1, v0, :cond_3

    #@26
    .line 193
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@28
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@2a
    add-int/lit8 v2, v1, 0x1

    #@2c
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@2e
    shr-int/lit8 v2, p1, 0x6

    #@30
    add-int/lit16 v2, v2, 0xc0

    #@32
    int-to-byte v2, v2

    #@33
    aput-byte v2, v0, v1

    #@35
    .line 194
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@37
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@39
    add-int/lit8 v2, v1, 0x1

    #@3b
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@3d
    and-int/lit8 v2, p1, 0x3f

    #@3f
    add-int/lit16 v2, v2, 0x80

    #@41
    int-to-byte v2, v2

    #@42
    aput-byte v2, v0, v1

    #@44
    goto :goto_0

    #@45
    .line 198
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@47
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@49
    add-int/lit8 v2, v1, 0x1

    #@4b
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@4d
    shr-int/lit8 v2, p1, 0xc

    #@4f
    add-int/lit16 v2, v2, 0xe0

    #@51
    int-to-byte v2, v2

    #@52
    aput-byte v2, v0, v1

    #@54
    .line 199
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@56
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@58
    add-int/lit8 v2, v1, 0x1

    #@5a
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@5c
    shr-int/lit8 v2, p1, 0x6

    #@5e
    and-int/lit8 v2, v2, 0x3f

    #@60
    add-int/lit16 v2, v2, 0x80

    #@62
    int-to-byte v2, v2

    #@63
    aput-byte v2, v0, v1

    #@65
    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@67
    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@69
    add-int/lit8 v2, v1, 0x1

    #@6b
    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@6d
    and-int/lit8 v2, p1, 0x3f

    #@6f
    add-int/lit16 v2, v2, 0x80

    #@71
    int-to-byte v2, v2

    #@72
    aput-byte v2, v0, v1

    #@74
    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x80

    #@2
    .line 274
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 275
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@8
    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b
    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 284
    .local v2, "length":I
    shl-int/lit8 v4, v2, 0x1

    #@11
    add-int v3, v4, v2

    #@13
    .line 286
    .local v3, "lengthx3":I
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@15
    if-lt v3, v4, :cond_1

    #@17
    .line 293
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@1a
    .line 294
    mul-int/lit8 v4, v3, 0x2

    #@1c
    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    #@1f
    .line 297
    :cond_1
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@21
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@23
    sub-int/2addr v4, v5

    #@24
    if-le v3, v4, :cond_2

    #@26
    .line 299
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@29
    .line 302
    :cond_2
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@2c
    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v0

    #@30
    .line 306
    .local v0, "c":C
    if-ge v0, v7, :cond_3

    #@32
    .line 307
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@34
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@36
    add-int/lit8 v6, v5, 0x1

    #@38
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@3a
    int-to-byte v6, v0

    #@3b
    aput-byte v6, v4, v5

    #@3d
    .line 302
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 308
    :cond_3
    const/16 v4, 0x800

    #@42
    if-ge v0, v4, :cond_4

    #@44
    .line 310
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@46
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@48
    add-int/lit8 v6, v5, 0x1

    #@4a
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@4c
    shr-int/lit8 v6, v0, 0x6

    #@4e
    add-int/lit16 v6, v6, 0xc0

    #@50
    int-to-byte v6, v6

    #@51
    aput-byte v6, v4, v5

    #@53
    .line 311
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@55
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@57
    add-int/lit8 v6, v5, 0x1

    #@59
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@5b
    and-int/lit8 v6, v0, 0x3f

    #@5d
    add-int/lit16 v6, v6, 0x80

    #@5f
    int-to-byte v6, v6

    #@60
    aput-byte v6, v4, v5

    #@62
    goto :goto_1

    #@63
    .line 315
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@65
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@67
    add-int/lit8 v6, v5, 0x1

    #@69
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@6b
    shr-int/lit8 v6, v0, 0xc

    #@6d
    add-int/lit16 v6, v6, 0xe0

    #@6f
    int-to-byte v6, v6

    #@70
    aput-byte v6, v4, v5

    #@72
    .line 316
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@74
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@76
    add-int/lit8 v6, v5, 0x1

    #@78
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@7a
    shr-int/lit8 v6, v0, 0x6

    #@7c
    and-int/lit8 v6, v6, 0x3f

    #@7e
    add-int/lit16 v6, v6, 0x80

    #@80
    int-to-byte v6, v6

    #@81
    aput-byte v6, v4, v5

    #@83
    .line 317
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@85
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@87
    add-int/lit8 v6, v5, 0x1

    #@89
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@8b
    and-int/lit8 v6, v0, 0x3f

    #@8d
    add-int/lit16 v6, v6, 0x80

    #@8f
    int-to-byte v6, v6

    #@90
    aput-byte v6, v4, v5

    #@92
    goto :goto_1

    #@93
    .line 271
    .end local v0    # "c":C
    :cond_5
    return-void
.end method

.method public write([CII)V
    .locals 8
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x80

    #@2
    .line 219
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 220
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    #@8
    invoke-virtual {v4, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    #@b
    .line 223
    :cond_0
    shl-int/lit8 v4, p3, 0x1

    #@d
    add-int v2, v4, p3

    #@f
    .line 225
    .local v2, "lengthx3":I
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@11
    if-lt v2, v4, :cond_1

    #@13
    .line 232
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@16
    .line 233
    mul-int/lit8 v4, v2, 0x2

    #@18
    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    #@1b
    .line 237
    :cond_1
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    #@1d
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@1f
    sub-int/2addr v4, v5

    #@20
    if-le v2, v4, :cond_2

    #@22
    .line 239
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    #@25
    .line 242
    :cond_2
    add-int v3, p3, p2

    #@27
    .line 243
    .local v3, "n":I
    move v1, p2

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    #@2a
    .line 245
    aget-char v0, p1, v1

    #@2c
    .line 247
    .local v0, "c":C
    if-ge v0, v7, :cond_3

    #@2e
    .line 248
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@30
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@32
    add-int/lit8 v6, v5, 0x1

    #@34
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@36
    int-to-byte v6, v0

    #@37
    aput-byte v6, v4, v5

    #@39
    .line 243
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 249
    :cond_3
    const/16 v4, 0x800

    #@3e
    if-ge v0, v4, :cond_4

    #@40
    .line 251
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@42
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@44
    add-int/lit8 v6, v5, 0x1

    #@46
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@48
    shr-int/lit8 v6, v0, 0x6

    #@4a
    add-int/lit16 v6, v6, 0xc0

    #@4c
    int-to-byte v6, v6

    #@4d
    aput-byte v6, v4, v5

    #@4f
    .line 252
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@51
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@53
    add-int/lit8 v6, v5, 0x1

    #@55
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@57
    and-int/lit8 v6, v0, 0x3f

    #@59
    add-int/lit16 v6, v6, 0x80

    #@5b
    int-to-byte v6, v6

    #@5c
    aput-byte v6, v4, v5

    #@5e
    goto :goto_1

    #@5f
    .line 256
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@61
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@63
    add-int/lit8 v6, v5, 0x1

    #@65
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@67
    shr-int/lit8 v6, v0, 0xc

    #@69
    add-int/lit16 v6, v6, 0xe0

    #@6b
    int-to-byte v6, v6

    #@6c
    aput-byte v6, v4, v5

    #@6e
    .line 257
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@70
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@72
    add-int/lit8 v6, v5, 0x1

    #@74
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@76
    shr-int/lit8 v6, v0, 0x6

    #@78
    and-int/lit8 v6, v6, 0x3f

    #@7a
    add-int/lit16 v6, v6, 0x80

    #@7c
    int-to-byte v6, v6

    #@7d
    aput-byte v6, v4, v5

    #@7f
    .line 258
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    #@81
    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@83
    add-int/lit8 v6, v5, 0x1

    #@85
    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    #@87
    and-int/lit8 v6, v0, 0x3f

    #@89
    add-int/lit16 v6, v6, 0x80

    #@8b
    int-to-byte v6, v6

    #@8c
    aput-byte v6, v4, v5

    #@8e
    goto :goto_1

    #@8f
    .line 216
    .end local v0    # "c":C
    :cond_5
    return-void
.end method
