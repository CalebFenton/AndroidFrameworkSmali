.class final Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;
.super Lcom/android/okhttp/RequestBody;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/MultipartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final blacklist boundary:Lcom/android/okhttp/okio/ByteString;

.field private blacklist contentLength:J

.field private final blacklist contentType:Lcom/android/okhttp/MediaType;

.field private final blacklist partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/MediaType;",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Headers;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    .line 203
    iput-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    if-eqz p1, :cond_36

    .line 209
    iput-object p2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; boundary="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    .line 211
    invoke-static {p3}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 212
    invoke-static {p4}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    return-void

    .line 207
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 236
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 239
    :goto_a
    iget-object v1, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_14
    if-ge v5, v1, :cond_c2

    .line 240
    iget-object v6, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/Headers;

    .line 241
    iget-object v7, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/RequestBody;

    .line 243
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 244
    iget-object v8, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 245
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v6, :cond_64

    .line 248
    invoke-virtual {v6}, Lcom/android/okhttp/Headers;->size()I

    move-result v8

    move v9, v2

    :goto_40
    if-ge v9, v8, :cond_64

    .line 249
    invoke-virtual {v6, v9}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v10

    .line 250
    # getter for: Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$200()[B

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v10

    .line 251
    invoke-virtual {v6, v9}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v10

    .line 252
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    .line 256
    :cond_64
    invoke-virtual {v7}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 258
    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    .line 259
    invoke-virtual {v6}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v6

    .line 260
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 263
    :cond_7f
    invoke-virtual {v7}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_9b

    .line 265
    const-string v8, "Content-Length: "

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    .line 266
    invoke-interface {v8, v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    .line 267
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_a1

    :cond_9b
    if-eqz p2, :cond_a1

    .line 270
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    return-wide v8

    .line 274
    :cond_a1
    :goto_a1
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    if-eqz p2, :cond_ac

    add-long/2addr v3, v6

    goto :goto_b7

    .line 279
    :cond_ac
    iget-object v6, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/RequestBody;

    invoke-virtual {v6, p1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 282
    :goto_b7
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 285
    :cond_c2
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 286
    iget-object p0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, p0}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 287
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 288
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    if-eqz p2, :cond_e6

    .line 291
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p0

    add-long/2addr v3, p0

    .line 292
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    :cond_e6
    return-wide v3
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 222
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    return-void
.end method
