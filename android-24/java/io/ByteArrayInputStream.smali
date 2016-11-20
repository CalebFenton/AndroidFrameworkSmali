.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 78
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@6
    .line 104
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8
    .line 105
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@a
    .line 106
    array-length v0, p1

    #@b
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@d
    .line 103
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 78
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@6
    .line 124
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8
    .line 125
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@a
    .line 126
    add-int v0, p2, p3

    #@c
    array-length v1, p1

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@13
    .line 127
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@15
    .line 123
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@3
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    sub-int/2addr v0, v1

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    #@0
    .prologue
    .line 262
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@2
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@4
    .line 261
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 243
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 144
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@3
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@5
    if-ge v0, v1, :cond_0

    #@7
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@9
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@f
    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    and-int/lit16 v0, v0, 0xff

    #@13
    :goto_0
    monitor-exit p0

    #@14
    return v0

    #@15
    :cond_0
    const/4 v0, -0x1

    #@16
    goto :goto_0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 177
    if-nez p1, :cond_0

    #@4
    .line 178
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v1

    #@b
    monitor-exit p0

    #@c
    throw v1

    #@d
    .line 179
    :cond_0
    if-ltz p2, :cond_1

    #@f
    if-gez p3, :cond_2

    #@11
    .line 180
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v1

    #@17
    .line 179
    :cond_2
    array-length v1, p1

    #@18
    sub-int/2addr v1, p2

    #@19
    if-gt p3, v1, :cond_1

    #@1b
    .line 183
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@1d
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    if-lt v1, v2, :cond_3

    #@21
    .line 184
    const/4 v1, -0x1

    #@22
    monitor-exit p0

    #@23
    return v1

    #@24
    .line 187
    :cond_3
    :try_start_2
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@26
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    sub-int v0, v1, v2

    #@2a
    .line 188
    .local v0, "avail":I
    if-le p3, v0, :cond_4

    #@2c
    .line 189
    move p3, v0

    #@2d
    .line 191
    :cond_4
    if-gtz p3, :cond_5

    #@2f
    monitor-exit p0

    #@30
    .line 192
    return v3

    #@31
    .line 194
    :cond_5
    :try_start_3
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@33
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@35
    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 195
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@3a
    add-int/2addr v1, p3

    #@3b
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3d
    monitor-exit p0

    #@3e
    .line 196
    return p3
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 271
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@3
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 270
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .param p1, "n"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 212
    :try_start_0
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@3
    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@5
    sub-int/2addr v2, v3

    #@6
    int-to-long v0, v2

    #@7
    .line 213
    .local v0, "k":J
    cmp-long v2, p1, v0

    #@9
    if-gez v2, :cond_0

    #@b
    .line 214
    const-wide/16 v2, 0x0

    #@d
    cmp-long v2, p1, v2

    #@f
    if-gez v2, :cond_1

    #@11
    const-wide/16 v0, 0x0

    #@13
    .line 217
    :cond_0
    :goto_0
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@15
    int-to-long v2, v2

    #@16
    add-long/2addr v2, v0

    #@17
    long-to-int v2, v2

    #@18
    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 218
    return-wide v0

    #@1c
    .line 214
    :cond_1
    move-wide v0, p1

    #@1d
    goto :goto_0

    #@1e
    .end local v0    # "k":J
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method
