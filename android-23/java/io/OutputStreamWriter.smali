.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 55
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 44
    const/16 v1, 0x2000

    #@5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@b
    .line 76
    if-nez p2, :cond_0

    #@d
    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "charsetName == null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 79
    :cond_0
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@18
    .line 81
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 85
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@24
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@26
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@29
    .line 86
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@2b
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@2d
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@30
    .line 74
    return-void

    #@31
    .line 82
    :catch_0
    move-exception v0

    #@32
    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@34
    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 44
    const/16 v0, 0x2000

    #@5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@b
    .line 101
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@d
    .line 102
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@13
    .line 103
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@15
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@17
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@1a
    .line 104
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@1c
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@1e
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@21
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 44
    const/16 v0, 0x2000

    #@5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@b
    .line 119
    if-nez p2, :cond_0

    #@d
    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "charsetEncoder == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 123
    :cond_0
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@18
    .line 124
    iput-object p2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@1a
    .line 117
    return-void
.end method

.method private checkStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 226
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "OutputStreamWriter is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 224
    :cond_0
    return-void
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .locals 4
    .param p1, "chars"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 181
    :goto_0
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@3
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@5
    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@8
    move-result-object v0

    #@9
    .line 182
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 184
    invoke-direct {p0, v3}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    #@12
    goto :goto_0

    #@13
    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 187
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    #@1c
    .line 179
    :cond_1
    return-void
.end method

.method private drainEncoder()V
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
    .line 198
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@4
    move-result-object v0

    #@5
    .line 200
    .local v0, "chars":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@7
    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@9
    const/4 v4, 0x1

    #@a
    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@d
    move-result-object v1

    #@e
    .line 201
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 202
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@17
    .line 213
    :cond_0
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@19
    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@1e
    move-result-object v1

    #@1f
    .line 214
    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_3

    #@25
    .line 215
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 216
    invoke-direct {p0, v5}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    #@2e
    .line 217
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@30
    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@32
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@35
    move-result-object v1

    #@36
    goto :goto_1

    #@37
    .line 203
    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_0

    #@3d
    .line 204
    invoke-direct {p0, v5}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    #@40
    goto :goto_0

    #@41
    .line 219
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@44
    goto :goto_1

    #@45
    .line 193
    :cond_3
    return-void
.end method

.method private flushBytes(Z)V
    .locals 5
    .param p1, "flushUnderlyingStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 166
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    #@6
    .line 167
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@b
    move-result v0

    #@c
    .line 168
    .local v0, "position":I
    if-lez v0, :cond_0

    #@e
    .line 169
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@13
    .line 170
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@15
    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@1d
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@20
    move-result v4

    #@21
    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    #@24
    .line 171
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    #@26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@29
    .line 173
    :cond_0
    if-eqz p1, :cond_1

    #@2b
    .line 174
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@2d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_1
    monitor-exit v2

    #@31
    .line 164
    return-void

    #@32
    .line 165
    .end local v0    # "position":I
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1
.end method


# virtual methods
.method checkError()Z
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 142
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->drainEncoder()V

    #@a
    .line 143
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    #@e
    .line 144
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@13
    .line 145
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@16
    .line 146
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 139
    return-void

    #@1b
    .line 140
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
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
    .line 161
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->flushBytes(Z)V

    #@4
    .line 160
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 238
    return-object v1

    #@6
    .line 240
    :cond_0
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@8
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 287
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    #@6
    .line 288
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [C

    #@9
    int-to-char v3, p1

    #@a
    const/4 v4, 0x0

    #@b
    aput-char v3, v1, v4

    #@d
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    #@10
    move-result-object v0

    #@11
    .line 289
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 285
    return-void

    #@16
    .line 286
    .end local v0    # "chars":Ljava/nio/CharBuffer;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 316
    if-gez p3, :cond_0

    #@5
    .line 317
    :try_start_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@7
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@a
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 315
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v2

    #@d
    throw v1

    #@e
    .line 319
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 320
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v3, "str == null"

    #@15
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 322
    :cond_1
    or-int v1, p2, p3

    #@1b
    if-ltz v1, :cond_2

    #@1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    sub-int/2addr v1, p3

    #@22
    if-le p2, v1, :cond_3

    #@24
    .line 323
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@26
    invoke-direct {v1, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@29
    throw v1

    #@2a
    .line 325
    :cond_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    #@2d
    .line 326
    add-int v1, p3, p2

    #@2f
    invoke-static {p1, p2, v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    #@32
    move-result-object v0

    #@33
    .line 327
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v2

    #@37
    .line 314
    return-void
.end method

.method public write([CII)V
    .locals 3
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
    .line 265
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 266
    :try_start_0
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    #@6
    .line 267
    array-length v1, p1

    #@7
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@a
    .line 268
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@d
    move-result-object v0

    #@e
    .line 269
    .local v0, "chars":Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 264
    return-void

    #@13
    .line 265
    .end local v0    # "chars":Ljava/nio/CharBuffer;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method
