.class public final Ljavax/obex/PrivateInputStream;
.super Ljava/io/InputStream;
.source "PrivateInputStream.java"


# instance fields
.field private mData:[B

.field private mIndex:I

.field private mOpen:Z

.field private mParent:Ljavax/obex/BaseStream;


# direct methods
.method public constructor <init>(Ljavax/obex/BaseStream;)V
    .locals 2
    .param p1, "p"    # Ljavax/obex/BaseStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 58
    iput-object p1, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    #@6
    .line 59
    new-array v0, v1, [B

    #@8
    iput-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@a
    .line 60
    iput v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@c
    .line 61
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    #@f
    .line 57
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
    .line 165
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    #@2
    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureOpen()V

    #@5
    .line 166
    iget-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 167
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Input stream is closed"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
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
    .line 75
    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    #@4
    .line 76
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@6
    array-length v0, v0

    #@7
    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    sub-int/2addr v0, v1

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
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
    .line 178
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/obex/PrivateInputStream;->mOpen:Z

    #@3
    .line 179
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-interface {v0, v1}, Ljavax/obex/BaseStream;->streamClosed(Z)V

    #@9
    .line 177
    return-void
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
    .line 91
    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    #@4
    .line 92
    :cond_0
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@6
    array-length v0, v0

    #@7
    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 93
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    #@d
    const/4 v1, 0x1

    #@e
    const/4 v2, 0x1

    #@f
    invoke-interface {v0, v1, v2}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 94
    const/4 v0, -0x1

    #@16
    monitor-exit p0

    #@17
    return v0

    #@18
    .line 97
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@1a
    iget v1, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@1c
    add-int/lit8 v2, v1, 0x1

    #@1e
    iput v2, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@20
    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    and-int/lit16 v0, v0, 0xff

    #@24
    monitor-exit p0

    #@25
    return v0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
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
    .line 102
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljavax/obex/PrivateInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 108
    if-nez p1, :cond_0

    #@3
    .line 109
    :try_start_0
    new-instance v4, Ljava/io/IOException;

    #@5
    const-string/jumbo v5, "buffer is null"

    #@8
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v4

    #@d
    monitor-exit p0

    #@e
    throw v4

    #@f
    .line 111
    :cond_0
    or-int v4, p2, p3

    #@11
    if-ltz v4, :cond_1

    #@13
    :try_start_1
    array-length v4, p1

    #@14
    sub-int/2addr v4, p2

    #@15
    if-le p3, v4, :cond_2

    #@17
    .line 112
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@19
    const-string/jumbo v5, "index outof bound"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 114
    :cond_2
    invoke-direct {p0}, Ljavax/obex/PrivateInputStream;->ensureOpen()V

    #@23
    .line 116
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@25
    array-length v4, v4

    #@26
    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@28
    sub-int v0, v4, v5

    #@2a
    .line 117
    .local v0, "currentDataLength":I
    move v2, p3

    #@2b
    .line 118
    .local v2, "remainReadLength":I
    move v1, p2

    #@2c
    .line 119
    .local v1, "offset1":I
    const/4 v3, 0x0

    #@2d
    .line 121
    .local v3, "result":I
    :goto_0
    if-gt v0, v2, :cond_5

    #@2f
    .line 122
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@31
    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@33
    invoke-static {v4, v5, p1, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 123
    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@38
    add-int/2addr v4, v0

    #@39
    iput v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@3b
    .line 124
    add-int/2addr v1, v0

    #@3c
    .line 125
    add-int/2addr v3, v0

    #@3d
    .line 126
    sub-int/2addr v2, v0

    #@3e
    .line 128
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mParent:Ljavax/obex/BaseStream;

    #@40
    const/4 v5, 0x1

    #@41
    const/4 v6, 0x1

    #@42
    invoke-interface {v4, v5, v6}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result v4

    #@46
    if-nez v4, :cond_4

    #@48
    .line 129
    if-nez v3, :cond_3

    #@4a
    const/4 v3, -0x1

    #@4b
    .end local v3    # "result":I
    :cond_3
    monitor-exit p0

    #@4c
    return v3

    #@4d
    .line 131
    .restart local v3    # "result":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@4f
    array-length v4, v4

    #@50
    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@52
    sub-int v0, v4, v5

    #@54
    goto :goto_0

    #@55
    .line 133
    :cond_5
    if-lez v2, :cond_6

    #@57
    .line 134
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@59
    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@5b
    invoke-static {v4, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5e
    .line 135
    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@60
    add-int/2addr v4, v2

    #@61
    iput v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    .line 136
    add-int/2addr v3, v2

    #@64
    :cond_6
    monitor-exit p0

    #@65
    .line 138
    return v3
.end method

.method public declared-synchronized writeBytes([BI)V
    .locals 6
    .param p1, "body"    # [B
    .param p2, "start"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    array-length v2, p1

    #@2
    sub-int/2addr v2, p2

    #@3
    iget-object v3, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@5
    array-length v3, v3

    #@6
    iget v4, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@8
    sub-int/2addr v3, v4

    #@9
    add-int v0, v2, v3

    #@b
    .line 150
    .local v0, "length":I
    new-array v1, v0, [B

    #@d
    .line 152
    .local v1, "temp":[B
    iget-object v2, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@f
    iget v3, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@11
    iget-object v4, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@13
    array-length v4, v4

    #@14
    iget v5, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@16
    sub-int/2addr v4, v5

    #@17
    const/4 v5, 0x0

    #@18
    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 153
    iget-object v2, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@1d
    array-length v2, v2

    #@1e
    iget v3, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@20
    sub-int/2addr v2, v3

    #@21
    array-length v3, p1

    #@22
    sub-int/2addr v3, p2

    #@23
    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 155
    iput-object v1, p0, Ljavax/obex/PrivateInputStream;->mData:[B

    #@28
    .line 156
    const/4 v2, 0x0

    #@29
    iput v2, p0, Ljavax/obex/PrivateInputStream;->mIndex:I

    #@2b
    .line 157
    invoke-virtual {p0}, Ljavax/obex/PrivateInputStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 147
    return-void

    #@30
    .end local v0    # "length":I
    .end local v1    # "temp":[B
    :catchall_0
    move-exception v2

    #@31
    monitor-exit p0

    #@32
    throw v2
.end method
