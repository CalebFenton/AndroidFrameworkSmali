.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private b:[B

.field protected buf:[B

.field protected closed:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field private reachEOF:Z

.field private singleByteBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/util/zip/Inflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    #@8
    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 101
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@5
    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 60
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@6
    .line 63
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    #@8
    .line 112
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [B

    #@b
    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    #@d
    .line 193
    const/16 v0, 0x200

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    #@13
    .line 85
    if-eqz p1, :cond_0

    #@15
    if-nez p2, :cond_1

    #@17
    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@19
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 87
    :cond_1
    if-gtz p3, :cond_2

    #@1f
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "buffer size <= 0"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 90
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@2a
    .line 91
    new-array v0, p3, [B

    #@2c
    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@2e
    .line 83
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
    .line 69
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 70
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 68
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
    .line 185
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    #@3
    .line 186
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 187
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 189
    :cond_0
    const/4 v0, 0x1

    #@a
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
    .line 230
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 231
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@6
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    #@9
    .line 232
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    #@b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@e
    .line 233
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    #@11
    .line 229
    :cond_0
    return-void
.end method

.method protected fill()V
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
    .line 242
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    #@4
    .line 243
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    #@6
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@8
    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@a
    array-length v2, v2

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@11
    .line 244
    iget v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 245
    new-instance v0, Ljava/io/EOFException;

    #@18
    const-string/jumbo v1, "Unexpected end of ZLIB input stream"

    #@1b
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 247
    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@21
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    #@23
    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    #@25
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@28
    .line 241
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 275
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
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
    const/4 v0, -0x1

    #@2
    .line 121
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    #@5
    .line 122
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    #@b
    move-result v1

    #@c
    if-ne v1, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    #@11
    aget-byte v0, v0, v3

    #@13
    and-int/lit16 v0, v0, 0xff

    #@15
    goto :goto_0
.end method

.method public read([BII)I
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
    .line 142
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    #@4
    .line 143
    if-nez p1, :cond_0

    #@6
    .line 144
    new-instance v3, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v3

    #@c
    .line 145
    :cond_0
    if-ltz p2, :cond_1

    #@e
    if-gez p3, :cond_2

    #@10
    .line 146
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v3

    #@16
    .line 145
    :cond_2
    array-length v3, p1

    #@17
    sub-int/2addr v3, p2

    #@18
    if-gt p3, v3, :cond_1

    #@1a
    .line 147
    if-nez p3, :cond_4

    #@1c
    .line 148
    return v4

    #@1d
    .line 157
    .local v1, "n":I
    :cond_3
    :try_start_0
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@1f
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_4

    #@25
    .line 158
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    #@28
    .line 152
    .end local v1    # "n":I
    :cond_4
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@2a
    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@2d
    move-result v1

    #@2e
    .restart local v1    # "n":I
    if-nez v1, :cond_6

    #@30
    .line 153
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@32
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_5

    #@38
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@3a
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 154
    :cond_5
    const/4 v3, 0x1

    #@41
    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    #@43
    .line 155
    const/4 v3, -0x1

    #@44
    return v3

    #@45
    .line 163
    :cond_6
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    #@47
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_7

    #@4d
    .line 164
    const/4 v3, 0x1

    #@4e
    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 167
    :cond_7
    return v1

    #@51
    .line 168
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    #@52
    .line 169
    .local v0, "e":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 170
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipException;

    #@58
    if-eqz v2, :cond_8

    #@5a
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    invoke-direct {v3, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3

    #@5e
    .restart local v2    # "s":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "Invalid ZLIB data format"

    #@61
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    #@3
    const-string/jumbo v1, "mark/reset not supported"

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p1, v4

    #@4
    if-gez v3, :cond_0

    #@6
    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "negative skip length"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 206
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    #@12
    .line 207
    const-wide/32 v4, 0x7fffffff

    #@15
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@18
    move-result-wide v4

    #@19
    long-to-int v1, v4

    #@1a
    .line 208
    .local v1, "max":I
    const/4 v2, 0x0

    #@1b
    .line 209
    .local v2, "total":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@1d
    .line 210
    sub-int v0, v1, v2

    #@1f
    .line 211
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    #@21
    array-length v3, v3

    #@22
    if-le v0, v3, :cond_1

    #@24
    .line 212
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    #@26
    array-length v0, v3

    #@27
    .line 214
    :cond_1
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    #@2d
    move-result v0

    #@2e
    .line 215
    const/4 v3, -0x1

    #@2f
    if-ne v0, v3, :cond_3

    #@31
    .line 216
    const/4 v3, 0x1

    #@32
    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    #@34
    .line 221
    .end local v0    # "len":I
    :cond_2
    int-to-long v4, v2

    #@35
    return-wide v4

    #@36
    .line 219
    .restart local v0    # "len":I
    :cond_3
    add-int/2addr v2, v0

    #@37
    goto :goto_0
.end method
