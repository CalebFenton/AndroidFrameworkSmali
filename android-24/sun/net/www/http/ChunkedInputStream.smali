.class public Lsun/net/www/http/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"

# interfaces
.implements Lsun/net/www/http/Hurryable;


# static fields
.field private static final MAX_CHUNK_HEADER_SIZE:I = 0x802

.field static final STATE_AWAITING_CHUNK_EOL:I = 0x3

.field static final STATE_AWAITING_CHUNK_HEADER:I = 0x1

.field static final STATE_AWAITING_TRAILERS:I = 0x4

.field static final STATE_DONE:I = 0x5

.field static final STATE_READING_CHUNK:I = 0x2


# instance fields
.field private chunkCount:I

.field private chunkData:[B

.field private chunkPos:I

.field private chunkRead:I

.field private chunkSize:I

.field private closed:Z

.field private error:Z

.field private hc:Lsun/net/www/http/HttpClient;

.field private in:Ljava/io/InputStream;

.field private rawCount:I

.field private rawData:[B

.field private rawPos:I

.field private responses:Lsun/net/www/MessageHeader;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/www/http/HttpClient;Lsun/net/www/MessageHeader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "hc"    # Lsun/net/www/http/HttpClient;
    .param p3, "responses"    # Lsun/net/www/MessageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 81
    const/16 v0, 0x1000

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@9
    .line 101
    const/16 v0, 0x20

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@f
    .line 627
    iput-object p1, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@11
    .line 628
    iput-object p3, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    #@13
    .line 629
    iput-object p2, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    #@15
    .line 635
    const/4 v0, 0x1

    #@16
    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@18
    .line 624
    return-void
.end method

.method private closeUnderlying()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 214
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 215
    return-void

    #@6
    .line 218
    :cond_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@8
    if-nez v0, :cond_2

    #@a
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@c
    const/4 v1, 0x5

    #@d
    if-ne v0, v1, :cond_2

    #@f
    .line 219
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    #@11
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->finished()V

    #@14
    .line 226
    :cond_1
    :goto_0
    iput-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@16
    .line 213
    return-void

    #@17
    .line 221
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedInputStream;->hurry()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 222
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    #@1f
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    #@22
    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 174
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 172
    :cond_0
    return-void
.end method

.method private ensureRawAvailable(I)V
    .locals 6
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 186
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@3
    add-int/2addr v2, p1

    #@4
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@6
    array-length v3, v3

    #@7
    if-le v2, v3, :cond_2

    #@9
    .line 187
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@b
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@d
    sub-int v1, v2, v3

    #@f
    .line 188
    .local v1, "used":I
    add-int v2, v1, p1

    #@11
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@13
    array-length v3, v3

    #@14
    if-le v2, v3, :cond_3

    #@16
    .line 189
    add-int v2, v1, p1

    #@18
    new-array v0, v2, [B

    #@1a
    .line 190
    .local v0, "tmp":[B
    if-lez v1, :cond_0

    #@1c
    .line 191
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@1e
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@20
    invoke-static {v2, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 193
    :cond_0
    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@25
    .line 199
    .end local v0    # "tmp":[B
    :cond_1
    :goto_0
    iput v1, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@27
    .line 200
    iput v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@29
    .line 185
    .end local v1    # "used":I
    :cond_2
    return-void

    #@2a
    .line 195
    .restart local v1    # "used":I
    :cond_3
    if-lez v1, :cond_1

    #@2c
    .line 196
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@2e
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@30
    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@32
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    goto :goto_0
.end method

.method private fastRead([BII)I
    .locals 8
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
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 239
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    #@4
    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@6
    sub-int v3, v4, v5

    #@8
    .line 240
    .local v3, "remaining":I
    if-ge v3, p3, :cond_1

    #@a
    move v0, v3

    #@b
    .line 241
    .local v0, "cnt":I
    :goto_0
    if-lez v0, :cond_3

    #@d
    .line 244
    :try_start_0
    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@f
    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v2

    #@13
    .line 249
    .local v2, "nread":I
    if-lez v2, :cond_2

    #@15
    .line 250
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@17
    add-int/2addr v4, v2

    #@18
    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@1a
    .line 251
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@1c
    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    #@1e
    if-lt v4, v5, :cond_0

    #@20
    .line 252
    const/4 v4, 0x3

    #@21
    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@23
    .line 254
    :cond_0
    return v2

    #@24
    .end local v0    # "cnt":I
    .end local v2    # "nread":I
    :cond_1
    move v0, p3

    #@25
    .line 240
    goto :goto_0

    #@26
    .line 245
    .restart local v0    # "cnt":I
    :catch_0
    move-exception v1

    #@27
    .line 246
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@29
    .line 247
    throw v1

    #@2a
    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "nread":I
    :cond_2
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@2c
    .line 257
    new-instance v4, Ljava/io/IOException;

    #@2e
    const-string/jumbo v5, "Premature EOF"

    #@31
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 259
    .end local v2    # "nread":I
    :cond_3
    return v6
.end method

.method private processRaw()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    :goto_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@2
    const/4 v11, 0x5

    #@3
    if-eq v10, v11, :cond_15

    #@5
    .line 282
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@7
    packed-switch v10, :pswitch_data_0

    #@a
    goto :goto_0

    #@b
    .line 292
    :pswitch_0
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@d
    .line 293
    .local v6, "pos":I
    :cond_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@f
    if-ge v6, v10, :cond_1

    #@11
    .line 294
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@13
    aget-byte v10, v10, v6

    #@15
    const/16 v11, 0xa

    #@17
    if-ne v10, v11, :cond_2

    #@19
    .line 303
    :cond_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@1b
    if-lt v6, v10, :cond_3

    #@1d
    .line 304
    return-void

    #@1e
    .line 297
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@20
    .line 298
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@22
    sub-int v10, v6, v10

    #@24
    const/16 v11, 0x802

    #@26
    if-lt v10, v11, :cond_0

    #@28
    .line 299
    const/4 v10, 0x1

    #@29
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@2b
    .line 300
    new-instance v10, Ljava/io/IOException;

    #@2d
    const-string/jumbo v11, "Chunk header too long"

    #@30
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v10

    #@34
    .line 310
    :cond_3
    new-instance v3, Ljava/lang/String;

    #@36
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@38
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@3a
    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@3c
    sub-int v12, v6, v12

    #@3e
    add-int/lit8 v12, v12, 0x1

    #@40
    const-string/jumbo v13, "US-ASCII"

    #@43
    invoke-direct {v3, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@46
    .line 311
    .local v3, "header":Ljava/lang/String;
    const/4 v4, 0x0

    #@47
    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4a
    move-result v10

    #@4b
    if-ge v4, v10, :cond_4

    #@4d
    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v10

    #@51
    const/16 v11, 0x10

    #@53
    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    #@56
    move-result v10

    #@57
    const/4 v11, -0x1

    #@58
    if-ne v10, v11, :cond_5

    #@5a
    .line 316
    :cond_4
    const/4 v10, 0x0

    #@5b
    :try_start_0
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    const/16 v11, 0x10

    #@61
    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@64
    move-result v10

    #@65
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 326
    add-int/lit8 v10, v6, 0x1

    #@69
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@6b
    .line 327
    const/4 v10, 0x0

    #@6c
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@6e
    .line 332
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    #@70
    if-lez v10, :cond_6

    #@72
    .line 333
    const/4 v10, 0x2

    #@73
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@75
    goto :goto_0

    #@76
    .line 311
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_1

    #@79
    .line 317
    :catch_0
    move-exception v2

    #@7a
    .line 318
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x1

    #@7b
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@7d
    .line 319
    new-instance v10, Ljava/io/IOException;

    #@7f
    const-string/jumbo v11, "Bogus chunk size"

    #@82
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@85
    throw v10

    #@86
    .line 335
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v10, 0x4

    #@87
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@89
    goto/16 :goto_0

    #@8b
    .line 347
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "pos":I
    :pswitch_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@8d
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@8f
    if-lt v10, v11, :cond_7

    #@91
    .line 348
    return-void

    #@92
    .line 355
    :cond_7
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    #@94
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@96
    sub-int/2addr v10, v11

    #@97
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@99
    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@9b
    sub-int/2addr v11, v12

    #@9c
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@9f
    move-result v1

    #@a0
    .line 360
    .local v1, "copyLen":I
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@a2
    array-length v10, v10

    #@a3
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@a5
    add-int/2addr v11, v1

    #@a6
    if-ge v10, v11, :cond_8

    #@a8
    .line 361
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@aa
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@ac
    sub-int v0, v10, v11

    #@ae
    .line 362
    .local v0, "cnt":I
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@b0
    array-length v10, v10

    #@b1
    add-int v11, v0, v1

    #@b3
    if-ge v10, v11, :cond_9

    #@b5
    .line 363
    add-int v10, v0, v1

    #@b7
    new-array v7, v10, [B

    #@b9
    .line 364
    .local v7, "tmp":[B
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@bb
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@bd
    const/4 v12, 0x0

    #@be
    invoke-static {v10, v11, v7, v12, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c1
    .line 365
    iput-object v7, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@c3
    .line 369
    .end local v7    # "tmp":[B
    :goto_2
    const/4 v10, 0x0

    #@c4
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@c6
    .line 370
    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@c8
    .line 377
    .end local v0    # "cnt":I
    :cond_8
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@ca
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@cc
    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@ce
    iget v13, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@d0
    invoke-static {v10, v11, v12, v13, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d3
    .line 378
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@d5
    add-int/2addr v10, v1

    #@d6
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@d8
    .line 379
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@da
    add-int/2addr v10, v1

    #@db
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@dd
    .line 380
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@df
    add-int/2addr v10, v1

    #@e0
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@e2
    .line 386
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    #@e4
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    #@e6
    sub-int/2addr v10, v11

    #@e7
    if-gtz v10, :cond_a

    #@e9
    .line 387
    const/4 v10, 0x3

    #@ea
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@ec
    goto/16 :goto_0

    #@ee
    .line 367
    .restart local v0    # "cnt":I
    :cond_9
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@f0
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@f2
    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@f4
    const/4 v13, 0x0

    #@f5
    invoke-static {v10, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f8
    goto :goto_2

    #@f9
    .line 389
    .end local v0    # "cnt":I
    :cond_a
    return-void

    #@fa
    .line 399
    .end local v1    # "copyLen":I
    :pswitch_2
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@fc
    add-int/lit8 v10, v10, 0x1

    #@fe
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@100
    if-lt v10, v11, :cond_b

    #@102
    .line 400
    return-void

    #@103
    .line 403
    :cond_b
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@105
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@107
    aget-byte v10, v10, v11

    #@109
    const/16 v11, 0xd

    #@10b
    if-eq v10, v11, :cond_c

    #@10d
    .line 404
    const/4 v10, 0x1

    #@10e
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@110
    .line 405
    new-instance v10, Ljava/io/IOException;

    #@112
    const-string/jumbo v11, "missing CR"

    #@115
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@118
    throw v10

    #@119
    .line 407
    :cond_c
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@11b
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@11d
    add-int/lit8 v11, v11, 0x1

    #@11f
    aget-byte v10, v10, v11

    #@121
    const/16 v11, 0xa

    #@123
    if-eq v10, v11, :cond_d

    #@125
    .line 408
    const/4 v10, 0x1

    #@126
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@128
    .line 409
    new-instance v10, Ljava/io/IOException;

    #@12a
    const-string/jumbo v11, "missing LF"

    #@12d
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@130
    throw v10

    #@131
    .line 411
    :cond_d
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@133
    add-int/lit8 v10, v10, 0x2

    #@135
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@137
    .line 416
    const/4 v10, 0x1

    #@138
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@13a
    goto/16 :goto_0

    #@13c
    .line 429
    :pswitch_3
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@13e
    .line 430
    .restart local v6    # "pos":I
    :goto_3
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@140
    if-ge v6, v10, :cond_e

    #@142
    .line 431
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@144
    aget-byte v10, v10, v6

    #@146
    const/16 v11, 0xa

    #@148
    if-ne v10, v11, :cond_f

    #@14a
    .line 436
    :cond_e
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@14c
    if-lt v6, v10, :cond_10

    #@14e
    .line 437
    return-void

    #@14f
    .line 434
    :cond_f
    add-int/lit8 v6, v6, 0x1

    #@151
    goto :goto_3

    #@152
    .line 440
    :cond_10
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@154
    if-ne v6, v10, :cond_11

    #@156
    .line 441
    const/4 v10, 0x1

    #@157
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@159
    .line 442
    new-instance v10, Ljava/io/IOException;

    #@15b
    const-string/jumbo v11, "LF should be proceeded by CR"

    #@15e
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@161
    throw v10

    #@162
    .line 444
    :cond_11
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@164
    add-int/lit8 v11, v6, -0x1

    #@166
    aget-byte v10, v10, v11

    #@168
    const/16 v11, 0xd

    #@16a
    if-eq v10, v11, :cond_12

    #@16c
    .line 445
    const/4 v10, 0x1

    #@16d
    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@16f
    .line 446
    new-instance v10, Ljava/io/IOException;

    #@171
    const-string/jumbo v11, "LF should be proceeded by CR"

    #@174
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@177
    throw v10

    #@178
    .line 452
    :cond_12
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@17a
    add-int/lit8 v10, v10, 0x1

    #@17c
    if-ne v6, v10, :cond_13

    #@17e
    .line 454
    const/4 v10, 0x5

    #@17f
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@181
    .line 455
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    #@184
    .line 457
    return-void

    #@185
    .line 464
    :cond_13
    new-instance v8, Ljava/lang/String;

    #@187
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@189
    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@18b
    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@18d
    sub-int v12, v6, v12

    #@18f
    const-string/jumbo v13, "US-ASCII"

    #@192
    invoke-direct {v8, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@195
    .line 465
    .local v8, "trailer":Ljava/lang/String;
    const/16 v10, 0x3a

    #@197
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    #@19a
    move-result v4

    #@19b
    .line 466
    .restart local v4    # "i":I
    const/4 v10, -0x1

    #@19c
    if-ne v4, v10, :cond_14

    #@19e
    .line 467
    new-instance v10, Ljava/io/IOException;

    #@1a0
    const-string/jumbo v11, "Malformed tailer - format should be key:value"

    #@1a3
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a6
    throw v10

    #@1a7
    .line 469
    :cond_14
    const/4 v10, 0x0

    #@1a8
    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ab
    move-result-object v10

    #@1ac
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1af
    move-result-object v5

    #@1b0
    .line 470
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    #@1b2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@1b5
    move-result v11

    #@1b6
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b9
    move-result-object v10

    #@1ba
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1bd
    move-result-object v9

    #@1be
    .line 472
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    #@1c0
    invoke-virtual {v10, v5, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@1c3
    .line 477
    add-int/lit8 v10, v6, 0x1

    #@1c5
    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    #@1c7
    goto/16 :goto_0

    #@1c9
    .line 276
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "pos":I
    .end local v8    # "trailer":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_15
    return-void

    #@1ca
    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readAhead(Z)I
    .locals 3
    .param p1, "allowBlocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 593
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@3
    const/4 v1, 0x5

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 594
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 600
    :cond_0
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@a
    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@c
    if-lt v0, v1, :cond_1

    #@e
    .line 601
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@10
    .line 602
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@12
    .line 608
    :cond_1
    if-eqz p1, :cond_2

    #@14
    .line 609
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->readAheadBlocking()I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 611
    :cond_2
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->readAheadNonBlocking()I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method private readAheadBlocking()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 540
    :cond_0
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@3
    const/4 v3, 0x5

    #@4
    if-ne v2, v3, :cond_1

    #@6
    .line 541
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 549
    :cond_1
    const/16 v2, 0x20

    #@a
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    #@d
    .line 552
    :try_start_0
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@f
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@11
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@13
    iget-object v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@15
    array-length v5, v5

    #@16
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@18
    sub-int/2addr v5, v6

    #@19
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v1

    #@1d
    .line 563
    .local v1, "nread":I
    if-gez v1, :cond_2

    #@1f
    .line 564
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@21
    .line 565
    new-instance v2, Ljava/io/IOException;

    #@23
    const-string/jumbo v3, "Premature EOF"

    #@26
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 553
    .end local v1    # "nread":I
    :catch_0
    move-exception v0

    #@2b
    .line 554
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@2d
    .line 555
    throw v0

    #@2e
    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "nread":I
    :cond_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@30
    add-int/2addr v2, v1

    #@31
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@33
    .line 572
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    #@36
    .line 574
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@38
    if-lez v2, :cond_0

    #@3a
    .line 579
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@3c
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@3e
    sub-int/2addr v2, v3

    #@3f
    return v2
.end method

.method private readAheadNonBlocking()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 498
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@3
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    #@6
    move-result v0

    #@7
    .line 499
    .local v0, "avail":I
    if-lez v0, :cond_1

    #@9
    .line 502
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    #@c
    .line 506
    :try_start_0
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@e
    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    #@10
    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@12
    invoke-virtual {v3, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    .line 511
    .local v2, "nread":I
    if-gez v2, :cond_0

    #@18
    .line 512
    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@1a
    .line 513
    const/4 v3, -0x1

    #@1b
    return v3

    #@1c
    .line 507
    .end local v2    # "nread":I
    :catch_0
    move-exception v1

    #@1d
    .line 508
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    #@1f
    .line 509
    throw v1

    #@20
    .line 515
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "nread":I
    :cond_0
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@22
    add-int/2addr v3, v2

    #@23
    iput v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    #@25
    .line 520
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    #@28
    .line 526
    .end local v2    # "nread":I
    :cond_1
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@2a
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@2c
    sub-int/2addr v3, v4

    #@2d
    return v3
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 718
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    #@5
    .line 720
    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@7
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    sub-int v0, v1, v2

    #@b
    .line 721
    .local v0, "avail":I
    if-lez v0, :cond_0

    #@d
    monitor-exit p0

    #@e
    .line 722
    return v0

    #@f
    .line 725
    :cond_0
    const/4 v1, 0x0

    #@10
    :try_start_1
    invoke-direct {p0, v1}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v0

    #@14
    .line 727
    if-gez v0, :cond_1

    #@16
    monitor-exit p0

    #@17
    .line 728
    return v3

    #@18
    :cond_1
    monitor-exit p0

    #@19
    .line 730
    return v0

    #@1a
    .end local v0    # "avail":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 746
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 747
    return-void

    #@7
    .line 749
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    #@a
    .line 750
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 745
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized hurry()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 763
    :try_start_0
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v2, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 764
    return v1

    #@c
    .line 768
    :cond_1
    const/4 v2, 0x0

    #@d
    :try_start_1
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 773
    :try_start_2
    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    if-eqz v2, :cond_2

    #@14
    monitor-exit p0

    #@15
    .line 774
    return v1

    #@16
    .line 769
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Ljava/lang/Exception;
    monitor-exit p0

    #@18
    .line 770
    return v1

    #@19
    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    const/4 v3, 0x5

    #@1c
    if-ne v2, v3, :cond_3

    #@1e
    const/4 v1, 0x1

    #@1f
    :cond_3
    monitor-exit p0

    #@20
    return v1

    #@21
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 649
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    #@4
    .line 650
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@6
    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 651
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_0

    #@11
    .line 652
    const/4 v0, -0x1

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    .line 655
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@16
    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@18
    add-int/lit8 v2, v1, 0x1

    #@1a
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@1c
    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    and-int/lit16 v0, v0, 0xff

    #@20
    monitor-exit p0

    #@21
    return v0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 5
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
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 673
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    #@5
    .line 674
    if-ltz p2, :cond_0

    #@7
    array-length v2, p1

    #@8
    if-le p2, v2, :cond_1

    #@a
    .line 676
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 674
    :cond_1
    if-ltz p3, :cond_0

    #@15
    .line 675
    add-int v2, p2, p3

    #@17
    :try_start_1
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    if-gt v2, v3, :cond_0

    #@1a
    add-int v2, p2, p3

    #@1c
    if-ltz v2, :cond_0

    #@1e
    .line 677
    if-nez p3, :cond_2

    #@20
    monitor-exit p0

    #@21
    .line 678
    return v4

    #@22
    .line 681
    :cond_2
    :try_start_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    #@24
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@26
    sub-int v0, v2, v3

    #@28
    .line 682
    .local v0, "avail":I
    if-gtz v0, :cond_4

    #@2a
    .line 688
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    #@2c
    const/4 v3, 0x2

    #@2d
    if-ne v2, v3, :cond_3

    #@2f
    .line 689
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/ChunkedInputStream;->fastRead([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    move-result v2

    #@33
    monitor-exit p0

    #@34
    return v2

    #@35
    .line 696
    :cond_3
    const/4 v2, 0x1

    #@36
    :try_start_3
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    move-result v0

    #@3a
    .line 697
    if-gez v0, :cond_4

    #@3c
    .line 698
    const/4 v2, -0x1

    #@3d
    monitor-exit p0

    #@3e
    return v2

    #@3f
    .line 701
    :cond_4
    if-ge v0, p3, :cond_5

    #@41
    move v1, v0

    #@42
    .line 702
    .local v1, "cnt":I
    :goto_0
    :try_start_4
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    #@44
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@46
    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 703
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    #@4b
    add-int/2addr v2, v1

    #@4c
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    monitor-exit p0

    #@4f
    .line 705
    return v1

    #@50
    .line 701
    .end local v1    # "cnt":I
    :cond_5
    move v1, p3

    #@51
    .restart local v1    # "cnt":I
    goto :goto_0
.end method
