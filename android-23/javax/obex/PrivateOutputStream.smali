.class public final Ljavax/obex/PrivateOutputStream;
.super Ljava/io/OutputStream;
.source "PrivateOutputStream.java"


# instance fields
.field private mArray:Ljava/io/ByteArrayOutputStream;

.field private mMaxPacketSize:I

.field private mOpen:Z

.field private mParent:Ljavax/obex/BaseStream;


# direct methods
.method public constructor <init>(Ljavax/obex/BaseStream;I)V
    .locals 1
    .param p1, "p"    # Ljavax/obex/BaseStream;
    .param p2, "maxSize"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@5
    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    iput-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@c
    .line 61
    iput p2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    #@e
    .line 62
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    #@11
    .line 58
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
    .line 147
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@2
    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureOpen()V

    #@5
    .line 148
    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 149
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Output stream is closed"

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 146
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 160
    iput-boolean v1, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    #@3
    .line 161
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@5
    invoke-interface {v0, v1}, Ljavax/obex/BaseStream;->streamClosed(Z)V

    #@8
    .line 159
    return-void
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 170
    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public declared-synchronized readBytes(I)[B
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 128
    :try_start_0
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    #@6
    move-result v2

    #@7
    if-lez v2, :cond_1

    #@9
    .line 129
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@e
    move-result-object v1

    #@f
    .line 130
    .local v1, "temp":[B
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@14
    .line 131
    new-array v0, p1, [B

    #@16
    .line 132
    .local v0, "result":[B
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 133
    array-length v2, v1

    #@1c
    if-eq v2, p1, :cond_0

    #@1e
    .line 134
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@20
    array-length v3, v1

    #@21
    sub-int/2addr v3, p1

    #@22
    invoke-virtual {v2, v1, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit p0

    #@26
    .line 136
    return-object v0

    #@27
    .line 138
    .end local v0    # "result":[B
    .end local v1    # "temp":[B
    :cond_1
    const/4 v2, 0x0

    #@28
    monitor-exit p0

    #@29
    return-object v2

    #@2a
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit p0

    #@2c
    throw v2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    #@4
    .line 84
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@6
    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureNotDone()V

    #@9
    .line 85
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e
    .line 86
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@13
    move-result v0

    #@14
    iget v1, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 87
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@1a
    const/4 v1, 0x1

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-interface {v0, v1, v2}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit p0

    #@20
    .line 82
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljavax/obex/PrivateOutputStream;->write([BII)V

    #@5
    .line 92
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 98
    move v1, p2

    #@2
    .line 99
    .local v1, "offset1":I
    move v2, p3

    #@3
    .line 101
    .local v2, "remainLength":I
    if-nez p1, :cond_0

    #@5
    .line 102
    :try_start_0
    new-instance v3, Ljava/io/IOException;

    #@7
    const-string/jumbo v4, "buffer is null"

    #@a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v3

    #@f
    monitor-exit p0

    #@10
    throw v3

    #@11
    .line 104
    :cond_0
    or-int v3, p2, p3

    #@13
    if-ltz v3, :cond_1

    #@15
    :try_start_1
    array-length v3, p1

    #@16
    sub-int/2addr v3, p2

    #@17
    if-le p3, v3, :cond_2

    #@19
    .line 105
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    const-string/jumbo v4, "index outof bound"

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 108
    :cond_2
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    #@25
    .line 109
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@27
    invoke-interface {v3}, Ljavax/obex/BaseStream;->ensureNotDone()V

    #@2a
    .line 110
    :goto_0
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@2c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    #@2f
    move-result v3

    #@30
    add-int/2addr v3, v2

    #@31
    iget v4, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    #@33
    if-lt v3, v4, :cond_3

    #@35
    .line 111
    iget v3, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    #@37
    iget-object v4, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@39
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    #@3c
    move-result v4

    #@3d
    sub-int v0, v3, v4

    #@3f
    .line 112
    .local v0, "bufferLeft":I
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@41
    invoke-virtual {v3, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@44
    .line 113
    add-int/2addr v1, v0

    #@45
    .line 114
    sub-int/2addr v2, v0

    #@46
    .line 115
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    #@48
    const/4 v4, 0x1

    #@49
    const/4 v5, 0x0

    #@4a
    invoke-interface {v3, v4, v5}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z

    #@4d
    goto :goto_0

    #@4e
    .line 117
    .end local v0    # "bufferLeft":I
    :cond_3
    if-lez v2, :cond_4

    #@50
    .line 118
    iget-object v3, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    #@52
    invoke-virtual {v3, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    :cond_4
    monitor-exit p0

    #@56
    .line 97
    return-void
.end method
