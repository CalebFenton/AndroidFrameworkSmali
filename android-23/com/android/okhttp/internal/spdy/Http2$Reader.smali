.class final Lcom/android/okhttp/internal/spdy/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

.field final hpackReader:Lcom/android/okhttp/internal/spdy/Hpack$Reader;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    .line 97
    iput-boolean p3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->client:Z

    #@7
    .line 98
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@9
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@b
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    #@e
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@10
    .line 99
    new-instance v0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;

    #@12
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@14
    invoke-direct {v0, p2, v1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;-><init>(ILcom/android/okhttp/okio/Source;)V

    #@17
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/Hpack$Reader;

    #@19
    .line 95
    return-void
.end method

.method private readData(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 219
    and-int/lit8 v3, p3, 0x1

    #@3
    if-eqz v3, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    .line 220
    .local v1, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    #@8
    if-eqz v3, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    .line 221
    .local v0, "gzipped":Z
    :goto_1
    if-eqz v0, :cond_2

    #@d
    .line 222
    const-string/jumbo v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    #@10
    new-array v4, v4, [Ljava/lang/Object;

    #@12
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@15
    move-result-object v3

    #@16
    throw v3

    #@17
    .line 219
    .end local v0    # "gzipped":Z
    .end local v1    # "inFinished":Z
    :cond_0
    const/4 v1, 0x0

    #@18
    .restart local v1    # "inFinished":Z
    goto :goto_0

    #@19
    .line 220
    :cond_1
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "gzipped":Z
    goto :goto_1

    #@1b
    .line 225
    :cond_2
    and-int/lit8 v3, p3, 0x8

    #@1d
    if-eqz v3, :cond_3

    #@1f
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@21
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@24
    move-result v3

    #@25
    and-int/lit16 v3, v3, 0xff

    #@27
    int-to-short v2, v3

    #@28
    .line 226
    :goto_2
    invoke-static {p2, p3, v2}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap0(IBS)I

    #@2b
    move-result p2

    #@2c
    .line 228
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2e
    invoke-interface {p1, v1, p4, v3, p2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    #@31
    .line 229
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@33
    int-to-long v4, v2

    #@34
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@37
    .line 217
    return-void

    #@38
    .line 225
    :cond_3
    const/4 v2, 0x0

    #@39
    .local v2, "padding":S
    goto :goto_2
.end method

.method private readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 334
    const/16 v5, 0x8

    #@4
    if-ge p2, v5, :cond_0

    #@6
    const-string/jumbo v5, "TYPE_GOAWAY length < 8: %s"

    #@9
    new-array v6, v6, [Ljava/lang/Object;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v7

    #@f
    aput-object v7, v6, v8

    #@11
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@14
    move-result-object v5

    #@15
    throw v5

    #@16
    .line 335
    :cond_0
    if-eqz p4, :cond_1

    #@18
    const-string/jumbo v5, "TYPE_GOAWAY streamId != 0"

    #@1b
    new-array v6, v8, [Ljava/lang/Object;

    #@1d
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@20
    move-result-object v5

    #@21
    throw v5

    #@22
    .line 336
    :cond_1
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@24
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@27
    move-result v3

    #@28
    .line 337
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2a
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@2d
    move-result v2

    #@2e
    .line 338
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    #@30
    .line 339
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@33
    move-result-object v1

    #@34
    .line 340
    .local v1, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v1, :cond_2

    #@36
    .line 341
    const-string/jumbo v5, "TYPE_GOAWAY unexpected error code: %d"

    #@39
    new-array v6, v6, [Ljava/lang/Object;

    #@3b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v7

    #@3f
    aput-object v7, v6, v8

    #@41
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@44
    move-result-object v5

    #@45
    throw v5

    #@46
    .line 343
    :cond_2
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    #@48
    .line 344
    .local v0, "debugData":Lcom/android/okhttp/okio/ByteString;
    if-lez v4, :cond_3

    #@4a
    .line 345
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@4c
    int-to-long v6, v4

    #@4d
    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    #@50
    move-result-object v0

    #@51
    .line 347
    :cond_3
    invoke-interface {p1, v3, v1, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    #@54
    .line 333
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 2
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@4
    iput p1, v1, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@6
    iput p1, v0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    #@8
    .line 206
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@a
    iput-short p2, v0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    #@c
    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@e
    iput-byte p3, v0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    #@10
    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->continuation:Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;

    #@12
    iput p4, v0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    #@14
    .line 212
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/Hpack$Reader;

    #@16
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readHeaders()V

    #@19
    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/Hpack$Reader;

    #@1b
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 185
    if-nez p4, :cond_0

    #@3
    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@b
    move-result-object v0

    #@c
    throw v0

    #@d
    .line 187
    :cond_0
    and-int/lit8 v0, p3, 0x1

    #@f
    if-eqz v0, :cond_2

    #@11
    const/4 v2, 0x1

    #@12
    .line 189
    .local v2, "endStream":Z
    :goto_0
    and-int/lit8 v0, p3, 0x8

    #@14
    if-eqz v0, :cond_3

    #@16
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@18
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@1b
    move-result v0

    #@1c
    and-int/lit16 v0, v0, 0xff

    #@1e
    int-to-short v7, v0

    #@1f
    .line 191
    :goto_1
    and-int/lit8 v0, p3, 0x20

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 192
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;I)V

    #@26
    .line 193
    add-int/lit8 p2, p2, -0x5

    #@28
    .line 196
    :cond_1
    invoke-static {p2, p3, v7}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap0(IBS)I

    #@2b
    move-result p2

    #@2c
    .line 198
    invoke-direct {p0, p2, v7, p3, p4}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    #@2f
    move-result-object v5

    #@30
    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    sget-object v6, Lcom/android/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@32
    const/4 v4, -0x1

    #@33
    move-object v0, p1

    #@34
    move v3, p4

    #@35
    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    #@38
    .line 184
    return-void

    #@39
    .line 187
    .end local v2    # "endStream":Z
    .end local v5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    :cond_2
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "endStream":Z
    goto :goto_0

    #@3b
    .line 189
    :cond_3
    const/4 v7, 0x0

    #@3c
    .local v7, "padding":S
    goto :goto_1
.end method

.method private readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 7
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 324
    const/16 v3, 0x8

    #@3
    if-eq p2, v3, :cond_0

    #@5
    const-string/jumbo v3, "TYPE_PING length != 8: %s"

    #@8
    const/4 v4, 0x1

    #@9
    new-array v4, v4, [Ljava/lang/Object;

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v5

    #@f
    aput-object v5, v4, v6

    #@11
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@14
    move-result-object v3

    #@15
    throw v3

    #@16
    .line 325
    :cond_0
    if-eqz p4, :cond_1

    #@18
    const-string/jumbo v3, "TYPE_PING streamId != 0"

    #@1b
    new-array v4, v6, [Ljava/lang/Object;

    #@1d
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 326
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@24
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@27
    move-result v1

    #@28
    .line 327
    .local v1, "payload1":I
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2a
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@2d
    move-result v2

    #@2e
    .line 328
    .local v2, "payload2":I
    and-int/lit8 v3, p3, 0x1

    #@30
    if-eqz v3, :cond_2

    #@32
    const/4 v0, 0x1

    #@33
    .line 329
    .local v0, "ack":Z
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    #@36
    .line 323
    return-void

    #@37
    .line 328
    .end local v0    # "ack":Z
    :cond_2
    const/4 v0, 0x0

    #@38
    .restart local v0    # "ack":Z
    goto :goto_0
.end method

.method private readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@5
    move-result v2

    #@6
    .line 241
    .local v2, "w1":I
    const/high16 v4, -0x80000000

    #@8
    and-int/2addr v4, v2

    #@9
    if-eqz v4, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 242
    .local v0, "exclusive":Z
    :goto_0
    const v4, 0x7fffffff

    #@f
    and-int v1, v2, v4

    #@11
    .line 243
    .local v1, "streamDependency":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@13
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@16
    move-result v4

    #@17
    and-int/lit16 v4, v4, 0xff

    #@19
    add-int/lit8 v3, v4, 0x1

    #@1b
    .line 244
    .local v3, "weight":I
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    #@1e
    .line 239
    return-void

    #@1f
    .line 241
    .end local v0    # "exclusive":Z
    .end local v1    # "streamDependency":I
    .end local v3    # "weight":I
    :cond_0
    const/4 v0, 0x0

    #@20
    .restart local v0    # "exclusive":Z
    goto :goto_0
.end method

.method private readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 4
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 234
    const/4 v0, 0x5

    #@2
    if-eq p2, v0, :cond_0

    #@4
    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    #@7
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    aput-object v2, v1, v3

    #@10
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@13
    move-result-object v0

    #@14
    throw v0

    #@15
    .line 235
    :cond_0
    if-nez p4, :cond_1

    #@17
    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    #@1a
    new-array v1, v3, [Ljava/lang/Object;

    #@1c
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@1f
    move-result-object v0

    #@20
    throw v0

    #@21
    .line 236
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;I)V

    #@24
    .line 233
    return-void
.end method

.method private readPushPromise(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 5
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 311
    if-nez p4, :cond_0

    #@3
    .line 312
    const-string/jumbo v3, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    #@6
    new-array v4, v4, [Ljava/lang/Object;

    #@8
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@b
    move-result-object v3

    #@c
    throw v3

    #@d
    .line 314
    :cond_0
    and-int/lit8 v3, p3, 0x8

    #@f
    if-eqz v3, :cond_1

    #@11
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@13
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@16
    move-result v3

    #@17
    and-int/lit16 v3, v3, 0xff

    #@19
    int-to-short v1, v3

    #@1a
    .line 315
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1c
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1f
    move-result v3

    #@20
    const v4, 0x7fffffff

    #@23
    and-int v2, v3, v4

    #@25
    .line 316
    .local v2, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    #@27
    .line 317
    invoke-static {p2, p3, v1}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap0(IBS)I

    #@2a
    move-result p2

    #@2b
    .line 318
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    #@2e
    move-result-object v0

    #@2f
    .line 319
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    invoke-interface {p1, p4, v2, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    #@32
    .line 310
    return-void

    #@33
    .line 314
    .end local v0    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    .end local v2    # "promisedStreamId":I
    :cond_1
    const/4 v1, 0x0

    #@34
    .local v1, "padding":S
    goto :goto_0
.end method

.method private readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 249
    const/4 v2, 0x4

    #@3
    if-eq p2, v2, :cond_0

    #@5
    const-string/jumbo v2, "TYPE_RST_STREAM length: %d != 4"

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v4

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@13
    move-result-object v2

    #@14
    throw v2

    #@15
    .line 250
    :cond_0
    if-nez p4, :cond_1

    #@17
    const-string/jumbo v2, "TYPE_RST_STREAM streamId == 0"

    #@1a
    new-array v3, v5, [Ljava/lang/Object;

    #@1c
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@1f
    move-result-object v2

    #@20
    throw v2

    #@21
    .line 251
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@23
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@26
    move-result v1

    #@27
    .line 252
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2a
    move-result-object v0

    #@2b
    .line 253
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_2

    #@2d
    .line 254
    const-string/jumbo v2, "TYPE_RST_STREAM unexpected error code: %d"

    #@30
    new-array v3, v3, [Ljava/lang/Object;

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v4

    #@36
    aput-object v4, v3, v5

    #@38
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@3b
    move-result-object v2

    #@3c
    throw v2

    #@3d
    .line 256
    :cond_2
    invoke-interface {p1, p4, v0}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@40
    .line 248
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 261
    if-eqz p4, :cond_0

    #@4
    const-string/jumbo v4, "TYPE_SETTINGS streamId != 0"

    #@7
    new-array v5, v7, [Ljava/lang/Object;

    #@9
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@c
    move-result-object v4

    #@d
    throw v4

    #@e
    .line 262
    :cond_0
    and-int/lit8 v4, p3, 0x1

    #@10
    if-eqz v4, :cond_2

    #@12
    .line 263
    if-eqz p2, :cond_1

    #@14
    const-string/jumbo v4, "FRAME_SIZE_ERROR ack frame should be empty!"

    #@17
    new-array v5, v7, [Ljava/lang/Object;

    #@19
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@1c
    move-result-object v4

    #@1d
    throw v4

    #@1e
    .line 264
    :cond_1
    invoke-interface {p1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    #@21
    .line 265
    return-void

    #@22
    .line 268
    :cond_2
    rem-int/lit8 v4, p2, 0x6

    #@24
    if-eqz v4, :cond_3

    #@26
    const-string/jumbo v4, "TYPE_SETTINGS length %% 6 != 0: %s"

    #@29
    new-array v5, v5, [Ljava/lang/Object;

    #@2b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v6

    #@2f
    aput-object v6, v5, v7

    #@31
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@34
    move-result-object v4

    #@35
    throw v4

    #@36
    .line 269
    :cond_3
    new-instance v2, Lcom/android/okhttp/internal/spdy/Settings;

    #@38
    invoke-direct {v2}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    #@3b
    .line 270
    .local v2, "settings":Lcom/android/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    #@3c
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_6

    #@3e
    .line 271
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@40
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    #@43
    move-result v1

    #@44
    .line 272
    .local v1, "id":S
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@46
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@49
    move-result v3

    #@4a
    .line 274
    .local v3, "value":I
    packed-switch v1, :pswitch_data_0

    #@4d
    .line 299
    const-string/jumbo v4, "PROTOCOL_ERROR invalid settings id: %s"

    #@50
    new-array v5, v5, [Ljava/lang/Object;

    #@52
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@55
    move-result-object v6

    #@56
    aput-object v6, v5, v7

    #@58
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@5b
    move-result-object v4

    #@5c
    throw v4

    #@5d
    .line 278
    :pswitch_0
    if-eqz v3, :cond_4

    #@5f
    if-eq v3, v5, :cond_4

    #@61
    .line 279
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    #@64
    new-array v5, v7, [Ljava/lang/Object;

    #@66
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@69
    move-result-object v4

    #@6a
    throw v4

    #@6b
    .line 283
    :pswitch_1
    const/4 v1, 0x4

    #@6c
    .line 301
    .end local v1    # "id":S
    :cond_4
    :pswitch_2
    invoke-virtual {v2, v1, v7, v3}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@6f
    .line 270
    add-int/lit8 v0, v0, 0x6

    #@71
    goto :goto_0

    #@72
    .line 286
    .restart local v1    # "id":S
    :pswitch_3
    const/4 v1, 0x7

    #@73
    .line 287
    .local v1, "id":S
    if-gez v3, :cond_4

    #@75
    .line 288
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    #@78
    new-array v5, v7, [Ljava/lang/Object;

    #@7a
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@7d
    move-result-object v4

    #@7e
    throw v4

    #@7f
    .line 292
    .local v1, "id":S
    :pswitch_4
    const/16 v4, 0x4000

    #@81
    if-lt v3, v4, :cond_5

    #@83
    const v4, 0xffffff

    #@86
    if-le v3, v4, :cond_4

    #@88
    .line 293
    :cond_5
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    #@8b
    new-array v5, v5, [Ljava/lang/Object;

    #@8d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v6

    #@91
    aput-object v6, v5, v7

    #@93
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@96
    move-result-object v4

    #@97
    throw v4

    #@98
    .line 303
    .end local v1    # "id":S
    .end local v3    # "value":I
    :cond_6
    invoke-interface {p1, v7, v2}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/spdy/Settings;)V

    #@9b
    .line 304
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    #@9e
    move-result v4

    #@9f
    if-ltz v4, :cond_7

    #@a1
    .line 305
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/spdy/Hpack$Reader;

    #@a3
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    #@a6
    move-result v5

    #@a7
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting(I)V

    #@aa
    .line 260
    :cond_7
    return-void

    #@ab
    .line 274
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 352
    const/4 v2, 0x4

    #@3
    if-eq p2, v2, :cond_0

    #@5
    const-string/jumbo v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    #@8
    new-array v3, v7, [Ljava/lang/Object;

    #@a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v4

    #@e
    aput-object v4, v3, v6

    #@10
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@13
    move-result-object v2

    #@14
    throw v2

    #@15
    .line 353
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@17
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@1a
    move-result v2

    #@1b
    int-to-long v2, v2

    #@1c
    const-wide/32 v4, 0x7fffffff

    #@1f
    and-long v0, v2, v4

    #@21
    .line 354
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    #@23
    cmp-long v2, v0, v2

    #@25
    if-nez v2, :cond_1

    #@27
    const-string/jumbo v2, "windowSizeIncrement was 0"

    #@2a
    new-array v3, v7, [Ljava/lang/Object;

    #@2c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f
    move-result-object v4

    #@30
    aput-object v4, v3, v6

    #@32
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@35
    move-result-object v2

    #@36
    throw v2

    #@37
    .line 355
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lcom/android/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    #@3a
    .line 351
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
    .line 359
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    #@5
    .line 358
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 113
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@4
    const-wide/16 v6, 0x9

    #@6
    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 130
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@b
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    #@e
    move-result v2

    #@f
    .line 131
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@11
    const/16 v5, 0x4000

    #@13
    if-le v2, v5, :cond_1

    #@15
    .line 132
    :cond_0
    const-string/jumbo v5, "FRAME_SIZE_ERROR: %s"

    #@18
    new-array v6, v9, [Ljava/lang/Object;

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v7

    #@1e
    aput-object v7, v6, v8

    #@20
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@23
    move-result-object v5

    #@24
    throw v5

    #@25
    .line 114
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    #@26
    .line 115
    .local v0, "e":Ljava/io/IOException;
    return v8

    #@27
    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "length":I
    :cond_1
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@29
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@2c
    move-result v5

    #@2d
    and-int/lit16 v5, v5, 0xff

    #@2f
    int-to-byte v4, v5

    #@30
    .line 135
    .local v4, "type":B
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@32
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@35
    move-result v5

    #@36
    and-int/lit16 v5, v5, 0xff

    #@38
    int-to-byte v1, v5

    #@39
    .line 136
    .local v1, "flags":B
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@3b
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@3e
    move-result v5

    #@3f
    const v6, 0x7fffffff

    #@42
    and-int v3, v5, v6

    #@44
    .line 137
    .local v3, "streamId":I
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@47
    move-result-object v5

    #@48
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@4a
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_2

    #@50
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@53
    move-result-object v5

    #@54
    invoke-static {v9, v3, v2, v4, v1}, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@5b
    .line 139
    :cond_2
    packed-switch v4, :pswitch_data_0

    #@5e
    .line 178
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@60
    int-to-long v6, v2

    #@61
    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@64
    .line 180
    :goto_0
    return v9

    #@65
    .line 141
    :pswitch_0
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readData(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@68
    goto :goto_0

    #@69
    .line 145
    :pswitch_1
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readHeaders(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@6c
    goto :goto_0

    #@6d
    .line 149
    :pswitch_2
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@70
    goto :goto_0

    #@71
    .line 153
    :pswitch_3
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readRstStream(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@74
    goto :goto_0

    #@75
    .line 157
    :pswitch_4
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readSettings(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@78
    goto :goto_0

    #@79
    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readPushPromise(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@7c
    goto :goto_0

    #@7d
    .line 165
    :pswitch_6
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readPing(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@80
    goto :goto_0

    #@81
    .line 169
    :pswitch_7
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readGoAway(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@84
    goto :goto_0

    #@85
    .line 173
    :pswitch_8
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/spdy/Http2$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;IBI)V

    #@88
    goto :goto_0

    #@89
    .line 139
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 103
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->client:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    return-void

    #@7
    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@9
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@10
    move-result v2

    #@11
    int-to-long v2, v2

    #@12
    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    #@15
    move-result-object v0

    #@16
    .line 105
    .local v0, "connectionPreface":Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@19
    move-result-object v1

    #@1a
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@1c
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, "<< CONNECTION %s"

    #@29
    new-array v3, v6, [Ljava/lang/Object;

    #@2b
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@38
    .line 106
    :cond_1
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_2

    #@42
    .line 107
    const-string/jumbo v1, "Expected a connection header but was %s"

    #@45
    new-array v2, v6, [Ljava/lang/Object;

    #@47
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    aput-object v3, v2, v5

    #@4d
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@50
    move-result-object v1

    #@51
    throw v1

    #@52
    .line 102
    :cond_2
    return-void
.end method
