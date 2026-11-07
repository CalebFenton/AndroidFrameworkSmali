.class final Lcom/android/okhttp/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final blacklist client:Z

.field private final blacklist headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;Z)V
    .registers 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 116
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 117
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    return-void
.end method

.method private static varargs blacklist ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_2f

    .line 253
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    .line 254
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    .line 255
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_20

    .line 259
    sget-object p0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, p2, p3, p0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    return-void

    .line 257
    :cond_20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 252
    :cond_2f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    .line 230
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    const/4 v5, -0x1

    .line 231
    sget-object v7, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private blacklist readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1c

    .line 246
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p2

    .line 247
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_13

    move p3, v1

    goto :goto_14

    :cond_13
    move p3, v0

    :goto_14
    if-ne p0, p3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v0

    .line 248
    :goto_18
    invoke-interface {p1, v1, p2, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    .line 245
    :cond_1c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_PING length: %d != 4"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_2d

    .line 218
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    .line 219
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    .line 220
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_1e

    .line 224
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    .line 222
    :cond_1e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 217
    :cond_2d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    if-ne p3, v1, :cond_39

    .line 267
    new-instance p3, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {p3}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_30

    .line 269
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 270
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v3, v6

    .line 273
    invoke-virtual {p3, v3, v5, v4}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_30
    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_35

    move v1, p0

    .line 276
    :cond_35
    invoke-interface {p1, v1, p3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    return-void

    .line 265
    :cond_39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private blacklist readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 211
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v7

    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_19

    :goto_17
    move v4, p0

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_17

    :goto_1b
    const/4 v6, -0x1

    .line 213
    sget-object v8, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private blacklist readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    .line 199
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    .line 200
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {p0, p3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p0, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_28

    move v5, v0

    goto :goto_29

    :cond_28
    move v5, p3

    :goto_29
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_2f

    move v4, v0

    goto :goto_30

    :cond_2f
    move v4, p3

    .line 204
    :goto_30
    sget-object v9, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private blacklist readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_2f

    .line 236
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p2

    .line 237
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result p0

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    and-int/2addr p0, p3

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_20

    .line 241
    invoke-interface {p1, p2, v0, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    .line 240
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 235
    :cond_2f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    .line 284
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->close()V

    return-void
.end method

.method public blacklist nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_7d

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    move v3, v0

    :goto_16
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_6e

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_57

    packed-switch v1, :pswitch_data_7e

    .line 183
    :pswitch_30
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, v2

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    return v4

    .line 179
    :pswitch_37
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 175
    :pswitch_3b
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 171
    :pswitch_3f
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 167
    :pswitch_43
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 163
    :pswitch_47
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 159
    :pswitch_4b
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 155
    :pswitch_4f
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 151
    :pswitch_53
    invoke-direct {p0, p1, v5, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    return v4

    .line 146
    :cond_57
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version != 3: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_77

    move v0, v4

    .line 189
    :cond_77
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    return v4

    :catch_7d
    return v0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_30
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
    .end packed-switch
.end method

.method public blacklist readConnectionPreface()V
    .registers 1

    .line 0
    return-void
.end method
