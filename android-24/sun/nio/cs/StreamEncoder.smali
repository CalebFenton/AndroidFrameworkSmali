.class public Lsun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/WritableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private haveLeftoverChar:Z

.field private volatile isOpen:Z

.field private lcb:Ljava/nio/CharBuffer;

.field private leftoverChar:C

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@b
    .line 36
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 176
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@3
    move-result-object v0

    #@4
    .line 177
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@6
    .line 176
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@9
    move-result-object v0

    #@a
    .line 178
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 176
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@f
    move-result-object v0

    #@10
    .line 175
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    #@13
    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "enc"    # Ljava/nio/charset/CharsetEncoder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 182
    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@4
    .line 41
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    #@7
    .line 170
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@a
    .line 172
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@c
    .line 183
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@e
    .line 184
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@10
    .line 185
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    #@16
    .line 186
    iput-object p3, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 194
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 195
    const/16 v0, 0x2000

    #@1e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@24
    .line 181
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "mbc"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 199
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@5
    .line 41
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    #@8
    .line 170
    iput-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@a
    .line 172
    iput-object v2, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@c
    .line 200
    iput-object v2, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@e
    .line 201
    iput-object p1, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@10
    .line 202
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    #@16
    .line 203
    iput-object p2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@18
    .line 204
    if-gez p3, :cond_0

    #@1a
    .line 205
    const/16 p3, 0x2000

    #@1c
    .line 204
    .end local p3    # "mbc":I
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@22
    .line 199
    return-void
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
    .line 44
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 45
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 43
    :cond_0
    return-void
.end method

