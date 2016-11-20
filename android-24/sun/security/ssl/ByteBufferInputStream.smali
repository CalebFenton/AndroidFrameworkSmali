.class Lsun/security/ssl/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferInputStream.java"


# instance fields
.field bb:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@5
    .line 44
    return-void
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
    .line 140
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "available on a closed InputStream"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 144
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@12
    move-result v0

    #@13
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
    .line 154
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@3
    .line 153
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
    .line 160
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "read on a closed InputStream"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 59
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 60
    const/4 v0, -0x1

    #@16
    return v0

    #@17
    .line 62
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@1c
    move-result v0

    #@1d
    return v0
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
    .line 72
    iget-object v0, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "read on a closed InputStream"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 76
    :cond_0
    array-length v0, p1

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {p0, p1, v1, v0}, Lsun/security/ssl/ByteBufferInputStream;->read([BII)I

    #@12
    move-result v0

    #@13
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
    const/4 v2, 0x0

    #@1
    .line 86
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 87
    new-instance v1, Ljava/io/IOException;

    #@7
    const-string/jumbo v2, "read on a closed InputStream"

    #@a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 90
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    #@12
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@15
    throw v1

    #@16
    .line 92
    :cond_1
    if-ltz p2, :cond_2

    #@18
    if-gez p3, :cond_3

    #@1a
    .line 93
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@1c
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1f
    throw v1

    #@20
    .line 92
    :cond_3
    array-length v1, p1

    #@21
    sub-int/2addr v1, p2

    #@22
    if-gt p3, v1, :cond_2

    #@24
    .line 94
    if-nez p3, :cond_4

    #@26
    .line 95
    return v2

    #@27
    .line 98
    :cond_4
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    #@2c
    move-result v1

    #@2d
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    #@30
    move-result v0

    #@31
    .line 99
    .local v0, "length":I
    if-nez v0, :cond_5

    #@33
    .line 100
    const/4 v1, -0x1

    #@34
    return v1

    #@35
    .line 103
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@3a
    .line 104
    return v0
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
    .line 167
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
    const-wide/16 v4, 0x0

    #@2
    .line 113
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 114
    new-instance v2, Ljava/io/IOException;

    #@8
    const-string/jumbo v3, "skip on a closed InputStream"

    #@b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 117
    :cond_0
    cmp-long v2, p1, v4

    #@11
    if-gtz v2, :cond_1

    #@13
    .line 118
    return-wide v4

    #@14
    .line 125
    :cond_1
    long-to-int v0, p1

    #@15
    .line 126
    .local v0, "nInt":I
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    #@1a
    move-result v2

    #@1b
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v1

    #@1f
    .line 128
    .local v1, "skip":I
    iget-object v2, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@21
    iget-object v3, p0, Lsun/security/ssl/ByteBufferInputStream;->bb:Ljava/nio/ByteBuffer;

    #@23
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    #@26
    move-result v3

    #@27
    add-int/2addr v3, v1

    #@28
    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@2b
    .line 130
    int-to-long v2, v0

    #@2c
    return-wide v2
.end method
