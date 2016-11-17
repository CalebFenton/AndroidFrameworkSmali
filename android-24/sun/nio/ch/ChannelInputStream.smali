.class public Lsun/nio/ch/ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelInputStream.java"


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field protected final ch:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 78
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    #@6
    .line 79
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    #@8
    .line 80
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    #@a
    .line 83
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@c
    .line 82
    return-void
.end method

.method public static read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    instance-of v3, p0, Ljava/nio/channels/SelectableChannel;

    #@2
    if-eqz v3, :cond_1

    #@4
    move-object v2, p0

    #@5
    .line 58
    check-cast v2, Ljava/nio/channels/SelectableChannel;

    #@7
    .line 59
    .local v2, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    monitor-enter v4

    #@c
    .line 60
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    #@f
    move-result v0

    #@10
    .line 61
    .local v0, "bm":Z
    if-nez v0, :cond_0

    #@12
    .line 62
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    #@14
    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@17
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 59
    .end local v0    # "bm":Z
    :catchall_0
    move-exception v3

    #@19
    monitor-exit v4

    #@1a
    throw v3

    #@1b
    .line 66
    .restart local v0    # "bm":Z
    :cond_0
    :try_start_1
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v1

    #@1f
    .local v1, "n":I
    monitor-exit v4

    #@20
    .line 70
    return v1

    #@21
    .line 73
    .end local v0    # "bm":Z
    .end local v1    # "n":I
    .end local v2    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_1
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    #@24
    move-result v3

    #@25
    return v3
.end method


# virtual methods
.method public available()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v3, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@2
    instance-of v3, v3, Ljava/nio/channels/SeekableByteChannel;

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 123
    iget-object v2, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@8
    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    #@a
    .line 124
    .local v2, "sbc":Ljava/nio/channels/SeekableByteChannel;
    const-wide/16 v4, 0x0

    #@c
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    #@f
    move-result-wide v6

    #@10
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    #@13
    move-result-wide v8

    #@14
    sub-long/2addr v6, v8

    #@15
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@18
    move-result-wide v0

    #@19
    .line 125
    .local v0, "rem":J
    const-wide/32 v4, 0x7fffffff

    #@1c
    cmp-long v3, v0, v4

    #@1e
    if-lez v3, :cond_0

    #@20
    const v3, 0x7fffffff

    #@23
    :goto_0
    return v3

    #@24
    :cond_0
    long-to-int v3, v0

    #@25
    goto :goto_0

    #@26
    .line 127
    .end local v0    # "rem":J
    .end local v2    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    :cond_1
    const/4 v3, 0x0

    #@27
    return v3
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
    .line 131
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@2
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    #@5
    .line 130
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
    const/4 v2, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 87
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 88
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [B

    #@9
    iput-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    #@b
    .line 89
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    #@d
    invoke-virtual {p0, v1}, Lsun/nio/ch/ChannelInputStream;->read([B)I

    #@10
    move-result v0

    #@11
    .line 90
    .local v0, "n":I
    if-ne v0, v2, :cond_1

    #@13
    .line 91
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    #@15
    const/4 v2, 0x0

    #@16
    aget-byte v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    and-int/lit16 v1, v1, 0xff

    #@1a
    monitor-exit p0

    #@1b
    return v1

    #@1c
    .line 92
    :cond_1
    const/4 v1, -0x1

    #@1d
    monitor-exit p0

    #@1e
    return v1

    #@1f
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method protected read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@2
    invoke-static {v0, p1}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 98
    if-ltz p2, :cond_0

    #@4
    :try_start_0
    array-length v1, p1

    #@5
    if-le p2, v1, :cond_1

    #@7
    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1

    #@10
    .line 98
    :cond_1
    if-ltz p3, :cond_0

    #@12
    .line 99
    add-int v1, p2, p3

    #@14
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    if-gt v1, v2, :cond_0

    #@17
    add-int v1, p2, p3

    #@19
    if-ltz v1, :cond_0

    #@1b
    .line 101
    if-nez p3, :cond_2

    #@1d
    monitor-exit p0

    #@1e
    .line 102
    return v3

    #@1f
    .line 104
    :cond_2
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    #@21
    if-ne v1, p1, :cond_3

    #@23
    .line 105
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    #@25
    .line 107
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    add-int v1, p2, p3

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@2a
    move-result v2

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@32
    .line 108
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@35
    .line 109
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    #@37
    .line 110
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    #@39
    .line 111
    invoke-virtual {p0, v0}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    move-result v1

    #@3d
    monitor-exit p0

    #@3e
    return v1

    #@3f
    .line 106
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    move-result-object v0

    #@43
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method
