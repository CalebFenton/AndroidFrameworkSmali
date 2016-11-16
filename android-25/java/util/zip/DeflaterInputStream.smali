.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# instance fields
.field protected final buf:[B

.field protected final def:Ljava/util/zip/Deflater;

.field private rbuf:[B

.field private reachEOF:Z

.field private usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/util/zip/Deflater;

    #@2
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V

    #@8
    .line 79
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    #@b
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;

    #@0
    .prologue
    .line 91
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    #@5
    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;
    .param p3, "bufLen"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 53
    new-array v0, v2, [B

    #@7
    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@9
    .line 56
    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    #@b
    .line 59
    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    #@d
    .line 108
    if-nez p1, :cond_0

    #@f
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "Null input"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 110
    :cond_0
    if-nez p2, :cond_1

    #@1a
    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "Null deflater"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 112
    :cond_1
    if-ge p3, v2, :cond_2

    #@25
    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "Buffer size < 1"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 116
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@30
    .line 117
    new-array v0, p3, [B

    #@32
    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@34
    .line 104
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
    .line 65
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 66
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 64
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
    .line 266
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    #@3
    .line 267
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 268
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 270
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
    const/4 v1, 0x0

    #@1
    .line 127
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 130
    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 131
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@b
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    #@e
    .line 134
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 136
    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@15
    .line 126
    :cond_1
    return-void

    #@16
    .line 135
    :catchall_0
    move-exception v0

    #@17
    .line 136
    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@19
    .line 135
    throw v0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 288
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 280
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
    .line 152
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@3
    const/4 v2, 0x1

    #@4
    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 153
    .local v0, "len":I
    if-gtz v0, :cond_0

    #@a
    .line 154
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 155
    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@e
    aget-byte v1, v1, v3

    #@10
    and-int/lit16 v1, v1, 0xff

    #@12
    return v1
.end method

.method public read([BII)I
    .locals 6
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
    const/4 v5, 0x0

    #@1
    .line 174
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    #@4
    .line 175
    if-nez p1, :cond_0

    #@6
    .line 176
    new-instance v2, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v3, "Null buffer for read"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 177
    :cond_0
    if-ltz p2, :cond_1

    #@11
    if-gez p3, :cond_2

    #@13
    .line 178
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v2

    #@19
    .line 177
    :cond_2
    array-length v2, p1

    #@1a
    sub-int/2addr v2, p2

    #@1b
    if-gt p3, v2, :cond_1

    #@1d
    .line 179
    if-nez p3, :cond_3

    #@1f
    .line 180
    return v5

    #@20
    .line 184
    :cond_3
    const/4 v0, 0x0

    #@21
    .line 185
    .local v0, "cnt":I
    :goto_0
    if-lez p3, :cond_4

    #@23
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@25
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_6

    #@2b
    .line 208
    :cond_4
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@2d
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_5

    #@33
    .line 209
    const/4 v2, 0x1

    #@34
    iput-boolean v2, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    #@36
    .line 210
    if-nez v0, :cond_5

    #@38
    .line 211
    const/4 v0, -0x1

    #@39
    .line 215
    :cond_5
    return v0

    #@3a
    .line 189
    :cond_6
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@3c
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_7

    #@42
    .line 190
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    #@44
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@46
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@48
    array-length v4, v4

    #@49
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    #@4c
    move-result v1

    #@4d
    .line 191
    .local v1, "n":I
    if-gez v1, :cond_8

    #@4f
    .line 193
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@51
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    #@54
    .line 200
    .end local v1    # "n":I
    :cond_7
    :goto_1
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@56
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@59
    move-result v1

    #@5a
    .line 201
    .restart local v1    # "n":I
    add-int/2addr v0, v1

    #@5b
    .line 202
    add-int/2addr p2, v1

    #@5c
    .line 203
    sub-int/2addr p3, v1

    #@5d
    goto :goto_0

    #@5e
    .line 194
    :cond_8
    if-lez v1, :cond_7

    #@60
    .line 195
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    #@62
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    #@64
    invoke-virtual {v2, v3, v5, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@67
    goto :goto_1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x200

    #@2
    const/4 v6, 0x0

    #@3
    .line 231
    const-wide/16 v4, 0x0

    #@5
    cmp-long v4, p1, v4

    #@7
    if-gez v4, :cond_0

    #@9
    .line 232
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v5, "negative skip length"

    #@e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 234
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    #@15
    .line 237
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@17
    array-length v4, v4

    #@18
    if-ge v4, v7, :cond_1

    #@1a
    .line 238
    new-array v4, v7, [B

    #@1c
    iput-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@1e
    .line 240
    :cond_1
    const-wide/32 v4, 0x7fffffff

    #@21
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@24
    move-result-wide v4

    #@25
    long-to-int v3, v4

    #@26
    .line 241
    .local v3, "total":I
    const-wide/16 v0, 0x0

    #@28
    .line 242
    .local v0, "cnt":J
    :goto_0
    if-lez v3, :cond_2

    #@2a
    .line 244
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@2c
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@2e
    array-length v4, v4

    #@2f
    if-gt v3, v4, :cond_3

    #@31
    move v4, v3

    #@32
    :goto_1
    invoke-virtual {p0, v5, v6, v4}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    #@35
    move-result v2

    #@36
    .line 246
    .local v2, "len":I
    if-gez v2, :cond_4

    #@38
    .line 252
    .end local v2    # "len":I
    :cond_2
    return-wide v0

    #@39
    .line 244
    :cond_3
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    #@3b
    array-length v4, v4

    #@3c
    goto :goto_1

    #@3d
    .line 249
    .restart local v2    # "len":I
    :cond_4
    int-to-long v4, v2

    #@3e
    add-long/2addr v0, v4

    #@3f
    .line 250
    sub-int/2addr v3, v2

    #@40
    goto :goto_0
.end method
