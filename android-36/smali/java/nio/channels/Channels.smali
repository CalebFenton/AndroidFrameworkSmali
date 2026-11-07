.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$ReadableByteChannelImpl;,
        Ljava/nio/channels/Channels$WritableByteChannelImpl;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smwriteFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;

    .line 348
    const-string v0, "in"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/FileInputStream;

    if-ne v0, v1, :cond_15

    .line 351
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 354
    :cond_15
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static whitelist test-api newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 426
    const-string v0, "out"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static whitelist test-api newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .line 200
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/nio/channels/Channels$2;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$2;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .line 121
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lsun/nio/ch/ChannelInputStream;

    invoke-direct {v0, p0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newOutputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .line 275
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/nio/channels/Channels$3;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$3;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;

    .line 140
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/nio/channels/Channels$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$1;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .line 553
    const-string v0, "csName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 585
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 586
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .line 518
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamDecoder;->forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .line 653
    const-string v0, "csName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 654
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/Charset;)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 687
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    .line 618
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 619
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamEncoder;->forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_20

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 92
    .local v0, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 95
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 96
    monitor-exit v1

    .line 97
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    goto :goto_23

    .line 94
    .restart local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_17
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local p0    # "ch":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v2

    .line 96
    .restart local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .restart local p0    # "ch":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v2

    .line 98
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_20
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 100
    :goto_23
    return-void
.end method

.method private static greylist-max-o writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_16

    .line 75
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 76
    .local v0, "n":I
    if-lez v0, :cond_e

    .line 78
    .end local v0    # "n":I
    goto :goto_1

    .line 77
    .restart local v0    # "n":I
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no bytes written"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "n":I
    :cond_16
    return-void
.end method
