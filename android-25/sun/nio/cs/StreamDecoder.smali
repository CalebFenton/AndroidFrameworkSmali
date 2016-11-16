.class public Lsun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile channelsAvailable:Z


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/ReadableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private haveLeftoverChar:Z

.field private in:Ljava/io/InputStream;

.field private volatile isOpen:Z

.field private leftoverChar:C

.field private needsFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const-class v0, Lsun/nio/cs/StreamDecoder;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    sput-boolean v0, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@c
    .line 210
    sput-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    #@e
    .line 37
    return-void

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 233
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@3
    move-result-object v0

    #@4
    .line 234
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 233
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v0

    #@a
    .line 235
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 233
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@f
    move-result-object v0

    #@10
    .line 232
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    #@13
    .line 231
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dec"    # Ljava/nio/charset/CharsetDecoder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 239
    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    #@5
    .line 43
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    #@8
    .line 54
    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@a
    .line 57
    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    #@c
    .line 240
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    #@12
    .line 241
    iput-object p3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@14
    .line 249
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@16
    if-nez v0, :cond_0

    #@18
    .line 250
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@1a
    .line 251
    iput-object v2, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@1c
    .line 252
    const/16 v0, 0x2000

    #@1e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@24
    .line 254
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@29
    .line 238
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "mbc"    # I

    #@0
    .prologue
    const/16 v0, 0x20

    #@2
    const/4 v2, 0x0

    #@3
    .line 257
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@6
    .line 43
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    #@9
    .line 54
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@b
    .line 57
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    #@d
    .line 258
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@10
    .line 259
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@12
    .line 260
    iput-object p2, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@14
    .line 261
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    #@1a
    .line 262
    if-gez p3, :cond_1

    #@1c
    .line 263
    const/16 p3, 0x2000

    #@1e
    .line 262
    .end local p3    # "mbc":I
    :cond_0
    :goto_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@24
    .line 267
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@29
    .line 257
    return-void

    #@2a
    .line 264
    .restart local p3    # "mbc":I
    :cond_1
    if-ge p3, v0, :cond_0

    #@2c
    move p3, v0

    #@2d
    .line 265
    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 47
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 45
    :cond_0
    return-void
.end method

