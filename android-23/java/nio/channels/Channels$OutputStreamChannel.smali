.class Ljava/nio/channels/Channels$OutputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputStreamChannel"
.end annotation


# instance fields
.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 329
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    #@3
    .line 330
    if-nez p1, :cond_0

    #@5
    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "outputStream == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 333
    :cond_0
    iput-object p1, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    #@10
    .line 329
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
    .line 357
    iget-object v0, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 356
    return-void
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
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
    .line 337
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Channels$OutputStreamChannel;->isOpen()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 338
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v2

    #@10
    monitor-exit p0

    #@11
    throw v2

    #@12
    .line 340
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result v1

    #@16
    .line 341
    .local v1, "bytesRemain":I
    if-nez v1, :cond_1

    #@18
    monitor-exit p0

    #@19
    .line 342
    return v4

    #@1a
    .line 344
    :cond_1
    :try_start_2
    new-array v0, v1, [B

    #@1c
    .line 345
    .local v0, "buf":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    .line 347
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/Channels$OutputStreamChannel;->begin()V

    #@22
    .line 348
    iget-object v2, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    #@24
    const/4 v5, 0x0

    #@25
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 350
    if-ltz v1, :cond_2

    #@2a
    :goto_0
    :try_start_4
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$OutputStreamChannel;->end(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 352
    return v1

    #@2f
    :cond_2
    move v3, v4

    #@30
    .line 350
    goto :goto_0

    #@31
    .line 349
    :catchall_1
    move-exception v2

    #@32
    .line 350
    if-ltz v1, :cond_3

    #@34
    :goto_1
    :try_start_5
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$OutputStreamChannel;->end(Z)V

    #@37
    .line 349
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@38
    :cond_3
    move v3, v4

    #@39
    .line 350
    goto :goto_1
.end method
