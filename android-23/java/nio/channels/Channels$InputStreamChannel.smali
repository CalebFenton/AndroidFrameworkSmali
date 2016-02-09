.class Ljava/nio/channels/Channels$InputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamChannel"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    #@3
    .line 291
    if-nez p1, :cond_0

    #@5
    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "inputStream == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 294
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    #@10
    .line 290
    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 317
    return-void
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 298
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->isOpen()Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 299
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v3

    #@10
    monitor-exit p0

    #@11
    throw v3

    #@12
    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@15
    move-result v1

    #@16
    .line 302
    .local v1, "bytesRemain":I
    new-array v0, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 305
    .local v0, "bytes":[B
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->begin()V

    #@1b
    .line 306
    iget-object v5, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    #@1d
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    move-result v2

    #@21
    .line 308
    .local v2, "readCount":I
    if-ltz v2, :cond_2

    #@23
    :goto_0
    :try_start_3
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    #@26
    .line 310
    if-lez v2, :cond_1

    #@28
    .line 311
    const/4 v3, 0x0

    #@29
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    :cond_1
    monitor-exit p0

    #@2d
    .line 313
    return v2

    #@2e
    :cond_2
    move v3, v4

    #@2f
    .line 308
    goto :goto_0

    #@30
    .line 307
    .end local v2    # "readCount":I
    :catchall_1
    move-exception v3

    #@31
    .line 308
    const/4 v4, 0x1

    #@32
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    #@35
    .line 307
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
