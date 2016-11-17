.class public Lorg/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bof:Z

.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 90
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    #@7
    .line 93
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@9
    .line 96
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@b
    .line 98
    new-array v0, v1, [Lorg/apache/http/Header;

    #@d
    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    #@f
    .line 102
    if-nez p1, :cond_0

    #@11
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Session input buffer may not be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 105
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@1c
    .line 106
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@1e
    .line 107
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@20
    const/16 v1, 0x10

    #@22
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@25
    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@27
    .line 100
    return-void
.end method

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    const/16 v1, 0x400

    #@2
    new-array v0, v1, [B

    #@4
    .line 294
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@7
    move-result v1

    #@8
    if-gez v1, :cond_0

    #@a
    .line 291
    return-void
.end method

.method private getChunkSize()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    iget-boolean v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    #@2
    if-nez v5, :cond_1

    #@4
    .line 216
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@6
    invoke-interface {v5}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@9
    move-result v0

    #@a
    .line 217
    .local v0, "cr":I
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@c
    invoke-interface {v5}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@f
    move-result v3

    #@10
    .line 218
    .local v3, "lf":I
    const/16 v5, 0xd

    #@12
    if-ne v0, v5, :cond_0

    #@14
    const/16 v5, 0xa

    #@16
    if-eq v3, v5, :cond_1

    #@18
    .line 219
    :cond_0
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    #@1a
    .line 220
    const-string/jumbo v6, "CRLF expected at end of chunk"

    #@1d
    .line 219
    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 224
    .end local v0    # "cr":I
    .end local v3    # "lf":I
    :cond_1
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@23
    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@26
    .line 225
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@28
    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@2a
    invoke-interface {v5, v6}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    #@2d
    move-result v2

    #@2e
    .line 226
    .local v2, "i":I
    const/4 v5, -0x1

    #@2f
    if-ne v2, v5, :cond_2

    #@31
    .line 227
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    #@33
    .line 228
    const-string/jumbo v6, "Chunked stream ended unexpectedly"

    #@36
    .line 227
    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    #@39
    throw v5

    #@3a
    .line 230
    :cond_2
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@3c
    const/16 v6, 0x3b

    #@3e
    invoke-virtual {v5, v6}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    #@41
    move-result v4

    #@42
    .line 231
    .local v4, "separator":I
    if-gez v4, :cond_3

    #@44
    .line 232
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@46
    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@49
    move-result v4

    #@4a
    .line 235
    :cond_3
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@4c
    const/4 v6, 0x0

    #@4d
    invoke-virtual {v5, v6, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    const/16 v6, 0x10

    #@53
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result v5

    #@57
    return v5

    #@58
    .line 236
    :catch_0
    move-exception v1

    #@59
    .line 237
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/http/MalformedChunkCodingException;

    #@5b
    const-string/jumbo v6, "Bad chunk header"

    #@5e
    invoke-direct {v5, v6}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    #@61
    throw v5
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 188
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->getChunkSize()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@7
    .line 189
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@9
    if-gez v0, :cond_0

    #@b
    .line 190
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    #@d
    const-string/jumbo v1, "Negative chunk size"

    #@10
    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 192
    :cond_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    #@16
    .line 193
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@18
    .line 194
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 195
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@1f
    .line 196
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    #@22
    .line 187
    :cond_1
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v4, -0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 247
    invoke-static {v2, v3, v4, v5}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 245
    return-void

    #@c
    .line 249
    :catch_0
    move-exception v0

    #@d
    .line 250
    .local v0, "e":Lorg/apache/http/HttpException;
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Invalid footer: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 251
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 252
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Lorg/apache/http/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    #@2d
    .line 253
    throw v1
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
    const/4 v1, 0x1

    #@1
    .line 264
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 266
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 267
    invoke-static {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 270
    :cond_0
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@e
    .line 271
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@10
    .line 263
    :cond_1
    return-void

    #@11
    .line 269
    :catchall_0
    move-exception v0

    #@12
    .line 270
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@14
    .line 271
    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@16
    .line 269
    throw v0
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lorg/apache/http/Header;

    #@8
    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 123
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 124
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Attempted read from closed stream."

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 126
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 127
    return v2

    #@13
    .line 129
    :cond_1
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@15
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@17
    if-lt v0, v1, :cond_2

    #@19
    .line 130
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    #@1c
    .line 131
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 132
    return v2

    #@21
    .line 135
    :cond_2
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@27
    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@29
    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 152
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 153
    new-instance v1, Ljava/io/IOException;

    #@7
    const-string/jumbo v2, "Attempted read from closed stream."

    #@a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 156
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 157
    return v3

    #@13
    .line 159
    :cond_1
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@15
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@17
    if-lt v1, v2, :cond_2

    #@19
    .line 160
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    #@1c
    .line 161
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 162
    return v3

    #@21
    .line 165
    :cond_2
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    #@23
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@25
    sub-int/2addr v1, v2

    #@26
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@29
    move-result p3

    #@2a
    .line 166
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    #@2c
    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    #@2f
    move-result v0

    #@30
    .line 167
    .local v0, "count":I
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@32
    add-int/2addr v1, v0

    #@33
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    #@35
    .line 168
    return v0
.end method
