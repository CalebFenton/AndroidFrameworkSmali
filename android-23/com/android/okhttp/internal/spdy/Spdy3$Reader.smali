.class final Lcom/android/okhttp/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;Z)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    .line 114
    new-instance v0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@9
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    #@c
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@e
    .line 115
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    #@10
    .line 112
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
.end method

.method private readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
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
    .line 250
    const/16 v3, 0x8

    #@4
    if-eq p3, v3, :cond_0

    #@6
    const-string/jumbo v3, "TYPE_GOAWAY length: %d != 8"

    #@9
    new-array v4, v5, [Ljava/lang/Object;

    #@b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v5

    #@f
    aput-object v5, v4, v6

    #@11
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@14
    move-result-object v3

    #@15
    throw v3

    #@16
    .line 251
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@18
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1b
    move-result v3

    #@1c
    const v4, 0x7fffffff

    #@1f
    and-int v2, v3, v4

    #@21
    .line 252
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@23
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@26
    move-result v1

    #@27
    .line 253
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2a
    move-result-object v0

    #@2b
    .line 254
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_1

    #@2d
    .line 255
    const-string/jumbo v3, "TYPE_GOAWAY unexpected error code: %d"

    #@30
    new-array v4, v5, [Ljava/lang/Object;

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v5

    #@36
    aput-object v5, v4, v6

    #@38
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@3b
    move-result-object v3

    #@3c
    throw v3

    #@3d
    .line 257
    :cond_1
    sget-object v3, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    #@3f
    invoke-interface {p1, v2, v0, v3}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    #@42
    .line 249
    return-void
.end method

.method private readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 226
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@3
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@6
    move-result v7

    #@7
    .line 227
    .local v7, "w1":I
    const v0, 0x7fffffff

    #@a
    and-int v3, v7, v0

    #@c
    .line 228
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@e
    add-int/lit8 v2, p3, -0x4

    #@10
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    #@13
    move-result-object v5

    #@14
    .line 229
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    sget-object v6, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@16
    const/4 v4, -0x1

    #@17
    move-object v0, p1

    #@18
    move v2, v1

    #@19
    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    #@1c
    .line 225
    return-void
.end method

.method private readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 243
    const/4 v4, 0x4

    #@3
    if-eq p3, v4, :cond_0

    #@5
    const-string/jumbo v4, "TYPE_PING length: %d != 4"

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v5

    #@e
    aput-object v5, v2, v3

    #@10
    invoke-static {v4, v2}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@13
    move-result-object v2

    #@14
    throw v2

    #@15
    .line 244
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@17
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1a
    move-result v1

    #@1b
    .line 245
    .local v1, "id":I
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    #@1d
    and-int/lit8 v5, v1, 0x1

    #@1f
    if-ne v5, v2, :cond_1

    #@21
    :goto_0
    if-ne v4, v2, :cond_2

    #@23
    const/4 v0, 0x1

    #@24
    .line 246
    .local v0, "ack":Z
    :goto_1
    invoke-interface {p1, v0, v1, v3}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    #@27
    .line 242
    return-void

    #@28
    .end local v0    # "ack":Z
    :cond_1
    move v2, v3

    #@29
    .line 245
    goto :goto_0

    #@2a
    :cond_2
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "ack":Z
    goto :goto_1
.end method

.method private readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
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
    .line 215
    const/16 v3, 0x8

    #@4
    if-eq p3, v3, :cond_0

    #@6
    const-string/jumbo v3, "TYPE_RST_STREAM length: %d != 8"

    #@9
    new-array v4, v5, [Ljava/lang/Object;

    #@b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v5

    #@f
    aput-object v5, v4, v6

    #@11
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@14
    move-result-object v3

    #@15
    throw v3

    #@16
    .line 216
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@18
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1b
    move-result v3

    #@1c
    const v4, 0x7fffffff

    #@1f
    and-int v2, v3, v4

    #@21
    .line 217
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@23
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@26
    move-result v1

    #@27
    .line 218
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2a
    move-result-object v0

    #@2b
    .line 219
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_1

    #@2d
    .line 220
    const-string/jumbo v3, "TYPE_RST_STREAM unexpected error code: %d"

    #@30
    new-array v4, v5, [Ljava/lang/Object;

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v5

    #@36
    aput-object v5, v4, v6

    #@38
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@3b
    move-result-object v3

    #@3c
    throw v3

    #@3d
    .line 222
    :cond_1
    invoke-interface {p1, v2, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@40
    .line 214
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 261
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@3
    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@6
    move-result v4

    #@7
    .line 262
    .local v4, "numberOfEntries":I
    mul-int/lit8 v8, v4, 0x8

    #@9
    add-int/lit8 v8, v8, 0x4

    #@b
    if-eq p3, v8, :cond_0

    #@d
    .line 263
    const-string/jumbo v8, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    #@10
    const/4 v9, 0x2

    #@11
    new-array v9, v9, [Ljava/lang/Object;

    #@13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v10

    #@17
    aput-object v10, v9, v11

    #@19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v10

    #@1d
    const/4 v11, 0x1

    #@1e
    aput-object v10, v9, v11

    #@20
    invoke-static {v8, v9}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@23
    move-result-object v8

    #@24
    throw v8

    #@25
    .line 265
    :cond_0
    new-instance v5, Lcom/android/okhttp/internal/spdy/Settings;

    #@27
    invoke-direct {v5}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    #@2a
    .line 266
    .local v5, "settings":Lcom/android/okhttp/internal/spdy/Settings;
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@2d
    .line 267
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2f
    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@32
    move-result v7

    #@33
    .line 268
    .local v7, "w1":I
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@35
    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@38
    move-result v6

    #@39
    .line 269
    .local v6, "value":I
    const/high16 v8, -0x1000000

    #@3b
    and-int/2addr v8, v7

    #@3c
    ushr-int/lit8 v3, v8, 0x18

    #@3e
    .line 270
    .local v3, "idFlags":I
    const v8, 0xffffff

    #@41
    and-int v2, v7, v8

    #@43
    .line 271
    .local v2, "id":I
    invoke-virtual {v5, v2, v3, v6}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@46
    .line 266
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 273
    .end local v2    # "id":I
    .end local v3    # "idFlags":I
    .end local v6    # "value":I
    .end local v7    # "w1":I
    :cond_1
    and-int/lit8 v8, p2, 0x1

    #@4b
    if-eqz v8, :cond_2

    #@4d
    const/4 v0, 0x1

    #@4e
    .line 274
    .local v0, "clearPrevious":Z
    :goto_1
    invoke-interface {p1, v0, v5}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/spdy/Settings;)V

    #@51
    .line 260
    return-void

    #@52
    .line 273
    .end local v0    # "clearPrevious":Z
    :cond_2
    const/4 v0, 0x0

    #@53
    .restart local v0    # "clearPrevious":Z
    goto :goto_1
.end method

.method private readSynReply(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@3
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@6
    move-result v7

    #@7
    .line 208
    .local v7, "w1":I
    const v0, 0x7fffffff

    #@a
    and-int v3, v7, v0

    #@c
    .line 209
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@e
    add-int/lit8 v4, p3, -0x4

    #@10
    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    #@13
    move-result-object v5

    #@14
    .line 210
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    and-int/lit8 v0, p2, 0x1

    #@16
    if-eqz v0, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    .line 211
    .local v2, "inFinished":Z
    :goto_0
    sget-object v6, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@1b
    const/4 v4, -0x1

    #@1c
    move-object v0, p1

    #@1d
    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    #@20
    .line 206
    return-void

    #@21
    .line 210
    .end local v2    # "inFinished":Z
    :cond_0
    const/4 v2, 0x0

    #@22
    .restart local v2    # "inFinished":Z
    goto :goto_0
.end method

.method private readSynStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    .line 193
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@8
    move-result v7

    #@9
    .line 194
    .local v7, "w1":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@b
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@e
    move-result v8

    #@f
    .line 195
    .local v8, "w2":I
    and-int v3, v7, v6

    #@11
    .line 196
    .local v3, "streamId":I
    and-int v4, v8, v6

    #@13
    .line 197
    .local v4, "associatedStreamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@15
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    #@18
    .line 198
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@1a
    add-int/lit8 v6, p3, -0xa

    #@1c
    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    #@1f
    move-result-object v5

    #@20
    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    and-int/lit8 v0, p2, 0x1

    #@22
    if-eqz v0, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 201
    .local v2, "inFinished":Z
    :goto_0
    and-int/lit8 v0, p2, 0x2

    #@27
    if-eqz v0, :cond_1

    #@29
    const/4 v1, 0x1

    #@2a
    .line 203
    .local v1, "outFinished":Z
    :goto_1
    sget-object v6, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2c
    move-object v0, p1

    #@2d
    .line 202
    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    #@30
    .line 192
    return-void

    #@31
    .line 200
    .end local v1    # "outFinished":Z
    .end local v2    # "inFinished":Z
    :cond_0
    const/4 v2, 0x0

    #@32
    .restart local v2    # "inFinished":Z
    goto :goto_0

    #@33
    .line 201
    :cond_1
    const/4 v1, 0x0

    #@34
    .restart local v1    # "outFinished":Z
    goto :goto_1
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v6, 0x7fffffff

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 233
    const/16 v5, 0x8

    #@7
    if-eq p3, v5, :cond_0

    #@9
    const-string/jumbo v5, "TYPE_WINDOW_UPDATE length: %d != 8"

    #@c
    new-array v6, v9, [Ljava/lang/Object;

    #@e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v7

    #@12
    aput-object v7, v6, v8

    #@14
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@17
    move-result-object v5

    #@18
    throw v5

    #@19
    .line 234
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1b
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1e
    move-result v3

    #@1f
    .line 235
    .local v3, "w1":I
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@21
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@24
    move-result v4

    #@25
    .line 236
    .local v4, "w2":I
    and-int v2, v3, v6

    #@27
    .line 237
    .local v2, "streamId":I
    and-int v5, v4, v6

    #@29
    int-to-long v0, v5

    #@2a
    .line 238
    .local v0, "increment":J
    const-wide/16 v6, 0x0

    #@2c
    cmp-long v5, v0, v6

    #@2e
    if-nez v5, :cond_1

    #@30
    const-string/jumbo v5, "windowSizeIncrement was 0"

    #@33
    new-array v6, v9, [Ljava/lang/Object;

    #@35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v7

    #@39
    aput-object v7, v6, v8

    #@3b
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@3e
    move-result-object v5

    #@3f
    throw v5

    #@40
    .line 239
    :cond_1
    invoke-interface {p1, v2, v0, v1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    #@43
    .line 232
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->close()V

    #@5
    .line 281
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    .line 129
    :try_start_0
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@4
    invoke-interface {v10}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@7
    move-result v8

    #@8
    .line 130
    .local v8, "w1":I
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@a
    invoke-interface {v10}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v9

    #@e
    .line 135
    .local v9, "w2":I
    const/high16 v10, -0x80000000

    #@10
    and-int/2addr v10, v8

    #@11
    if-eqz v10, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 136
    .local v0, "control":Z
    :goto_0
    const/high16 v10, -0x1000000

    #@16
    and-int/2addr v10, v9

    #@17
    ushr-int/lit8 v2, v10, 0x18

    #@19
    .line 137
    .local v2, "flags":I
    const v10, 0xffffff

    #@1c
    and-int v4, v9, v10

    #@1e
    .line 139
    .local v4, "length":I
    if-eqz v0, :cond_2

    #@20
    .line 140
    const/high16 v10, 0x7fff0000

    #@22
    and-int/2addr v10, v8

    #@23
    ushr-int/lit8 v7, v10, 0x10

    #@25
    .line 141
    .local v7, "version":I
    const v10, 0xffff

    #@28
    and-int v6, v8, v10

    #@2a
    .line 143
    .local v6, "type":I
    const/4 v10, 0x3

    #@2b
    if-eq v7, v10, :cond_1

    #@2d
    .line 144
    new-instance v10, Ljava/net/ProtocolException;

    #@2f
    new-instance v11, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v12, "version != 3: "

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v11

    #@3f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v11

    #@43
    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@46
    throw v10

    #@47
    .line 131
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v4    # "length":I
    .end local v6    # "type":I
    .end local v7    # "version":I
    .end local v8    # "w1":I
    .end local v9    # "w2":I
    :catch_0
    move-exception v1

    #@48
    .line 132
    .local v1, "e":Ljava/io/IOException;
    return v12

    #@49
    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "w1":I
    .restart local v9    # "w2":I
    :cond_0
    const/4 v0, 0x0

    #@4a
    .restart local v0    # "control":Z
    goto :goto_0

    #@4b
    .line 147
    .restart local v2    # "flags":I
    .restart local v4    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "version":I
    :cond_1
    packed-switch v6, :pswitch_data_0

    #@4e
    .line 181
    :pswitch_0
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@50
    int-to-long v12, v4

    #@51
    invoke-interface {v10, v12, v13}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@54
    .line 182
    return v11

    #@55
    .line 149
    :pswitch_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSynStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@58
    .line 150
    return v11

    #@59
    .line 153
    :pswitch_2
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSynReply(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@5c
    .line 154
    return v11

    #@5d
    .line 157
    :pswitch_3
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@60
    .line 158
    return v11

    #@61
    .line 161
    :pswitch_4
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@64
    .line 162
    return v11

    #@65
    .line 165
    :pswitch_5
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@68
    .line 166
    return v11

    #@69
    .line 169
    :pswitch_6
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@6c
    .line 170
    return v11

    #@6d
    .line 173
    :pswitch_7
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@70
    .line 174
    return v11

    #@71
    .line 177
    :pswitch_8
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;II)V

    #@74
    .line 178
    return v11

    #@75
    .line 185
    .end local v6    # "type":I
    .end local v7    # "version":I
    :cond_2
    const v10, 0x7fffffff

    #@78
    and-int v5, v8, v10

    #@7a
    .line 186
    .local v5, "streamId":I
    and-int/lit8 v10, v2, 0x1

    #@7c
    if-eqz v10, :cond_3

    #@7e
    const/4 v3, 0x1

    #@7f
    .line 187
    .local v3, "inFinished":Z
    :goto_1
    iget-object v10, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@81
    invoke-interface {p1, v3, v5, v10, v4}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    #@84
    .line 188
    return v11

    #@85
    .line 186
    .end local v3    # "inFinished":Z
    :cond_3
    const/4 v3, 0x0

    #@86
    .restart local v3    # "inFinished":Z
    goto :goto_1

    #@87
    .line 147
    nop

    #@88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    #@0
    .prologue
    .line 118
    return-void
.end method
