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
.field private static final greylist-max-o TRANSFER_SIZE:I = 0x2000


# instance fields
.field private greylist-max-o buf:[B

.field private final greylist-max-o out:Ljava/io/OutputStream;

.field private final greylist-max-o writeLock:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 448
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 445
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    .line 449
    iput-object p1, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    .line 450
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

    .line 481
    iget-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 482
    return-void
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 458
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 459
    .local v0, "len":I
    const/4 v1, 0x0

    .line 460
    .local v1, "totalWritten":I
    iget-object v2, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 461
    :goto_e
    if-ge v1, v0, :cond_44

    .line 462
    sub-int v3, v0, v1

    const/16 v4, 0x2000

    :try_start_14
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 464
    .local v3, "bytesToWrite":I
    iget-object v4, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    array-length v4, v4

    if-ge v4, v3, :cond_21

    .line 465
    new-array v4, v3, [B

    iput-object v4, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    .line 466
    :cond_21
    iget-object v4, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_46

    .line 468
    const/4 v4, 0x1

    :try_start_28
    invoke-virtual {p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->begin()V

    .line 469
    iget-object v6, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    invoke-virtual {v6, v7, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3b

    .line 471
    if-lez v3, :cond_35

    move v5, v4

    :cond_35
    :try_start_35
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->end(Z)V

    .line 472
    nop

    .line 473
    add-int/2addr v1, v3

    .line 474
    .end local v3    # "bytesToWrite":I
    goto :goto_e

    .line 471
    .restart local v3    # "bytesToWrite":I
    :catchall_3b
    move-exception v6

    if-lez v3, :cond_3f

    move v5, v4

    :cond_3f
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->end(Z)V

    .line 472
    nop

    .end local v0    # "len":I
    .end local v1    # "totalWritten":I
    .end local p0    # "this":Ljava/nio/channels/Channels$WritableByteChannelImpl;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    throw v6

    .line 475
    .end local v3    # "bytesToWrite":I
    .restart local v0    # "len":I
    .restart local v1    # "totalWritten":I
    .restart local p0    # "this":Ljava/nio/channels/Channels$WritableByteChannelImpl;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    :cond_44
    monitor-exit v2

    return v1

    .line 476
    :catchall_46
    move-exception v3

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_46

    throw v3

    .line 455
    .end local v0    # "len":I
    .end local v1    # "totalWritten":I
    :cond_49
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
