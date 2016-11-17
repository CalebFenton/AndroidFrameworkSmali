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
.field private static final TRANSFER_SIZE:I = 0x2000


# instance fields
.field private buf:[B

.field in:Ljava/io/InputStream;

.field private open:Z

.field private readLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    #@3
    .line 215
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    #@8
    .line 216
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    #@b
    .line 217
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    #@12
    .line 220
    iput-object p1, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    #@14
    .line 219
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
    .line 255
    iget-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 256
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    #@8
    .line 254
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v2

    #@6
    .line 225
    .local v2, "len":I
    const/4 v3, 0x0

    #@7
    .line 226
    .local v3, "totalRead":I
    const/4 v0, 0x0

    #@8
    .line 227
    .local v0, "bytesRead":I
    iget-object v7, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    #@a
    monitor-enter v7

    #@b
    .line 228
    :goto_0
    if-ge v3, v2, :cond_1

    #@d
    .line 229
    sub-int v4, v2, v3

    #@f
    .line 230
    const/16 v8, 0x2000

    #@11
    .line 229
    :try_start_0
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v1

    #@15
    .line 231
    .local v1, "bytesToRead":I
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    #@17
    array-length v4, v4

    #@18
    if-ge v4, v1, :cond_0

    #@1a
    .line 232
    new-array v4, v1, [B

    #@1c
    iput-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    #@1e
    .line 233
    :cond_0
    if-lez v3, :cond_2

    #@20
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    #@22
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v4

    #@26
    if-gtz v4, :cond_2

    #@28
    .line 247
    .end local v1    # "bytesToRead":I
    :cond_1
    if-gez v0, :cond_5

    #@2a
    if-nez v3, :cond_5

    #@2c
    .line 248
    const/4 v4, -0x1

    #@2d
    monitor-exit v7

    #@2e
    return v4

    #@2f
    .line 236
    .restart local v1    # "bytesToRead":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->begin()V

    #@32
    .line 237
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    #@34
    iget-object v8, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    #@36
    const/4 v9, 0x0

    #@37
    invoke-virtual {v4, v8, v9, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    move-result v0

    #@3b
    .line 239
    if-lez v0, :cond_3

    #@3d
    move v4, v5

    #@3e
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    #@41
    .line 241
    if-ltz v0, :cond_1

    #@43
    .line 244
    add-int/2addr v3, v0

    #@44
    .line 245
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    #@46
    const/4 v8, 0x0

    #@47
    invoke-virtual {p1, v4, v8, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 227
    .end local v1    # "bytesToRead":I
    :catchall_0
    move-exception v4

    #@4c
    monitor-exit v7

    #@4d
    throw v4

    #@4e
    .restart local v1    # "bytesToRead":I
    :cond_3
    move v4, v6

    #@4f
    .line 239
    goto :goto_1

    #@50
    .line 238
    :catchall_1
    move-exception v4

    #@51
    .line 239
    if-lez v0, :cond_4

    #@53
    :goto_2
    :try_start_3
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    #@56
    .line 238
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    :cond_4
    move v5, v6

    #@58
    .line 239
    goto :goto_2

    #@59
    .end local v1    # "bytesToRead":I
    :cond_5
    monitor-exit v7

    #@5a
    .line 250
    return v3
.end method
