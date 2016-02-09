.class Ljava/nio/channels/Channels$ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 249
    if-nez p1, :cond_0

    #@5
    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "channel == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 252
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    #@10
    .line 248
    return-void
.end method


# virtual methods
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
    .line 273
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    #@3
    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 272
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 257
    const/4 v1, 0x1

    #@2
    :try_start_0
    new-array v0, v1, [B

    #@4
    int-to-byte v1, p1

    #@5
    const/4 v2, 0x0

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 258
    .local v0, "wrappedByte":[B
    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$ChannelOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 256
    return-void

    #@d
    .end local v0    # "wrappedByte":[B
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "source"    # [B
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
    .line 263
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 264
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    #@7
    invoke-static {v2}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    #@a
    .line 265
    const/4 v1, 0x0

    #@b
    .line 266
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_0

    #@d
    .line 267
    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    #@f
    invoke-interface {v2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    goto :goto_0

    #@15
    :cond_0
    monitor-exit p0

    #@16
    .line 262
    return-void

    #@17
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "total":I
    :catchall_0
    move-exception v2

    #@18
    monitor-exit p0

    #@19
    throw v2
.end method