.method private flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .locals 5
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .param p2, "endOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 230
    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@3
    if-nez v1, :cond_0

    #@5
    if-eqz p2, :cond_5

    #@7
    .line 232
    :cond_0
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@9
    if-nez v1, :cond_6

    #@b
    .line 233
    const/4 v1, 0x2

    #@c
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@12
    .line 236
    :goto_0
    iget-boolean v1, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 237
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@18
    iget-char v3, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    #@1a
    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@1d
    .line 238
    :cond_1
    if-eqz p1, :cond_2

    #@1f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 239
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@27
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@2e
    .line 240
    :cond_2
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@30
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@33
    .line 241
    :goto_1
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@35
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_3

    #@3b
    if-eqz p2, :cond_b

    #@3d
    .line 242
    :cond_3
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@3f
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@41
    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@43
    invoke-virtual {v1, v3, v4, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@46
    move-result-object v0

    #@47
    .line 243
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_7

    #@4d
    .line 244
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@4f
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_b

    #@55
    .line 245
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@57
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    #@5a
    move-result v1

    #@5b
    iput-char v1, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    #@5d
    .line 246
    if-eqz p1, :cond_4

    #@5f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_4

    #@65
    .line 247
    invoke-direct {p0, p1, p2}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    #@68
    .line 248
    :cond_4
    return-void

    #@69
    .line 231
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_5
    return-void

    #@6a
    .line 235
    :cond_6
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    #@6c
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@6f
    goto :goto_0

    #@70
    .line 252
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_7
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_a

    #@76
    .line 253
    sget-boolean v1, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@78
    if-nez v1, :cond_9

    #@7a
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@7c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@7f
    move-result v1

    #@80
    if-lez v1, :cond_8

    #@82
    const/4 v1, 0x1

    #@83
    :goto_2
    if-nez v1, :cond_9

    #@85
    new-instance v1, Ljava/lang/AssertionError;

    #@87
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@8a
    throw v1

    #@8b
    :cond_8
    move v1, v2

    #@8c
    goto :goto_2

    #@8d
    .line 254
    :cond_9
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    #@90
    goto :goto_1

    #@91
    .line 257
    :cond_a
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    #@94
    goto :goto_1

    #@95
    .line 259
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_b
    iput-boolean v2, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@97
    .line 228
    return-void
.end method

.method public static forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    #@0
    .prologue
    .line 85
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    #@5
    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamEncoder;
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    move-object v0, p2

    #@1
    .line 55
    .local v0, "csn":Ljava/lang/String;
    if-nez p2, :cond_0

    #@3
    .line 56
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 58
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 59
    new-instance v2, Lsun/nio/cs/StreamEncoder;

    #@13
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v2, p0, p1, v3}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v2

    #@1b
    .line 60
    :catch_0
    move-exception v1

    #@1c
    .line 61
    :cond_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@1e
    invoke-direct {v2, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 68
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    #@5
    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lsun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    #@0
    .prologue
    .line 75
    new-instance v0, Lsun/nio/cs/StreamEncoder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    #@5
    return-object v0
.end method

.method private isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z

    #@2
    return v0
.end method

.method private writeBytes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 210
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@6
    .line 211
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    #@b
    move-result v0

    #@c
    .line 212
    .local v0, "lim":I
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    #@11
    move-result v1

    #@12
    .line 213
    .local v1, "pos":I
    sget-boolean v3, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@14
    if-nez v3, :cond_1

    #@16
    if-gt v1, v0, :cond_0

    #@18
    const/4 v3, 0x1

    #@19
    :goto_0
    if-nez v3, :cond_1

    #@1b
    new-instance v3, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v3

    #@21
    :cond_0
    move v3, v2

    #@22
    goto :goto_0

    #@23
    .line 214
    :cond_1
    if-gt v1, v0, :cond_2

    #@25
    sub-int v2, v0, v1

    #@27
    .line 216
    .local v2, "rem":I
    :cond_2
    if-lez v2, :cond_4

    #@29
    .line 217
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 218
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@2f
    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@31
    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    #@34
    move-result v3

    #@35
    if-eq v3, v2, :cond_4

    #@37
    .line 219
    sget-boolean v3, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@39
    if-nez v3, :cond_4

    #@3b
    new-instance v3, Ljava/lang/AssertionError;

    #@3d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@44
    throw v3

    #@45
    .line 221
    :cond_3
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@47
    iget-object v4, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@49
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    #@4c
    move-result-object v4

    #@4d
    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@4f
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@52
    move-result v5

    #@53
    add-int/2addr v5, v1

    #@54
    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    #@57
    .line 224
    :cond_4
    iget-object v3, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@59
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@5c
    .line 209
    return-void
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
    .line 146
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 147
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 148
    return-void

    #@9
    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implClose()V

    #@c
    .line 150
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lsun/nio/cs/StreamEncoder;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 145
    return-void

    #@11
    .line 146
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
    .line 328
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    #@2
    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 329
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    #@8
    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@a
    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 328
    :goto_0
    return-object v0

    #@f
    .line 330
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 140
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    #@6
    .line 141
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 138
    return-void

    #@b
    .line 139
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 103
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 104
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 101
    return-void

    #@e
    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    #@10
    const-string/jumbo v2, "Stream closed"

    #@13
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 102
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 97
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 98
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method implClose()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 301
    invoke-direct {p0, v2, v3}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    #@6
    .line 304
    :goto_0
    :try_start_0
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@8
    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v2, v5}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    #@d
    move-result-object v0

    #@e
    .line 305
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 315
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v2

    #@1a
    if-lez v2, :cond_0

    #@1c
    .line 316
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    #@1f
    .line 317
    :cond_0
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@21
    if-eqz v2, :cond_5

    #@23
    .line 318
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    #@25
    invoke-interface {v2}, Ljava/nio/channels/WritableByteChannel;->close()V

    #@28
    .line 300
    :goto_1
    return-void

    #@29
    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_4

    #@2f
    .line 308
    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@31
    if-nez v2, :cond_3

    #@33
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@38
    move-result v2

    #@39
    if-lez v2, :cond_2

    #@3b
    move v2, v3

    #@3c
    :goto_2
    if-nez v2, :cond_3

    #@3e
    new-instance v2, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 321
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v1

    #@45
    .line 322
    .local v1, "x":Ljava/io/IOException;
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@47
    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@4a
    .line 323
    throw v1

    #@4b
    .end local v1    # "x":Ljava/io/IOException;
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    move v2, v4

    #@4c
    .line 308
    goto :goto_2

    #@4d
    .line 309
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    #@50
    goto :goto_0

    #@51
    .line 312
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    #@54
    goto :goto_0

    #@55
    .line 320
    :cond_5
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@57
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@5a
    goto :goto_1
