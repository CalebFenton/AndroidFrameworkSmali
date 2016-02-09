.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 57
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@4
    .line 41
    iput-boolean v3, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    #@6
    .line 45
    const/16 v1, 0x2000

    #@8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@e
    .line 78
    if-nez p2, :cond_0

    #@10
    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v2, "charsetName == null"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 81
    :cond_0
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@1b
    .line 83
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@22
    move-result-object v1

    #@23
    .line 84
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@25
    .line 83
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@28
    move-result-object v1

    #@29
    .line 85
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@2b
    .line 83
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 90
    iget-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@33
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@36
    .line 76
    return-void

    #@37
    .line 86
    :catch_0
    move-exception v0

    #@38
    .line 88
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@3a
    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@40
    move-result-object v1

    #@41
    .line 87
    check-cast v1, Ljava/io/UnsupportedEncodingException;

    #@43
    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@4
    .line 41
    iput-boolean v2, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    #@6
    .line 45
    const/16 v0, 0x2000

    #@8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@e
    .line 123
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@10
    .line 124
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@13
    move-result-object v0

    #@14
    .line 125
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@16
    .line 124
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@19
    move-result-object v0

    #@1a
    .line 126
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@1c
    .line 124
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@22
    .line 127
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@24
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@27
    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@4
    .line 41
    iput-boolean v1, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    #@6
    .line 45
    const/16 v0, 0x2000

    #@8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@e
    .line 104
    if-nez p2, :cond_0

    #@10
    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "dec == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 107
    :cond_0
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@1b
    .line 108
    iput-object p2, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@1d
    .line 109
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@1f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@22
    .line 102
    return-void
.end method

