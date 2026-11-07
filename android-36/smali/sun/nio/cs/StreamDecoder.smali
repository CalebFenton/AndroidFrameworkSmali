.class public Lsun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final blacklist MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile blacklist channelsAvailable:Z


# instance fields
.field private blacklist bb:Ljava/nio/ByteBuffer;

.field private blacklist ch:Ljava/nio/channels/ReadableByteChannel;

.field private blacklist cs:Ljava/nio/charset/Charset;

.field private blacklist decoder:Ljava/nio/charset/CharsetDecoder;

.field private blacklist haveLeftoverChar:Z

.field private blacklist in:Ljava/io/InputStream;

.field private volatile blacklist isOpen:Z

.field private blacklist leftoverChar:C

.field private blacklist needsFlush:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    nop

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .line 234
    nop

    .line 235
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 236
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 237
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    .line 238
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 241
    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 58
    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 242
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 243
    iput-object p3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 251
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_24

    .line 252
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 254
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 256
    :cond_24
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .registers 5
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "mbc"    # I

    .line 259
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 58
    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 261
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 262
    iput-object p2, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 263
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 264
    if-gez p3, :cond_1d

    .line 265
    const/16 v0, 0x2000

    goto :goto_23

    .line 266
    :cond_1d
    const/16 v0, 0x20

    if-ge p3, v0, :cond_22

    .line 267
    goto :goto_23

    .line 268
    :cond_22
    move v0, p3

    .line 264
    :goto_23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 269
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 270
    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    if-eqz v0, :cond_5

    .line 48
    return-void

    .line 47
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .line 98
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static blacklist forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 67
    move-object v0, p2

    .line 68
    .local v0, "csn":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 69
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 72
    new-instance v1, Lsun/nio/cs/StreamDecoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_1a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_b .. :try_end_1a} :catch_1b

    return-object v1

    .line 73
    :catch_1b
    move-exception v1

    :cond_1c
    nop

    .line 74
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 81
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static blacklist forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 88
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method private static blacklist getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .registers 4
    .param p0, "in"    # Ljava/io/FileInputStream;

    .line 215
    sget-boolean v0, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 216
    return-object v1

    .line 218
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 219
    :catch_b
    move-exception v0

    .line 220
    .local v0, "x":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x0

    sput-boolean v2, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    .line 221
    return-object v1
.end method

.method private blacklist inReady()Z
    .registers 3

    .line 408
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_13

    :cond_d
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    return v0

    .line 410
    :catch_15
    move-exception v1

    .line 411
    .local v1, "x":Ljava/io/IOException;
    return v0
.end method

.method private blacklist isOpen()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    return v0
.end method

