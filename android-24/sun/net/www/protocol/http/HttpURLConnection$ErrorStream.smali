.class Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorStream"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field is:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 3235
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 3236
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@5
    .line 3237
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@8
    .line 3235
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 3240
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 3241
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@5
    .line 3242
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@7
    .line 3240
    return-void
.end method

.method public static getErrorStream(Ljava/io/InputStream;JLsun/net/www/http/HttpClient;)Ljava/io/InputStream;
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "cl"    # J
    .param p3, "http"    # Lsun/net/www/http/HttpClient;

    #@0
    .prologue
    .line 3250
    const-wide/16 v14, 0x0

    #@2
    cmp-long v13, p1, v14

    #@4
    if-nez v13, :cond_0

    #@6
    .line 3251
    const/4 v13, 0x0

    #@7
    return-object v13

    #@8
    .line 3257
    :cond_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lsun/net/NetworkClient;->getReadTimeout()I

    #@b
    move-result v11

    #@c
    .line 3258
    .local v11, "oldTimeout":I
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    #@f
    move-result v13

    #@10
    div-int/lit8 v13, v13, 0x5

    #@12
    move-object/from16 v0, p3

    #@14
    invoke-virtual {v0, v13}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    #@17
    .line 3260
    const-wide/16 v6, 0x0

    #@19
    .line 3261
    .local v6, "expected":J
    const/4 v9, 0x0

    #@1a
    .line 3263
    .local v9, "isChunked":Z
    const-wide/16 v14, 0x0

    #@1c
    cmp-long v13, p1, v14

    #@1e
    if-gez v13, :cond_2

    #@20
    .line 3264
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get0()I

    #@23
    move-result v13

    #@24
    int-to-long v6, v13

    #@25
    .line 3265
    const/4 v9, 0x1

    #@26
    .line 3269
    :goto_0
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get0()I

    #@29
    move-result v13

    #@2a
    int-to-long v14, v13

    #@2b
    cmp-long v13, v6, v14

    #@2d
    if-gtz v13, :cond_9

    #@2f
    .line 3270
    long-to-int v5, v6

    #@30
    .line 3271
    .local v5, "exp":I
    new-array v2, v5, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@32
    .line 3272
    .local v2, "buffer":[B
    const/4 v3, 0x0

    #@33
    .local v3, "count":I
    const/4 v12, 0x0

    #@34
    .local v12, "time":I
    const/4 v10, 0x0

    #@35
    .line 3276
    .local v10, "len":I
    :goto_1
    :try_start_1
    array-length v13, v2

    #@36
    sub-int/2addr v13, v3

    #@37
    .line 3275
    move-object/from16 v0, p0

    #@39
    invoke-virtual {v0, v2, v3, v13}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    move-result v10

    #@3d
    .line 3277
    if-gez v10, :cond_4

    #@3f
    .line 3278
    if-eqz v9, :cond_3

    #@41
    .line 3296
    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    #@43
    invoke-virtual {v0, v11}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@46
    .line 3300
    if-nez v3, :cond_5

    #@48
    .line 3304
    const/4 v13, 0x0

    #@49
    return-object v13

    #@4a
    .line 3267
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v5    # "exp":I
    .end local v10    # "len":I
    .end local v12    # "time":I
    :cond_2
    move-wide/from16 v6, p1

    #@4c
    goto :goto_0

    #@4d
    .line 3285
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v5    # "exp":I
    .restart local v10    # "len":I
    .restart local v12    # "time":I
    :cond_3
    :try_start_3
    new-instance v13, Ljava/io/IOException;

    #@4f
    new-instance v14, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v15, "the server closes before sending "

    #@57
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    move-wide/from16 v0, p1

    #@5d
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v14

    #@61
    .line 3287
    const-string/jumbo v15, " bytes of data"

    #@64
    .line 3285
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v14

    #@68
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v14

    #@6c
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v13
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@70
    .line 3290
    :catch_0
    move-exception v4

    #@71
    .line 3291
    .local v4, "ex":Ljava/net/SocketTimeoutException;
    :try_start_4
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    #@74
    move-result v13

    #@75
    div-int/lit8 v13, v13, 0x5

    #@77
    add-int/2addr v12, v13

    #@78
    .line 3293
    .end local v4    # "ex":Ljava/net/SocketTimeoutException;
    :goto_2
    if-ge v3, v5, :cond_1

    #@7a
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-get2()I

    #@7d
    move-result v13

    #@7e
    if-ge v12, v13, :cond_1

    #@80
    goto :goto_1

    #@81
    .line 3289
    :cond_4
    add-int/2addr v3, v10

    #@82
    goto :goto_2

    #@83
    .line 3305
    :cond_5
    int-to-long v14, v3

    #@84
    cmp-long v13, v14, v6

    #@86
    if-nez v13, :cond_6

    #@88
    if-eqz v9, :cond_7

    #@8a
    :cond_6
    if-eqz v9, :cond_8

    #@8c
    if-gez v10, :cond_8

    #@8e
    .line 3308
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    #@91
    .line 3309
    new-instance v13, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;

    #@93
    const/4 v14, 0x0

    #@94
    invoke-static {v2, v14, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@97
    move-result-object v14

    #@98
    invoke-direct {v13, v14}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;-><init>(Ljava/nio/ByteBuffer;)V

    #@9b
    return-object v13

    #@9c
    .line 3312
    :cond_8
    new-instance v13, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;

    #@9e
    .line 3313
    const/4 v14, 0x0

    #@9f
    invoke-static {v2, v14, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@a2
    move-result-object v14

    #@a3
    .line 3312
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v13, v14, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;-><init>(Ljava/nio/ByteBuffer;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@a8
    return-object v13

    #@a9
    .line 3316
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v5    # "exp":I
    .end local v10    # "len":I
    .end local v12    # "time":I
    :cond_9
    const/4 v13, 0x0

    #@aa
    return-object v13

    #@ab
    .line 3317
    .end local v6    # "expected":J
    .end local v9    # "isChunked":Z
    .end local v11    # "oldTimeout":I
    :catch_1
    move-exception v8

    #@ac
    .line 3319
    .local v8, "ioex":Ljava/io/IOException;
    const/4 v13, 0x0

    #@ad
    return-object v13
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3325
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3326
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@6
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3328
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@10
    move-result v0

    #@11
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@13
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3361
    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@3
    .line 3362
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3363
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@c
    .line 3360
    :cond_0
    return-void
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
    .line 3333
    const/4 v2, 0x1

    #@1
    new-array v0, v2, [B

    #@3
    .line 3334
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->read([B)I

    #@6
    move-result v1

    #@7
    .line 3335
    .local v1, "ret":I
    const/4 v2, -0x1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .end local v1    # "ret":I
    :goto_0
    return v1

    #@b
    .restart local v1    # "ret":I
    :cond_0
    const/4 v2, 0x0

    #@c
    aget-byte v2, v0, v2

    #@e
    and-int/lit16 v1, v2, 0xff

    #@10
    goto :goto_0
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
    .line 3340
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 3
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
    .line 3345
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    #@5
    move-result v0

    #@6
    .line 3346
    .local v0, "rem":I
    if-lez v0, :cond_1

    #@8
    .line 3347
    if-ge v0, p3, :cond_0

    #@a
    move v1, v0

    #@b
    .line 3348
    .local v1, "ret":I
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->buffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@10
    .line 3349
    return v1

    #@11
    .line 3347
    .end local v1    # "ret":I
    :cond_0
    move v1, p3

    #@12
    .restart local v1    # "ret":I
    goto :goto_0

    #@13
    .line 3351
    .end local v1    # "ret":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@15
    if-nez v2, :cond_2

    #@17
    .line 3352
    const/4 v2, -0x1

    #@18
    return v2

    #@19
    .line 3354
    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->is:Ljava/io/InputStream;

    #@1b
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@1e
    move-result v2

    #@1f
    return v2
.end method