.method private isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 140
    :try_start_0
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 141
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@9
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@c
    .line 143
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@f
    .line 144
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 145
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@18
    .line 146
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v1

    #@1c
    .line 138
    return-void

    #@1d
    .line 139
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 159
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 161
    :cond_0
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@a
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 178
    iget-object v2, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 179
    :try_start_0
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 180
    new-instance v1, Ljava/io/IOException;

    #@c
    const-string/jumbo v3, "InputStreamReader is closed"

    #@f
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 178
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 182
    :cond_0
    const/4 v3, 0x1

    #@17
    :try_start_1
    new-array v0, v3, [C

    #@19
    .line 183
    .local v0, "buf":[C
    const/4 v3, 0x0

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStreamReader;->read([CII)I

    #@1e
    move-result v3

    #@1f
    if-eq v3, v1, :cond_1

    #@21
    const/4 v1, 0x0

    #@22
    aget-char v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :cond_1
    monitor-exit v2

    #@25
    return v1
.end method

.method public read([CII)I
    .locals 12
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 202
    iget-object v8, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v8

    #@5
    .line 203
    :try_start_0
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    #@8
    move-result v9

    #@9
    if-nez v9, :cond_0

    #@b
    .line 204
    new-instance v7, Ljava/io/IOException;

    #@d
    const-string/jumbo v9, "InputStreamReader is closed"

    #@10
    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 202
    :catchall_0
    move-exception v7

    #@15
    monitor-exit v8

    #@16
    throw v7

    #@17
    .line 207
    :cond_0
    :try_start_1
    array-length v9, p1

    #@18
    invoke-static {v9, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 208
    if-nez p3, :cond_1

    #@1d
    monitor-exit v8

    #@1e
    .line 209
    return v10

    #@1f
    .line 212
    :cond_1
    :try_start_2
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@22
    move-result-object v5

    #@23
    .line 213
    .local v5, "out":Ljava/nio/CharBuffer;
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@25
    .line 217
    .local v6, "result":Ljava/nio/charset/CoderResult;
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_7

    #@2d
    const/4 v3, 0x0

    #@2e
    .line 219
    .local v3, "needInput":Z
    :goto_0
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    move-result v9

    #@32
    if-eqz v9, :cond_2

    #@34
    .line 221
    if-eqz v3, :cond_a

    #@36
    .line 223
    :try_start_3
    iget-object v9, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@38
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    #@3b
    move-result v9

    #@3c
    if-nez v9, :cond_8

    #@3e
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    move-result v9

    #@42
    if-le v9, p2, :cond_8

    #@44
    .line 261
    :cond_2
    :goto_1
    :try_start_4
    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@46
    if-ne v6, v9, :cond_4

    #@48
    iget-boolean v9, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    #@4a
    if-eqz v9, :cond_4

    #@4c
    .line 262
    iget-object v9, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@4e
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@50
    const/4 v11, 0x1

    #@51
    invoke-virtual {v9, v10, v5, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@54
    move-result-object v6

    #@55
    .line 263
    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    #@57
    if-ne v6, v9, :cond_3

    #@59
    .line 264
    iget-object v9, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@5b
    invoke-virtual {v9, v5}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@5e
    move-result-object v6

    #@5f
    .line 266
    :cond_3
    iget-object v9, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@61
    invoke-virtual {v9}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@64
    .line 268
    :cond_4
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    #@67
    move-result v9

    #@68
    if-nez v9, :cond_5

    #@6a
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    #@6d
    move-result v9

    #@6e
    if-eqz v9, :cond_6

    #@70
    .line 269
    :cond_5
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    #@73
    .line 272
    :cond_6
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@76
    move-result v9

    #@77
    sub-int/2addr v9, p2

    #@78
    if-nez v9, :cond_c

    #@7a
    :goto_2
    monitor-exit v8

    #@7b
    return v7

    #@7c
    .line 217
    .end local v3    # "needInput":Z
    :cond_7
    const/4 v3, 0x1

    #@7d
    .restart local v3    # "needInput":Z
    goto :goto_0

    #@7e
    .line 227
    :catch_0
    move-exception v2

    #@7f
    .line 231
    :cond_8
    :try_start_5
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@81
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    #@84
    move-result v9

    #@85
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@87
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    #@8a
    move-result v10

    #@8b
    sub-int v1, v9, v10

    #@8d
    .line 232
    .local v1, "desiredByteCount":I
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@8f
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@92
    move-result v9

    #@93
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@95
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    #@98
    move-result v10

    #@99
    add-int v4, v9, v10

    #@9b
    .line 233
    .local v4, "off":I
    iget-object v9, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@9d
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@9f
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v9, v10, v4, v1}, Ljava/io/InputStream;->read([BII)I

    #@a6
    move-result v0

    #@a7
    .line 235
    .local v0, "actualByteCount":I
    if-ne v0, v7, :cond_9

    #@a9
    .line 236
    const/4 v9, 0x1

    #@aa
    iput-boolean v9, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    #@ac
    goto :goto_1

    #@ad
    .line 238
    :cond_9
    if-eqz v0, :cond_2

    #@af
    .line 241
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@b1
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@b3
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    #@b6
    move-result v10

    #@b7
    add-int/2addr v10, v0

    #@b8
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@bb
    .line 242
    const/4 v3, 0x0

    #@bc
    .line 246
    .end local v0    # "actualByteCount":I
    .end local v1    # "desiredByteCount":I
    .end local v4    # "off":I
    :cond_a
    iget-object v9, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@be
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@c0
    const/4 v11, 0x0

    #@c1
    invoke-virtual {v9, v10, v5, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@c4
    move-result-object v6

    #@c5
    .line 248
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@c8
    move-result v9

    #@c9
    if-eqz v9, :cond_2

    #@cb
    .line 250
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@cd
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    #@d0
    move-result v9

    #@d1
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@d3
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    #@d6
    move-result v10

    #@d7
    if-ne v9, v10, :cond_b

    #@d9
    .line 251
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@db
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    #@de
    .line 252
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@e0
    iget-object v10, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@e2
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    #@e5
    move-result v10

    #@e6
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@e9
    .line 253
    iget-object v9, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@eb
    const/4 v10, 0x0

    #@ec
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@ef
    .line 255
    :cond_b
    const/4 v3, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .line 272
    :cond_c
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f5
    move-result v7

    #@f6
    sub-int/2addr v7, p2

    #@f7
    goto :goto_2
.end method

.method public ready()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 295
    iget-object v3, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 296
    :try_start_0
    iget-object v4, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@7
    if-nez v4, :cond_0

    #@9
    .line 297
    new-instance v1, Ljava/io/IOException;

    #@b
    const-string/jumbo v2, "InputStreamReader is closed"

    #@e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 295
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v3

    #@14
    throw v1

    #@15
    .line 300
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    iget-object v4, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    #@1f
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v4

    #@23
    if-lez v4, :cond_2

    #@25
    :cond_1
    :goto_0
    monitor-exit v3

    #@26
    return v1

    #@27
    :cond_2
    move v1, v2

    #@28
    goto :goto_0

    #@29
    .line 301
    :catch_0
    move-exception v0

    #@2a
    .local v0, "e":Ljava/io/IOException;
    monitor-exit v3

    #@2b
    .line 302
    return v2
.end method