.method private blacklist read0()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 124
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 125
    iget-char v1, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    monitor-exit v0

    return v1

    .line 129
    :cond_e
    const/4 v1, 0x2

    new-array v3, v1, [C

    .line 130
    .local v3, "cb":[C
    invoke-virtual {p0, v3, v2, v1}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    move-result v1

    .line 131
    .local v1, "n":I
    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_2c

    .line 141
    :pswitch_19
    goto :goto_27

    .line 135
    :pswitch_1a
    const/4 v4, 0x1

    aget-char v5, v3, v4

    iput-char v5, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    .line 136
    iput-boolean v4, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 139
    :pswitch_21
    aget-char v2, v3, v2

    monitor-exit v0

    return v2

    .line 133
    :pswitch_25
    monitor-exit v0

    return v4

    .line 142
    :goto_27
    monitor-exit v0

    return v4

    .line 144
    .end local v1    # "n":I
    .end local v3    # "cb":[C
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_25
        :pswitch_19
        :pswitch_21
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist readBytes()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 275
    :try_start_5
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_1c

    .line 281
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;Z)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_6c

    .line 282
    .local v0, "n":I
    if-gez v0, :cond_1b

    .line 283
    nop

    .line 302
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 283
    return v0

    .line 284
    .end local v0    # "n":I
    :cond_1b
    goto :goto_56

    .line 286
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 287
    .local v0, "lim":I
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 288
    .local v1, "pos":I
    nop

    .line 289
    if-gt v1, v0, :cond_2e

    sub-int v2, v0, v1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    .line 290
    .local v2, "rem":I
    :goto_2f
    nop

    .line 291
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_6c

    .line 292
    .local v3, "n":I
    if-gez v3, :cond_4c

    .line 293
    nop

    .line 302
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 293
    return v3

    .line 294
    :cond_4c
    if-eqz v3, :cond_64

    .line 296
    nop

    .line 297
    :try_start_4f
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_6c

    .line 302
    .end local v0    # "lim":I
    .end local v1    # "pos":I
    .end local v2    # "rem":I
    .end local v3    # "n":I
    :goto_56
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    nop

    .line 305
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 306
    .local v0, "rem":I
    nop

    .line 307
    return v0

    .line 295
    .local v0, "lim":I
    .restart local v1    # "pos":I
    .restart local v2    # "rem":I
    .restart local v3    # "n":I
    :cond_64
    :try_start_64
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Underlying input stream returned zero bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/cs/StreamDecoder;
    throw v4
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6c

    .line 302
    .end local v0    # "lim":I
    .end local v1    # "pos":I
    .end local v2    # "rem":I
    .end local v3    # "n":I
    .restart local p0    # "this":Lsun/nio/cs/StreamDecoder;
    :catchall_6c
    move-exception v0

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 303
    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    if-nez v1, :cond_9

    .line 195
    monitor-exit v0

    return-void

    .line 196
    :cond_9
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implClose()V

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method blacklist encodingName()Ljava/lang/String;
    .registers 2

    .line 401
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    .line 402
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 403
    :cond_f
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_15
    return-object v0
.end method

.method public blacklist getEncoding()Ljava/lang/String;
    .registers 2

    .line 109
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist implClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_a

    .line 421
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_f

    .line 423
    :cond_a
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 424
    :goto_f
    return-void
.end method

.method blacklist implRead([CII)I
    .registers 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    nop

    .line 318
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 319
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_11

    .line 321
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 324
    :cond_11
    iget-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_3c

    .line 325
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 326
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 328
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    .line 332
    :cond_27
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 333
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-nez v3, :cond_34

    .line 334
    return v2

    .line 337
    :cond_34
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    .line 340
    :cond_39
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 345
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3c
    const/4 v1, 0x0

    .line 347
    .local v1, "eof":Z
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 348
    .local v3, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 349
    if-eqz v1, :cond_4e

    .line 350
    goto :goto_71

    .line 351
    :cond_4e
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_55

    .line 352
    goto :goto_71

    .line 353
    :cond_55
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-lez v4, :cond_62

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v4

    if-nez v4, :cond_62

    .line 354
    goto :goto_71

    .line 355
    :cond_62
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->readBytes()I

    move-result v4

    .line 356
    .local v4, "n":I
    if-gez v4, :cond_3d

    .line 357
    const/4 v1, 0x1

    goto :goto_3d

    .line 368
    .end local v4    # "n":I
    :cond_6a
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 369
    nop

    .line 375
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    :goto_71
    if-eqz v1, :cond_95

    .line 379
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 380
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 382
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    .line 385
    :cond_87
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 386
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_95

    .line 387
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 392
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_95
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-nez v3, :cond_9f

    .line 393
    if-eqz v1, :cond_9e

    .line 394
    return v2

    .line 395
    :cond_9e
    nop

    .line 397
    :cond_9f
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    .line 372
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_a4
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 373
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_3d
.end method

.method blacklist implReady()Z
    .registers 2

    .line 416
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([CII)I
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    move v0, p2

    .line 149
    .local v0, "off":I
    move v1, p3

    .line 150
    .local v1, "len":I
    iget-object v2, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_5
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 152
    if-ltz v0, :cond_57

    array-length v3, p1

    if-gt v0, v3, :cond_57

    if-ltz v1, :cond_57

    add-int v3, v0, v1

    array-length v4, p1

    if-gt v3, v4, :cond_57

    add-int v3, v0, v1

    if-ltz v3, :cond_57

    .line 156
    const/4 v3, 0x0

    if-nez v1, :cond_1d

    .line 157
    monitor-exit v2

    return v3

    .line 159
    :cond_1d
    const/4 v4, 0x0

    .line 161
    .local v4, "n":I
    iget-boolean v5, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v5, :cond_37

    .line 163
    iget-char v5, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    aput-char v5, p1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 165
    iput-boolean v3, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 166
    const/4 v4, 0x1

    .line 167
    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z

    move-result v3

    if-nez v3, :cond_37

    .line 169
    :cond_35
    monitor-exit v2

    return v4

    .line 172
    :cond_37
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4e

    .line 174
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    move-result v3

    .line 175
    .local v3, "c":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_47

    .line 176
    if-nez v4, :cond_44

    goto :goto_45

    :cond_44
    move v5, v4

    :goto_45
    monitor-exit v2

    return v5

    .line 177
    :cond_47
    int-to-char v5, v3

    aput-char v5, p1, v0

    .line 178
    add-int/lit8 v5, v4, 0x1

    monitor-exit v2

    return v5

    .line 181
    .end local v3    # "c":I
    :cond_4e
    add-int v3, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lsun/nio/cs/StreamDecoder;->implRead([CII)I

    move-result v3

    add-int/2addr v3, v4

    monitor-exit v2

    return v3

    .line 154
    .end local v4    # "n":I
    :cond_57
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local v0    # "off":I
    .end local v1    # "len":I
    .end local p0    # "this":Lsun/nio/cs/StreamDecoder;
    .end local p1    # "cbuf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v3

    .line 182
    .restart local v0    # "off":I
    .restart local v1    # "len":I
    .restart local p0    # "this":Lsun/nio/cs/StreamDecoder;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public whitelist test-api ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 188
    iget-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    monitor-exit v0

    return v1

    .line 189
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
