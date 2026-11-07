.class public Lsun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private blacklist bb:Ljava/nio/ByteBuffer;

.field private blacklist ch:Ljava/nio/channels/WritableByteChannel;

.field private blacklist cs:Ljava/nio/charset/Charset;

.field private blacklist encoder:Ljava/nio/charset/CharsetEncoder;

.field private blacklist haveLeftoverChar:Z

.field private volatile blacklist isOpen:Z

.field private blacklist lcb:Ljava/nio/CharBuffer;

.field private blacklist leftoverChar:C

.field private final blacklist out:Ljava/io/OutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .line 187
    nop

    .line 188
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 189
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 190
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    .line 191
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 194
    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 195
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 196
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 197
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 198
    iput-object p3, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 206
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_24

    .line 207
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 209
    :cond_24
    return-void
.end method

.method private constructor blacklist <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 5
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "mbc"    # I

    .line 211
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 212
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 213
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 214
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 215
    iput-object p2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 216
    if-gez p3, :cond_1d

    .line 217
    const/16 v0, 0x2000

    goto :goto_1e

    .line 218
    :cond_1d
    move v0, p3

    .line 216
    :goto_1e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 219
    return-void
.end method

.method private blacklist ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    if-eqz v0, :cond_5

    .line 46
    return-void

    .line 45
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .registers 6
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .param p2, "endOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-nez v0, :cond_7

    if-nez p2, :cond_7

    .line 243
    return-void

    .line 244
    :cond_7
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    if-nez v0, :cond_13

    .line 245
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    goto :goto_18

    .line 247
    :cond_13
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 248
    :goto_18
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v0, :cond_23

    .line 249
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 250
    :cond_23
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 251
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 252
    :cond_34
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 253
    :goto_39
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz p2, :cond_6f

    .line 254
    :cond_43
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 255
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 256
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 257
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    .line 258
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 259
    invoke-direct {p0, p1, p2}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 260
    :cond_6e
    return-void

    .line 271
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_6f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 272
    return-void

    .line 264
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_73
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 265
    nop

    .line 266
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 267
    goto :goto_39

    .line 269
    :cond_7e
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 270
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_39
.end method

.method public static blacklist forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    .line 85
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public static blacklist forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;
    .registers 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 54
    move-object v0, p2

    .line 55
    .local v0, "csn":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 56
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 59
    new-instance v1, Lsun/nio/cs/StreamEncoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_1a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_b .. :try_end_1a} :catch_1b

    return-object v1

    .line 60
    :catch_1b
    move-exception v1

    :cond_1c
    nop

    .line 61
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;
    .registers 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 68
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static blacklist forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;
    .registers 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 75
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method

.method private blacklist isOpen()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    return v0
.end method

.method private blacklist writeBytes()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 223
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 224
    .local v0, "lim":I
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 225
    .local v1, "pos":I
    nop

    .line 226
    if-gt v1, v0, :cond_17

    sub-int v2, v0, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 228
    .local v2, "rem":I
    :goto_18
    if-lez v2, :cond_3b

    .line 229
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_29

    .line 230
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eq v3, v2, :cond_3b

    .line 231
    goto :goto_3b

    .line 233
    :cond_29
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 236
    :cond_3b
    :goto_3b
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    if-nez v1, :cond_9

    .line 160
    monitor-exit v0

    return-void

    .line 161
    :cond_9
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implClose()V

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method blacklist encodingName()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_f

    .line 347
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 348
    :cond_f
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_15
    return-object v0
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 153
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlush()V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 106
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/cs/StreamEncoder;
    throw v1

    .line 107
    .restart local p0    # "this":Lsun/nio/cs/StreamEncoder;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist getEncoding()Ljava/lang/String;
    .registers 2

    .line 96
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist implClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 322
    :goto_5
    :try_start_5
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 323
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 324
    nop

    .line 333
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1f

    .line 334
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 335
    :cond_1f
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_29

    .line 336
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    goto :goto_2e

    .line 338
    :cond_29
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 342
    :goto_2e
    nop

    .line 343
    return-void

    .line 325
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_30
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 326
    nop

    .line 327
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 328
    goto :goto_5

    .line 330
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3e} :catch_3f

    .line 331
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_5

    .line 339
    :catch_3f
    move-exception v0

    .line 340
    .local v0, "x":Ljava/io/IOException;
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 341
    throw v0
.end method

.method blacklist implFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 314
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    .line 315
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 316
    :cond_c
    return-void
.end method

.method blacklist implFlushBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_b

    .line 309
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 310
    :cond_b
    return-void
.end method

.method blacklist implWrite(Ljava/nio/CharBuffer;)V
    .registers 5
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 285
    invoke-direct {p0, p1, v1}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 288
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 289
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 290
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 291
    nop

    .line 292
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 293
    iput-boolean v2, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 294
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    goto :goto_3c

    .line 298
    :cond_2d
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 299
    nop

    .line 300
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    .line 301
    goto :goto_8

    .line 303
    :cond_38
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 304
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_8

    .line 305
    :cond_3c
    :goto_3c
    return-void
.end method

.method blacklist implWrite([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 278
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p0, v0}, Lsun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    .line 279
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    new-array v1, v0, [C

    .line 112
    .local v1, "cbuf":[C
    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 113
    invoke-virtual {p0, v1, v3, v0}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 114
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-ltz p3, :cond_e

    .line 145
    new-array v0, p3, [C

    .line 146
    .local v0, "cbuf":[C
    add-int v1, p2, p3

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 147
    invoke-virtual {p0, v0, v2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    .line 148
    return-void

    .line 144
    .end local v0    # "cbuf":[C
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist write(Ljava/nio/CharBuffer;)V
    .registers 5
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 132
    .local v0, "position":I
    :try_start_4
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_16

    .line 133
    :try_start_7
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 134
    invoke-virtual {p0, p1}, Lsun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    .line 135
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 137
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    nop

    .line 139
    return-void

    .line 135
    :catchall_13
    move-exception v2

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    .end local v0    # "position":I
    .end local p0    # "this":Lsun/nio/cs/StreamEncoder;
    .end local p1    # "cb":Ljava/nio/CharBuffer;
    :try_start_15
    throw v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 137
    .restart local v0    # "position":I
    .restart local p0    # "this":Lsun/nio/cs/StreamEncoder;
    .restart local p1    # "cb":Ljava/nio/CharBuffer;
    :catchall_16
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    throw v1
.end method

.method public whitelist test-api write([CII)V
    .registers 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 119
    if-ltz p2, :cond_1f

    array-length v1, p1

    if-gt p2, v1, :cond_1f

    if-ltz p3, :cond_1f

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1f

    add-int v1, p2, p3

    if-ltz v1, :cond_1f

    .line 122
    if-nez p3, :cond_1a

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->implWrite([CII)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 121
    :cond_1f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Lsun/nio/cs/StreamEncoder;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 126
    .restart local p0    # "this":Lsun/nio/cs/StreamEncoder;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
