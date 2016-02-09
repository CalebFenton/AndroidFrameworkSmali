.class Ljava/nio/channels/Channels$ChannelInputStream;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 209
    if-nez p1, :cond_0

    #@5
    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "channel == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 212
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@10
    .line 208
    return-void
.end method


# virtual methods
.method public available()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@2
    instance-of v1, v1, Ljava/nio/channels/FileChannel;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 227
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@8
    check-cast v0, Ljava/nio/channels/FileChannel;

    #@a
    .line 228
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    #@d
    move-result-wide v4

    #@e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    #@11
    move-result-wide v6

    #@12
    sub-long v2, v4, v6

    #@14
    .line 229
    .local v2, "result":J
    const-wide/32 v4, 0x7fffffff

    #@17
    cmp-long v1, v2, v4

    #@19
    if-lez v1, :cond_0

    #@1b
    const v1, 0x7fffffff

    #@1e
    :goto_0
    return v1

    #@1f
    :cond_0
    long-to-int v1, v2

    #@20
    goto :goto_0

    #@21
    .line 231
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "result":J
    :cond_1
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    #@24
    move-result v1

    #@25
    return v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 237
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@3
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 236
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 216
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2
    .param p1, "target"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 220
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 221
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@7
    invoke-static {v1}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    #@a
    .line 222
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    #@c
    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    monitor-exit p0

    #@11
    return v1

    #@12
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method
