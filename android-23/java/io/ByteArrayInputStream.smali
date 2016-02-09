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
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@6
    .line 59
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@8
    .line 60
    array-length v0, p1

    #@9
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@b
    .line 57
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@5
    .line 77
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@7
    .line 78
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@9
    .line 79
    add-int v0, p2, p3

    #@b
    array-length v1, p1

    #@c
    if-le v0, v1, :cond_0

    #@e
    array-length v0, p1

    #@f
    :goto_0
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@11
    .line 75
    return-void

    #@12
    .line 79
    :cond_0
    add-int v0, p2, p3

    #@14
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 89
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
    .line 99
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 115
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@3
    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 114
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 129
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
    .line 141
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
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 145
    :try_start_0
    array-length v1, p1

    #@3
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@6
    .line 148
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@8
    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-lt v1, v2, :cond_0

    #@c
    .line 149
    const/4 v1, -0x1

    #@d
    monitor-exit p0

    #@e
    return v1

    #@f
    .line 151
    :cond_0
    if-nez p3, :cond_1

    #@11
    monitor-exit p0

    #@12
    .line 152
    return v3

    #@13
    .line 155
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@15
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@17
    sub-int/2addr v1, v2

    #@18
    if-ge v1, p3, :cond_2

    #@1a
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@1c
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@1e
    sub-int v0, v1, v2

    #@20
    .line 156
    .local v0, "copylen":I
    :goto_0
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    #@22
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@24
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 157
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@29
    add-int/2addr v1, v0

    #@2a
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 158
    return v0

    #@2e
    .line 155
    .end local v0    # "copylen":I
    :cond_2
    move v0, p3

    #@2f
    .restart local v0    # "copylen":I
    goto :goto_0

    #@30
    .end local v0    # "copylen":I
    :catchall_0
    move-exception v1

    #@31
    monitor-exit p0

    #@32
    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    #@3
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 169
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
    .param p1, "byteCount"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 183
    cmp-long v1, p1, v2

    #@5
    if-gtz v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 184
    return-wide v2

    #@9
    .line 186
    :cond_0
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@b
    .line 187
    .local v0, "temp":I
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@d
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@f
    sub-int/2addr v1, v2

    #@10
    int-to-long v2, v1

    #@11
    cmp-long v1, v2, p1

    #@13
    if-gez v1, :cond_1

    #@15
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    #@17
    :goto_0
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    #@19
    .line 188
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    sub-int/2addr v1, v0

    #@1c
    int-to-long v2, v1

    #@1d
    monitor-exit p0

    #@1e
    return-wide v2

    #@1f
    .line 187
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    int-to-long v2, v1

    #@22
    add-long/2addr v2, p1

    #@23
    long-to-int v1, v2

    #@24
    goto :goto_0

    #@25
    .end local v0    # "temp":I
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method
