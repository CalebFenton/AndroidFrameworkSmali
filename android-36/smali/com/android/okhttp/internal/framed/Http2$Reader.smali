.class final Lcom/android/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final blacklist client:Z

.field private final blacklist continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

.field final blacklist hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 99
    iput-boolean p3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 100
    new-instance p3, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {p3, p1}, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    .line 101
    new-instance p1, Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-direct {p1, p2, p3}, Lcom/android/okhttp/internal/framed/Hpack$Reader;-><init>(ILcom/android/okhttp/okio/Source;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    return-void
.end method

.method private blacklist readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_29

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_19

    .line 227
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 228
    :cond_19
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 230
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    .line 231
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long p1, v1

    invoke-interface {p0, p1, p2}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    return-void

    .line 224
    :cond_29
    const-string p0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p1, v1, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x8

    if-lt p2, p3, :cond_41

    if-nez p4, :cond_37

    .line 338
    iget-object p4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p4

    .line 339
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    sub-int/2addr p2, p3

    .line 341
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 345
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    if-lez p2, :cond_24

    .line 347
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, p2

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 349
    :cond_24
    invoke-interface {p1, p4, p3, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    return-void

    .line 343
    :cond_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_37
    const/4 p0, 0x0

    .line 337
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TYPE_GOAWAY streamId != 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 336
    :cond_41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readHeaderBlock(ISBI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 208
    iput-short p2, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 209
    iput-byte p3, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 210
    iput p4, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 214
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 215
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private blacklist readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_33

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move v4, v1

    goto :goto_b

    :cond_a
    move v4, v0

    :goto_b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_18

    .line 191
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_18
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_21

    .line 194
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    .line 198
    :cond_21
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 200
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v7

    const/4 v6, -0x1

    .line 202
    sget-object v8, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    return-void

    .line 187
    :cond_33
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_25

    const/4 p2, 0x0

    if-nez p4, :cond_1c

    .line 328
    iget-object p4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p4

    .line 329
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_18

    move p2, v0

    .line 331
    :cond_18
    invoke-interface {p1, p2, p4, p0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    .line 327
    :cond_1c
    const-string p0, "TYPE_PING streamId != 0"

    new-array p1, p2, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 326
    :cond_25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_PING length != 8: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 245
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v2

    .line 246
    invoke-interface {p1, p2, v0, p0, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private blacklist readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x5

    if-ne p2, p3, :cond_13

    if-eqz p4, :cond_9

    .line 238
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 237
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TYPE_PRIORITY streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 236
    :cond_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    .line 316
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 317
    :cond_10
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 319
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 320
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p0

    .line 321
    invoke-interface {p1, p4, v1, p0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    .line 314
    :cond_28
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2e

    if-eqz p4, :cond_24

    .line 253
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    .line 254
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 258
    invoke-interface {p1, p4, p2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    .line 256
    :cond_15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_24
    const/4 p0, 0x0

    .line 252
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 251
    :cond_2e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_9e

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_16

    if-nez p2, :cond_d

    .line 266
    invoke-interface {p1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    return-void

    .line 265
    :cond_d
    const-string p0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 270
    :cond_16
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_8f

    .line 271
    new-instance p3, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {p3}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    move v1, v0

    :goto_20
    if-ge v1, p2, :cond_7c

    .line 273
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v2

    .line 274
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_a8

    .line 301
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PROTOCOL_ERROR invalid settings id: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :pswitch_40
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_4a

    const v4, 0xffffff

    if-gt v3, v4, :cond_4a

    goto :goto_76

    .line 295
    :cond_4a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :pswitch_59
    if-ltz v3, :cond_5d

    const/4 v2, 0x7

    goto :goto_76

    .line 290
    :cond_5d
    const-string p0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :pswitch_66
    const/4 v2, 0x4

    goto :goto_76

    :pswitch_68
    if-eqz v3, :cond_76

    if-ne v3, p4, :cond_6d

    goto :goto_76

    .line 281
    :cond_6d
    const-string p0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 303
    :cond_76
    :goto_76
    :pswitch_76
    invoke-virtual {p3, v2, v0, v3}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_20

    .line 305
    :cond_7c
    invoke-interface {p1, v0, p3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    .line 306
    invoke-virtual {p3}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result p1

    if-ltz p1, :cond_8e

    .line 307
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {p3}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    :cond_8e
    return-void

    .line 270
    :cond_8f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 263
    :cond_9e
    const-string p0, "TYPE_SETTINGS streamId != 0"

    new-array p1, v0, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_76
        :pswitch_68
        :pswitch_66
        :pswitch_59
        :pswitch_40
        :pswitch_76
    .end packed-switch
.end method

.method private blacklist readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_27

    .line 355
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    int-to-long p2, p0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-eqz p0, :cond_18

    .line 357
    invoke-interface {p1, p4, p2, p3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    .line 356
    :cond_18
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "windowSizeIncrement was 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 354
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->close()V

    return-void
.end method

.method public blacklist nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_84

    .line 132
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/Http2;->access$300(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    if-ltz v0, :cond_75

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_75

    .line 136
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 137
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 138
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 139
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_47

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-static {v5, v3, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_47
    packed-switch v1, :pswitch_data_86

    .line 180
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_74

    .line 175
    :pswitch_51
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 171
    :pswitch_55
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 167
    :pswitch_59
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 163
    :pswitch_5d
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 159
    :pswitch_61
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 155
    :pswitch_65
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 151
    :pswitch_69
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 147
    :pswitch_6d
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_74

    .line 143
    :pswitch_71
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    :goto_74
    return v5

    .line 134
    :cond_75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "FRAME_SIZE_ERROR: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catch_84
    const/4 p0, 0x0

    return p0

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
    .end packed-switch
.end method

.method public blacklist readConnectionPreface()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_5

    goto :goto_3f

    .line 106
    :cond_5
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    .line 107
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_35

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    :cond_35
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :goto_3f
    return-void

    .line 109
    :cond_40
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Expected a connection header but was %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
