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
.method static synthetic -wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    if-nez p0, :cond_0

    #@2
    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "\""

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "\" is null!"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 66
    :cond_0
    return-void
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 199
    const-string/jumbo v0, "in"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 201
    instance-of v0, p0, Ljava/io/FileInputStream;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 202
    const-class v0, Ljava/io/FileInputStream;

    #@c
    invoke-virtual {p0}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 201
    if-eqz v0, :cond_0

    #@16
    .line 203
    check-cast p0, Ljava/io/FileInputStream;

    #@18
    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 206
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    #@1f
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    #@22
    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 274
    const-string/jumbo v0, "out"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 275
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    #@8
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    #@b
    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, "ch"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 126
    new-instance v0, Lsun/nio/ch/ChannelInputStream;

    #@8
    invoke-direct {v0, p0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    #@b
    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "ch"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 146
    new-instance v0, Ljava/nio/channels/Channels$1;

    #@8
    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$1;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    #@b
    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    const-string/jumbo v0, "csName"

    #@3
    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 390
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@d
    move-result-object v0

    #@e
    const/4 v1, -0x1

    #@f
    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    #@0
    .prologue
    .line 353
    const-string/jumbo v0, "ch"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 354
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamDecoder;->forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 458
    const-string/jumbo v0, "csName"

    #@3
    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 459
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@d
    move-result-object v0

    #@e
    const/4 v1, -0x1

    #@f
    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    #@0
    .prologue
    .line 422
    const-string/jumbo v0, "ch"

    #@3
    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 423
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamEncoder;->forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    instance-of v1, p0, Ljava/nio/channels/SelectableChannel;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v0, p0

    #@5
    .line 95
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    #@7
    .line 96
    .local v0, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2

    #@c
    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 98
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@14
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@17
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 96
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 99
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 92
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_0
    return-void

    #@20
    .line 102
    :cond_1
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    #@23
    goto :goto_0
.end method

.method private static writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_1

    #@6
    .line 79
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    #@9
    move-result v0

    #@a
    .line 80
    .local v0, "n":I
    if-gtz v0, :cond_0

    #@c
    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "no bytes written"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 76
    .end local v0    # "n":I
    :cond_1
    return-void
.end method
