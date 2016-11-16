.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# instance fields
.field protected final buf:[B

.field private closed:Z

.field protected final inf:Ljava/util/zip/Inflater;

.field private usesDefaultInflater:Z

.field private final wbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    #@8
    .line 78
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    #@b
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 90
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    #@5
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;
    .param p3, "bufLen"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@4
    .line 52
    const/4 v0, 0x1

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    #@9
    .line 55
    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    #@b
    .line 58
    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@d
    .line 107
    if-nez p1, :cond_0

    #@f
    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "Null output"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 109
    :cond_0
    if-nez p2, :cond_1

    #@1a
    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "Null inflater"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 111
    :cond_1
    if-gtz p3, :cond_2

    #@25
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "Buffer size < 1"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 115
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@30
    .line 116
    new-array v0, p3, [B

    #@32
    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@34
    .line 103
    return-void
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
    .line 64
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 65
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 126
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 131
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@d
    .line 132
    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@f
    .line 125
    :cond_0
    return-void

    #@10
    .line 130
    :catchall_0
    move-exception v0

    #@11
    .line 131
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@13
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@16
    .line 132
    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    #@18
    .line 130
    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    #@3
    .line 186
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->flush()V

    #@6
    .line 187
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 188
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@c
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    #@f
    .line 182
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    #@3
    .line 148
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@5
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_1

    #@b
    .line 150
    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@d
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_0

    #@13
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@15
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 162
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    #@1e
    .line 144
    :cond_1
    return-void

    #@1f
    .line 154
    :cond_2
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@21
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@23
    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@25
    array-length v5, v5

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {v3, v4, v6, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@2a
    move-result v2

    #@2b
    .line 155
    .local v2, "n":I
    const/4 v3, 0x1

    #@2c
    if-lt v2, v3, :cond_0

    #@2e
    .line 160
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@30
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@32
    const/4 v5, 0x0

    #@33
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_0

    #@37
    .line 163
    .end local v2    # "n":I
    :catch_0
    move-exception v0

    #@38
    .line 165
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 166
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_3

    #@3e
    .line 167
    const-string/jumbo v1, "Invalid ZLIB data format"

    #@41
    .line 169
    :cond_3
    new-instance v3, Ljava/util/zip/ZipException;

    #@43
    invoke-direct {v3, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 203
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    #@3
    int-to-byte v1, p1

    #@4
    aput-byte v1, v0, v2

    #@6
    .line 204
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    #@c
    .line 201
    return-void
.end method

.method public write([BII)V
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
    .line 223
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    #@3
    .line 224
    if-nez p1, :cond_0

    #@5
    .line 225
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v5, "Null buffer for read"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 226
    :cond_0
    if-ltz p2, :cond_1

    #@10
    if-gez p3, :cond_2

    #@12
    .line 227
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v4

    #@18
    .line 226
    :cond_2
    array-length v4, p1

    #@19
    sub-int/2addr v4, p2

    #@1a
    if-gt p3, v4, :cond_1

    #@1c
    .line 228
    if-nez p3, :cond_3

    #@1e
    .line 229
    return-void

    #@1f
    .line 238
    :cond_3
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@21
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_6

    #@27
    .line 241
    const/4 v4, 0x1

    #@28
    if-ge p3, v4, :cond_5

    #@2a
    .line 221
    :cond_4
    return-void

    #@2b
    .line 245
    :cond_5
    const/16 v4, 0x200

    #@2d
    if-ge p3, v4, :cond_9

    #@2f
    move v3, p3

    #@30
    .line 246
    .local v3, "part":I
    :goto_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@32
    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@35
    .line 247
    add-int/2addr p2, v3

    #@36
    .line 248
    sub-int/2addr p3, v3

    #@37
    .line 253
    .end local v3    # "part":I
    :cond_6
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@39
    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@3b
    iget-object v6, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@3d
    array-length v6, v6

    #@3e
    const/4 v7, 0x0

    #@3f
    invoke-virtual {v4, v5, v7, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@42
    move-result v2

    #@43
    .line 254
    .local v2, "n":I
    if-lez v2, :cond_7

    #@45
    .line 255
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    #@47
    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-virtual {v4, v5, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    #@4d
    .line 257
    :cond_7
    if-gtz v2, :cond_6

    #@4f
    .line 260
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@51
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    #@54
    move-result v4

    #@55
    if-nez v4, :cond_4

    #@57
    .line 263
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    #@59
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_3

    #@5f
    .line 264
    new-instance v4, Ljava/util/zip/ZipException;

    #@61
    const-string/jumbo v5, "ZLIB dictionary missing"

    #@64
    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    .line 267
    .end local v2    # "n":I
    :catch_0
    move-exception v0

    #@69
    .line 269
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 270
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_8

    #@6f
    .line 271
    const-string/jumbo v1, "Invalid ZLIB data format"

    #@72
    .line 273
    :cond_8
    new-instance v4, Ljava/util/zip/ZipException;

    #@74
    invoke-direct {v4, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@77
    throw v4

    #@78
    .line 245
    .end local v0    # "ex":Ljava/util/zip/DataFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_9
    const/16 v3, 0x200

    #@7a
    .restart local v3    # "part":I
    goto :goto_0
.end method