.method public static forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    #@0
    .prologue
    .line 97
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    #@5
    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    move-object v0, p2

    #@1
    .line 67
    .local v0, "csn":Ljava/lang/String;
    if-nez p2, :cond_0

    #@3
    .line 68
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 70
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 71
    new-instance v2, Lsun/nio/cs/StreamDecoder;

    #@13
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, p0, p1, v3}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v2

    #@1b
    .line 72
    :catch_0
    move-exception v1

    #@1c
    .line 73
    :cond_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@1e
    invoke-direct {v2, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 80
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    #@5
    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    #@0
    .prologue
    .line 87
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    #@5
    return-object v0
.end method

.method private static getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p0, "in"    # Ljava/io/FileInputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 213
    sget-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 214
    return-object v2

    #@6
    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 217
    :catch_0
    move-exception v0

    #@c
    .line 218
    .local v0, "x":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    #@d
    sput-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    #@f
    .line 219
    return-object v2
.end method

.method private inReady()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 399
    :try_start_0
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :goto_0
    return v1

    #@f
    .line 400
    :cond_0
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@11
    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    goto :goto_0

    #@14
    .line 401
    :catch_0
    move-exception v0

    #@15
    .line 402
    .local v0, "x":Ljava/io/IOException;
    return v2
.end method

.method private isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    #@2
    return v0
.end method

.method private read0()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 118
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 121
    :try_start_0
    iget-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 122
    const/4 v2, 0x0

    #@9
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@b
    .line 123
    iget-char v2, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v3

    #@e
    return v2

    #@f
    .line 127
    :cond_0
    const/4 v2, 0x2

    #@10
    :try_start_1
    new-array v0, v2, [C

    #@12
    .line 128
    .local v0, "cb":[C
    const/4 v2, 0x0

    #@13
    const/4 v4, 0x2

    #@14
    invoke-virtual {p0, v0, v2, v4}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    #@17
    move-result v1

    #@18
    .line 129
    .local v1, "n":I
    packed-switch v1, :pswitch_data_0

    #@1b
    .line 139
    :pswitch_0
    sget-boolean v2, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@1d
    if-nez v2, :cond_1

    #@1f
    new-instance v2, Ljava/lang/AssertionError;

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@28
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 118
    .end local v0    # "cb":[C
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2

    #@2c
    .restart local v0    # "cb":[C
    .restart local v1    # "n":I
    :pswitch_1
    monitor-exit v3

    #@2d
    .line 131
    return v5

    #@2e
    .line 133
    :pswitch_2
    const/4 v2, 0x1

    #@2f
    :try_start_2
    aget-char v2, v0, v2

    #@31
    iput-char v2, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    #@33
    .line 134
    const/4 v2, 0x1

    #@34
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@36
    .line 137
    :pswitch_3
    const/4 v2, 0x0

    #@37
    aget-char v2, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    monitor-exit v3

    #@3a
    return v2

    #@3b
    :cond_1
    monitor-exit v3

    #@3c
    .line 140
    return v5

    #@3d
    .line 129
    nop

    #@3e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readBytes()I
    .locals 9
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
    .line 271
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    #@7
    .line 273
    :try_start_0
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 277
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@d
    iget-object v7, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@f
    invoke-static {v6, v7}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    .line 278
    .local v1, "n":I
    if-gez v1, :cond_a

    #@15
    .line 298
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@1a
    .line 279
    return v1

    #@1b
    .line 282
    .end local v1    # "n":I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@1d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    #@20
    move-result v0

    #@21
    .line 283
    .local v0, "lim":I
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@23
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@26
    move-result v2

    #@27
    .line 284
    .local v2, "pos":I
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@29
    if-nez v6, :cond_2

    #@2b
    if-gt v2, v0, :cond_1

    #@2d
    move v6, v4

    #@2e
    :goto_0
    if-nez v6, :cond_2

    #@30
    new-instance v4, Ljava/lang/AssertionError;

    #@32
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@35
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 295
    .end local v0    # "lim":I
    .end local v2    # "pos":I
    :catchall_0
    move-exception v4

    #@37
    .line 298
    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@39
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@3c
    .line 295
    throw v4

    #@3d
    .restart local v0    # "lim":I
    .restart local v2    # "pos":I
    :cond_1
    move v6, v5

    #@3e
    .line 284
    goto :goto_0

    #@3f
    .line 285
    :cond_2
    if-gt v2, v0, :cond_3

    #@41
    sub-int v3, v0, v2

    #@43
    .line 286
    .local v3, "rem":I
    :goto_1
    :try_start_2
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@45
    if-nez v6, :cond_5

    #@47
    if-lez v3, :cond_4

    #@49
    move v6, v4

    #@4a
    :goto_2
    if-nez v6, :cond_5

    #@4c
    new-instance v4, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v4

    #@52
    .line 285
    .end local v3    # "rem":I
    :cond_3
    const/4 v3, 0x0

    #@53
    .restart local v3    # "rem":I
    goto :goto_1

    #@54
    :cond_4
    move v6, v5

    #@55
    .line 286
    goto :goto_2

    #@56
    .line 287
    :cond_5
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@58
    iget-object v7, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@5a
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    #@5d
    move-result-object v7

    #@5e
    iget-object v8, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@60
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@63
    move-result v8

    #@64
    add-int/2addr v8, v2

    #@65
    invoke-virtual {v6, v7, v8, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    move-result v1

    #@69
    .line 288
    .restart local v1    # "n":I
    if-gez v1, :cond_6

    #@6b
    .line 298
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@6d
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@70
    .line 289
    return v1

    #@71
    .line 290
    :cond_6
    if-nez v1, :cond_7

    #@73
    .line 291
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    #@75
    const-string/jumbo v5, "Underlying input stream returned zero bytes"

    #@78
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4

    #@7c
    .line 292
    :cond_7
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@7e
    if-nez v6, :cond_9

    #@80
    if-gt v1, v3, :cond_8

    #@82
    move v6, v4

    #@83
    :goto_3
    if-nez v6, :cond_9

    #@85
    new-instance v4, Ljava/lang/AssertionError;

    #@87
    new-instance v5, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v6, "n = "

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    const-string/jumbo v6, ", rem = "

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a9
    throw v4

    #@aa
    :cond_8
    move v6, v5

    #@ab
    goto :goto_3

    #@ac
    .line 293
    :cond_9
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@ae
    add-int v7, v2, v1

    #@b0
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b3
    .line 298
    .end local v0    # "lim":I
    .end local v2    # "pos":I
    .end local v3    # "rem":I
    :cond_a
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@b5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@b8
    .line 301
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@ba
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@bd
    move-result v3

    #@be
    .line 302
    .restart local v3    # "rem":I
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@c0
    if-nez v6, :cond_c

    #@c2
    if-eqz v3, :cond_b

    #@c4
    :goto_4
    if-nez v4, :cond_c

    #@c6
    new-instance v4, Ljava/lang/AssertionError;

    #@c8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v5

    #@cc
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@cf
    throw v4

    #@d0
    :cond_b
    move v4, v5

    #@d1
    goto :goto_4

    #@d2
    .line 303
    :cond_c
    return v3
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 192
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 193
    return-void

    #@9
    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implClose()V

    #@c
    .line 195
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 190
    return-void

    #@11
    .line 191
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method encodingName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    #@2
    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 393
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    #@8
    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@a
    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 392
    :goto_0
    return-object v0

    #@f
    .line 394
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 109
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 110
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method implClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 412
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    #@6
    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    #@9
    .line 410
    :goto_0
    return-void

    #@a
    .line 414
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@f
    goto :goto_0
.end method

.method implRead([CII)I
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 312
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@5
    if-nez v6, :cond_1

    #@7
    sub-int v6, p3, p2

    #@9
    if-le v6, v5, :cond_0

    #@b
    move v6, v5

    #@c
    :goto_0
    if-nez v6, :cond_1

    #@e
    new-instance v4, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v4

    #@14
    :cond_0
    move v6, v4

    #@15
    goto :goto_0

    #@16
    .line 314
    :cond_1
    sub-int v6, p3, p2

    #@18
    invoke-static {p1, p2, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@1b
    move-result-object v0

    #@1c
    .line 315
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 317
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    #@25
    move-result-object v0

    #@26
    .line 320
    :cond_2
    iget-boolean v6, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    #@28
    if-eqz v6, :cond_6

    #@2a
    .line 321
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@2c
    invoke-virtual {v6, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@2f
    move-result-object v1

    #@30
    .line 322
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    .line 324
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@39
    move-result v4

    #@3a
    return v4

    #@3b
    .line 328
    :cond_3
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_5

    #@41
    .line 329
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_4

    #@47
    .line 330
    return v8

    #@48
    .line 333
    :cond_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@4b
    move-result v4

    #@4c
    return v4

    #@4d
    .line 336
    :cond_5
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@50
    .line 340
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_6
    const/4 v2, 0x0

    #@51
    .line 342
    .local v2, "eof":Z
    :cond_7
    :goto_1
    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@53
    iget-object v7, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@55
    invoke-virtual {v6, v7, v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@58
    move-result-object v1

    #@59
    .line 343
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_b

    #@5f
    .line 344
    if-eqz v2, :cond_9

    #@61
    .line 370
    :cond_8
    if-eqz v2, :cond_f

    #@63
    .line 371
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@65
    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@68
    move-result-object v1

    #@69
    .line 372
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_e

    #@6f
    .line 373
    iput-boolean v5, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    #@71
    .line 374
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@74
    move-result v4

    #@75
    return v4

    #@76
    .line 346
    :cond_9
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_8

    #@7c
    .line 348
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@7f
    move-result v6

    #@80
    if-lez v6, :cond_a

    #@82
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_8

    #@88
    .line 350
    :cond_a
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->readBytes()I

    #@8b
    move-result v3

    #@8c
    .line 351
    .local v3, "n":I
    if-gez v3, :cond_7

    #@8e
    .line 352
    const/4 v2, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 363
    .end local v3    # "n":I
    :cond_b
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@93
    move-result v6

    #@94
    if-eqz v6, :cond_d

    #@96
    .line 364
    sget-boolean v6, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@98
    if-nez v6, :cond_8

    #@9a
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@9d
    move-result v6

    #@9e
    if-lez v6, :cond_c

    #@a0
    move v4, v5

    #@a1
    :cond_c
    if-nez v4, :cond_8

    #@a3
    new-instance v4, Ljava/lang/AssertionError;

    #@a5
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@a8
    throw v4

    #@a9
    .line 367
    :cond_d
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@ac
    goto :goto_1

    #@ad
    .line 377
    :cond_e
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    #@af
    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@b2
    .line 378
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@b5
    move-result v4

    #@b6
    if-nez v4, :cond_f

    #@b8
    .line 379
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@bb
    .line 383
    :cond_f
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@be
    move-result v4

    #@bf
    if-nez v4, :cond_11

    #@c1
    .line 384
    if-eqz v2, :cond_10

    #@c3
    .line 385
    return v8

    #@c4
    .line 386
    :cond_10
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    #@c6
    if-nez v4, :cond_11

    #@c8
    new-instance v4, Ljava/lang/AssertionError;

    #@ca
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@cd
    throw v4

    #@ce
    .line 388
    :cond_11
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    #@d1
    move-result v4

    #@d2
    return v4
.end method

.method implReady()Z
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public read([CII)I
    .locals 10
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 146
    move v3, p2

    #@4
    .line 147
    .local v3, "off":I
    move v1, p3

    #@5
    .line 148
    .local v1, "len":I
    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    #@7
    monitor-enter v5

    #@8
    .line 149
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    #@b
    .line 150
    if-ltz p2, :cond_0

    #@d
    array-length v6, p1

    #@e
    if-le p2, v6, :cond_1

    #@10
    .line 152
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 148
    :catchall_0
    move-exception v4

    #@17
    monitor-exit v5

    #@18
    throw v4

    #@19
    .line 150
    :cond_1
    if-ltz p3, :cond_0

    #@1b
    .line 151
    add-int v6, p2, p3

    #@1d
    :try_start_1
    array-length v7, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-gt v6, v7, :cond_0

    #@20
    add-int v6, p2, p3

    #@22
    if-ltz v6, :cond_0

    #@24
    .line 154
    if-nez p3, :cond_2

    #@26
    monitor-exit v5

    #@27
    .line 155
    return v8

    #@28
    .line 157
    :cond_2
    const/4 v2, 0x0

    #@29
    .line 159
    .local v2, "n":I
    :try_start_2
    iget-boolean v6, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@2b
    if-eqz v6, :cond_3

    #@2d
    .line 161
    iget-char v6, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    #@2f
    aput-char v6, p1, p2

    #@31
    .line 162
    add-int/lit8 v3, p2, 0x1

    #@33
    add-int/lit8 v1, p3, -0x1

    #@35
    .line 163
    const/4 v6, 0x0

    #@36
    iput-boolean v6, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@38
    .line 164
    const/4 v2, 0x1

    #@39
    .line 165
    if-eqz v1, :cond_5

    #@3b
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_5

    #@41
    .line 170
    :cond_3
    if-ne v1, v9, :cond_7

    #@43
    .line 172
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result v0

    #@47
    .line 173
    .local v0, "c":I
    if-ne v0, v4, :cond_6

    #@49
    .line 174
    if-nez v2, :cond_4

    #@4b
    move v2, v4

    #@4c
    .end local v2    # "n":I
    :cond_4
    monitor-exit v5

    #@4d
    return v2

    #@4e
    .end local v0    # "c":I
    .restart local v2    # "n":I
    :cond_5
    monitor-exit v5

    #@4f
    .line 167
    return v9

    #@50
    .line 175
    .restart local v0    # "c":I
    :cond_6
    int-to-char v4, v0

    #@51
    :try_start_3
    aput-char v4, p1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    .line 176
    add-int/lit8 v4, v2, 0x1

    #@55
    monitor-exit v5

    #@56
    return v4

    #@57
    .line 179
    .end local v0    # "c":I
    :cond_7
    add-int v4, v3, v1

    #@59
    :try_start_4
    invoke-virtual {p0, p1, v3, v4}, Lsun/nio/cs/StreamDecoder;->implRead([CII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5c
    move-result v4

    #@5d
    add-int/2addr v4, v2

    #@5e
    monitor-exit v5

    #@5f
    return v4
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 185
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    #@6
    .line 186
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    :goto_0
    monitor-exit v1

    #@f
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 184
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
