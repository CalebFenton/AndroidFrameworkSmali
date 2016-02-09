.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 56
    if-nez p1, :cond_0

    #@7
    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@9
    .line 57
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@b
    .line 54
    return-void

    #@c
    .line 56
    :cond_0
    new-array v0, v1, [B

    #@e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 77
    if-gtz p2, :cond_0

    #@6
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size <= 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 80
    :cond_0
    if-nez p1, :cond_1

    #@11
    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@13
    .line 81
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@15
    .line 75
    return-void

    #@16
    .line 80
    :cond_1
    new-array v0, p2, [B

    #@18
    goto :goto_0
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "PushbackInputStream is closed"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 86
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 87
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 89
    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@c
    array-length v0, v0

    #@d
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@f
    sub-int/2addr v0, v1

    #@10
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@12
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@15
    move-result v1

    #@16
    add-int/2addr v0, v1

    #@17
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
    .line 101
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 102
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@a
    .line 103
    iput-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@c
    .line 104
    iput-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@e
    .line 100
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 318
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 137
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 138
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 141
    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@c
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@e
    array-length v1, v1

    #@f
    if-ge v0, v1, :cond_1

    #@11
    .line 142
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@13
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@19
    aget-byte v0, v0, v1

    #@1b
    and-int/lit16 v0, v0, 0xff

    #@1d
    return v0

    #@1e
    .line 146
    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@20
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@23
    move-result v0

    #@24
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
    .line 167
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@2
    if-nez v4, :cond_0

    #@4
    .line 168
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    #@7
    move-result-object v4

    #@8
    throw v4

    #@9
    .line 170
    :cond_0
    array-length v4, p1

    #@a
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@d
    .line 171
    const/4 v0, 0x0

    #@e
    .local v0, "copiedBytes":I
    const/4 v1, 0x0

    #@f
    .local v1, "copyLength":I
    move v3, p2

    #@10
    .line 173
    .local v3, "newOffset":I
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    #@12
    iget-object v5, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@14
    array-length v5, v5

    #@15
    if-ge v4, v5, :cond_1

    #@17
    .line 174
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@19
    array-length v4, v4

    #@1a
    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1c
    sub-int/2addr v4, v5

    #@1d
    if-lt v4, p3, :cond_2

    #@1f
    move v1, p3

    #@20
    .line 175
    :goto_0
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@22
    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    #@24
    invoke-static {v4, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 176
    add-int/2addr v3, v1

    #@28
    .line 177
    add-int/lit8 v0, v1, 0x0

    #@2a
    .line 179
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    #@2c
    add-int/2addr v4, v1

    #@2d
    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    #@2f
    .line 182
    :cond_1
    if-ne v1, p3, :cond_3

    #@31
    .line 183
    return p3

    #@32
    .line 174
    :cond_2
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@34
    array-length v4, v4

    #@35
    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    #@37
    sub-int v1, v4, v5

    #@39
    goto :goto_0

    #@3a
    .line 185
    :cond_3
    iget-object v4, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@3c
    sub-int v5, p3, v0

    #@3e
    invoke-virtual {v4, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    #@41
    move-result v2

    #@42
    .line 186
    .local v2, "inCopied":I
    if-lez v2, :cond_4

    #@44
    .line 187
    add-int v4, v2, v0

    #@46
    return v4

    #@47
    .line 189
    :cond_4
    if-nez v0, :cond_5

    #@49
    .line 190
    return v2

    #@4a
    .line 192
    :cond_5
    return v0
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
    .line 331
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@5
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 209
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 210
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    #@9
    move-result-object v1

    #@a
    throw v1

    #@b
    .line 212
    :cond_0
    cmp-long v1, p1, v4

    #@d
    if-gtz v1, :cond_1

    #@f
    .line 213
    return-wide v4

    #@10
    .line 215
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 216
    .local v0, "numSkipped":I
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@13
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@15
    array-length v2, v2

    #@16
    if-ge v1, v2, :cond_2

    #@18
    .line 217
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@1a
    array-length v1, v1

    #@1b
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1d
    sub-int/2addr v1, v2

    #@1e
    int-to-long v2, v1

    #@1f
    cmp-long v1, p1, v2

    #@21
    if-gez v1, :cond_4

    #@23
    move-wide v2, p1

    #@24
    :goto_0
    add-long/2addr v2, v4

    #@25
    long-to-int v0, v2

    #@26
    .line 218
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@28
    add-int/2addr v1, v0

    #@29
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@2b
    .line 220
    :cond_2
    int-to-long v2, v0

    #@2c
    cmp-long v1, v2, p1

    #@2e
    if-gez v1, :cond_3

    #@30
    .line 221
    int-to-long v2, v0

    #@31
    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@33
    int-to-long v4, v0

    #@34
    sub-long v4, p1, v4

    #@36
    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@39
    move-result-wide v4

    #@3a
    add-long/2addr v2, v4

    #@3b
    long-to-int v0, v2

    #@3c
    .line 223
    :cond_3
    int-to-long v2, v0

    #@3d
    return-wide v2

    #@3e
    .line 217
    :cond_4
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@40
    array-length v1, v1

    #@41
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@43
    sub-int/2addr v1, v2

    #@44
    int-to-long v2, v1

    #@45
    goto :goto_0
.end method

.method public unread(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 302
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 304
    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@c
    if-nez v0, :cond_1

    #@e
    .line 305
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v1, "Pushback buffer full"

    #@13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 307
    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@19
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1f
    int-to-byte v2, p1

    #@20
    aput-byte v2, v0, v1

    #@22
    .line 300
    return-void
.end method

.method public unread([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@5
    .line 242
    return-void
.end method

.method public unread([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@2
    if-le p3, v0, :cond_0

    #@4
    .line 274
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pushback buffer full"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 276
    :cond_0
    array-length v0, p1

    #@e
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@11
    .line 277
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@13
    if-nez v0, :cond_1

    #@15
    .line 278
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    #@18
    move-result-object v0

    #@19
    throw v0

    #@1a
    .line 281
    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@1c
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1e
    sub-int/2addr v1, p3

    #@1f
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 282
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@24
    sub-int/2addr v0, p3

    #@25
    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@27
    .line 272
    return-void
.end method
