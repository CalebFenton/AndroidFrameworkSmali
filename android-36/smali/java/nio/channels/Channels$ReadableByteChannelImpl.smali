.class Ljava/nio/channels/Channels$ReadableByteChannelImpl;
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
    name = "ReadableByteChannelImpl"
.end annotation


# static fields
.field private static final greylist-max-o TRANSFER_SIZE:I = 0x2000


# instance fields
.field private greylist-max-o buf:[B

.field private final greylist-max-o in:Ljava/io/InputStream;

.field private final greylist-max-o readLock:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 366
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 363
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    .line 364
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    .line 367
    iput-object p1, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    .line 368
    return-void
.end method


# virtual methods
.method protected whitelist test-api implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 409
    return-void
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 377
    .local v0, "len":I
    const/4 v1, 0x0

    .line 378
    .local v1, "totalRead":I
    const/4 v2, 0x0

    .line 379
    .local v2, "bytesRead":I
    iget-object v3, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3

    .line 380
    :goto_f
    if-ge v1, v0, :cond_5a

    .line 381
    sub-int v4, v0, v1

    const/16 v5, 0x2000

    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 383
    .local v4, "bytesToRead":I
    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    array-length v5, v5

    if-ge v5, v4, :cond_22

    .line 384
    new-array v5, v4, [B

    iput-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    .line 385
    :cond_22
    if-lez v1, :cond_2d

    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_58

    if-gtz v5, :cond_2d

    .line 386
    goto :goto_5a

    .line 388
    :cond_2d
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_2f
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->begin()V

    .line 389
    iget-object v7, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    invoke-virtual {v7, v8, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_4e

    move v2, v7

    .line 391
    if-lez v2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v6

    :goto_3f
    :try_start_3f
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 392
    nop

    .line 393
    if-gez v2, :cond_46

    .line 394
    goto :goto_5a

    .line 396
    :cond_46
    add-int/2addr v1, v2

    .line 397
    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    invoke-virtual {p1, v5, v6, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 398
    nop

    .end local v4    # "bytesToRead":I
    goto :goto_f

    .line 391
    .restart local v4    # "bytesToRead":I
    :catchall_4e
    move-exception v7

    if-lez v2, :cond_52

    goto :goto_53

    :cond_52
    move v5, v6

    :goto_53
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 392
    nop

    .end local v0    # "len":I
    .end local v1    # "totalRead":I
    .end local v2    # "bytesRead":I
    .end local p0    # "this":Ljava/nio/channels/Channels$ReadableByteChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v7

    .line 403
    .end local v4    # "bytesToRead":I
    .restart local v0    # "len":I
    .restart local v1    # "totalRead":I
    .restart local v2    # "bytesRead":I
    .restart local p0    # "this":Ljava/nio/channels/Channels$ReadableByteChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_58
    move-exception v4

    goto :goto_63

    .line 399
    :cond_5a
    :goto_5a
    if-gez v2, :cond_61

    if-nez v1, :cond_61

    .line 400
    monitor-exit v3

    const/4 v3, -0x1

    return v3

    .line 402
    :cond_61
    monitor-exit v3

    return v1

    .line 403
    :goto_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_58

    throw v4

    .line 373
    .end local v0    # "len":I
    .end local v1    # "totalRead":I
    .end local v2    # "bytesRead":I
    :cond_65
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