.end method

.method implFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-virtual {p0}, Lsun/nio/cs/StreamEncoder;->implFlushBuffer()V

    #@3
    .line 296
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 297
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@c
    .line 294
    :cond_0
    return-void
.end method

.method implFlushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 291
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    #@b
    .line 289
    :cond_0
    return-void
.end method

.method implWrite([CII)V
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
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
    .line 265
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    .line 267
    .local v0, "cb":Ljava/nio/CharBuffer;
    iget-boolean v2, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 268
    invoke-direct {p0, v0, v4}, Lsun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    #@d
    .line 270
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_3

    #@13
    .line 271
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    #@15
    iget-object v5, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v2, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@1a
    move-result-object v1

    #@1b
    .line 272
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_4

    #@21
    .line 273
    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@23
    if-nez v2, :cond_2

    #@25
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    #@28
    move-result v2

    #@29
    if-gt v2, v3, :cond_1

    #@2b
    move v4, v3

    #@2c
    :cond_1
    if-nez v4, :cond_2

    #@2e
    new-instance v2, Ljava/lang/AssertionError;

    #@30
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    #@33
    move-result v3

    #@34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3b
    throw v2

    #@3c
    .line 274
    :cond_2
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    #@3f
    move-result v2

    #@40
    if-ne v2, v3, :cond_3

    #@42
    .line 275
    iput-boolean v3, p0, Lsun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    #@44
    .line 276
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    #@47
    move-result v2

    #@48
    iput-char v2, p0, Lsun/nio/cs/StreamEncoder;->leftoverChar:C

    #@4a
    .line 263
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_3
    return-void

    #@4b
    .line 280
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_7

    #@51
    .line 281
    sget-boolean v2, Lsun/nio/cs/StreamEncoder;->-assertionsDisabled:Z

    #@53
    if-nez v2, :cond_6

    #@55
    iget-object v2, p0, Lsun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    #@57
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@5a
    move-result v2

    #@5b
    if-lez v2, :cond_5

    #@5d
    move v2, v3

    #@5e
    :goto_1
    if-nez v2, :cond_6

    #@60
    new-instance v2, Ljava/lang/AssertionError;

    #@62
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@65
    throw v2

    #@66
    :cond_5
    move v2, v4

    #@67
    goto :goto_1

    #@68
    .line 282
    :cond_6
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->writeBytes()V

    #@6b
    goto :goto_0

    #@6c
    .line 285
    :cond_7
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    #@6f
    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    new-array v0, v3, [C

    #@4
    .line 112
    .local v0, "cbuf":[C
    int-to-char v1, p1

    #@5
    aput-char v1, v0, v2

    #@7
    .line 113
    invoke-virtual {p0, v0, v2, v3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    #@a
    .line 110
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 131
    if-gez p3, :cond_0

    #@3
    .line 132
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@5
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@8
    throw v1

    #@9
    .line 133
    :cond_0
    new-array v0, p3, [C

    #@b
    .line 134
    .local v0, "cbuf":[C
    add-int v1, p2, p3

    #@d
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@10
    .line 135
    invoke-virtual {p0, v0, v2, p3}, Lsun/nio/cs/StreamEncoder;->write([CII)V

    #@13
    .line 129
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Lsun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 118
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamEncoder;->ensureOpen()V

    #@6
    .line 119
    if-ltz p2, :cond_0

    #@8
    array-length v0, p1

    #@9
    if-le p2, v0, :cond_1

    #@b
    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@d
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 117
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    .line 119
    :cond_1
    if-ltz p3, :cond_0

    #@16
    .line 120
    add-int v0, p2, p3

    #@18
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-gt v0, v2, :cond_0

    #@1b
    add-int v0, p2, p3

    #@1d
    if-ltz v0, :cond_0

    #@1f
    .line 122
    if-nez p3, :cond_2

    #@21
    monitor-exit v1

    #@22
    .line 123
    return-void

    #@23
    .line 125
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/cs/StreamEncoder;->implWrite([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 116
    return-void
.end method
