.class Ljava/nio/channels/Channels$WritableByteChannelImpl;
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
    name = "WritableByteChannelImpl"
.end annotation


# static fields
.field private static final TRANSFER_SIZE:I = 0x2000


# instance fields
.field private buf:[B

.field private open:Z

.field out:Ljava/io/OutputStream;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    #@3
    .line 284
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    #@8
    .line 285
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->open:Z

    #@b
    .line 286
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    #@12
    .line 289
    iput-object p1, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    #@14
    .line 288
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
    .line 315
    iget-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 316
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->open:Z

    #@8
    .line 314
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 293
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@5
    move-result v1

    #@6
    .line 294
    .local v1, "len":I
    const/4 v2, 0x0

    #@7
    .line 295
    .local v2, "totalWritten":I
    iget-object v6, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 296
    :goto_0
    if-ge v2, v1, :cond_3

    #@c
    .line 297
    sub-int v3, v1, v2

    #@e
    .line 298
    const/16 v7, 0x2000

    #@10
    .line 297
    :try_start_0
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v0

    #@14
    .line 299
    .local v0, "bytesToWrite":I
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    #@16
    array-length v3, v3

    #@17
    if-ge v3, v0, :cond_0

    #@19
    .line 300
    new-array v3, v0, [B

    #@1b
    iput-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    #@1d
    .line 301
    :cond_0
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    #@1f
    const/4 v7, 0x0

    #@20
    invoke-virtual {p1, v3, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@23
    .line 303
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    #@26
    .line 304
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    #@28
    iget-object v7, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    #@2a
    const/4 v8, 0x0

    #@2b
    invoke-virtual {v3, v7, v8, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 306
    if-lez v0, :cond_1

    #@30
    move v3, v4

    #@31
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@34
    .line 308
    add-int/2addr v2, v0

    #@35
    goto :goto_0

    #@36
    :cond_1
    move v3, v5

    #@37
    .line 306
    goto :goto_1

    #@38
    .line 305
    :catchall_0
    move-exception v3

    #@39
    .line 306
    if-lez v0, :cond_2

    #@3b
    :goto_2
    invoke-virtual {p0, v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    #@3e
    .line 305
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3f
    .line 295
    .end local v0    # "bytesToWrite":I
    :catchall_1
    move-exception v3

    #@40
    monitor-exit v6

    #@41
    throw v3

    #@42
    .restart local v0    # "bytesToWrite":I
    :cond_2
    move v4, v5

    #@43
    .line 306
    goto :goto_2

    #@44
    .end local v0    # "bytesToWrite":I
    :cond_3
    monitor-exit v6

    #@45
    .line 310
    return v2
.end method
