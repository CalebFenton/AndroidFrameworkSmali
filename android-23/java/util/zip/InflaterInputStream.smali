.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field closed:Z

.field eof:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field nativeEndBufSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    #@5
    const/16 v1, 0x200

    #@7
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@a
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 90
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@5
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;
    .param p3, "bufferSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 65
    iput v0, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    #@6
    .line 106
    if-nez p1, :cond_0

    #@8
    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "is == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 108
    :cond_0
    if-nez p2, :cond_1

    #@13
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "inflater == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 111
    :cond_1
    if-gtz p3, :cond_2

    #@1e
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "bufferSize <= 0: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 114
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@3a
    .line 115
    instance-of v0, p1, Ljava/util/zip/ZipFile$RAFStream;

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 116
    iput p3, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    #@40
    .line 104
    :goto_0
    return-void

    #@41
    .line 118
    :cond_3
    new-array v0, p3, [B

    #@43
    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@45
    goto :goto_0
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 289
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    #@3
    .line 234
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 235
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 237
    :cond_0
    const/4 v0, 0x1

    #@a
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
    const/4 v1, 0x1

    #@1
    .line 248
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 249
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@7
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    #@a
    .line 250
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@c
    .line 251
    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@e
    .line 252
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    #@11
    .line 247
    :cond_0
    return-void
.end method

.method protected fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 189
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    #@4
    .line 190
    iget v1, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    #@6
    if-lez v1, :cond_1

    #@8
    .line 191
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    #@a
    check-cast v0, Ljava/util/zip/ZipFile$RAFStream;

    #@c
    .line 192
    .local v0, "is":Ljava/util/zip/ZipFile$RAFStream;
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@e
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;->fill(Ljava/util/zip/Inflater;I)I

    #@13
    move-result v1

    #@14
    iput v1, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@16
    .line 188
    .end local v0    # "is":Ljava/util/zip/ZipFile$RAFStream;
    :cond_0
    :goto_0
    return-void

    #@17
    .line 194
    :cond_1
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    #@19
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@1b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@21
    if-lez v1, :cond_0

    #@23
    .line 195
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@25
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@27
    iget v3, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@29
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@2c
    goto :goto_0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 264
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 140
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    #@6
    .line 141
    array-length v2, p1

    #@7
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@a
    .line 143
    if-nez p3, :cond_0

    #@c
    .line 144
    return v4

    #@d
    .line 147
    :cond_0
    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 148
    return v3

    #@12
    .line 152
    :cond_1
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@14
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 153
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    #@1d
    .line 158
    :cond_2
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@1f
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@22
    move-result v1

    #@23
    .line 159
    .local v1, "result":I
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@25
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    #@28
    move-result v2

    #@29
    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@2b
    .line 160
    if-lez v1, :cond_3

    #@2d
    .line 161
    return v1

    #@2e
    .line 162
    :cond_3
    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@30
    if-eqz v2, :cond_4

    #@32
    .line 163
    return v3

    #@33
    .line 164
    :cond_4
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@35
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_5

    #@3b
    .line 165
    const/4 v2, 0x1

    #@3c
    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@3e
    .line 166
    return v3

    #@3f
    .line 167
    :cond_5
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@41
    if-ne v2, v3, :cond_1

    #@43
    .line 168
    const/4 v2, 0x1

    #@44
    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@46
    .line 169
    new-instance v2, Ljava/io/EOFException;

    #@48
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@4b
    throw v2
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 172
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    #@4d
    .line 173
    .local v0, "e":Ljava/util/zip/DataFormatException;
    iput-boolean v5, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    #@4f
    .line 174
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@51
    if-ne v2, v3, :cond_6

    #@53
    .line 175
    new-instance v2, Ljava/io/EOFException;

    #@55
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@58
    throw v2

    #@59
    .line 177
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@5b
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #@5e
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/io/IOException;

    #@64
    throw v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@5
    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "byteCount < 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 213
    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method
