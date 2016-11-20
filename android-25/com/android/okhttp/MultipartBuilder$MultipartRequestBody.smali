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
.field private final boundary:Lcom/android/okhttp/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lcom/android/okhttp/MediaType;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/android/okhttp/MediaType;
    .param p2, "boundary"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/MediaType;",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Headers;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    #@3
    .line 201
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    #@7
    .line 205
    if-nez p1, :cond_0

    #@9
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "type == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 207
    :cond_0
    iput-object p2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    #@14
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "; boundary="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    #@36
    .line 209
    invoke-static {p3}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    #@3c
    .line 210
    invoke-static {p4}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    #@42
    .line 204
    return-void
.end method

.method private writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J
    .locals 14
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    const-wide/16 v2, 0x0

    #@2
    .line 232
    .local v2, "byteCount":J
    const/4 v1, 0x0

    #@3
    .line 233
    .local v1, "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    if-eqz p2, :cond_0

    #@5
    .line 234
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@7
    .end local v1    # "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@a
    .local v1, "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    move-object p1, v1

    #@b
    .line 237
    .end local v1    # "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    :cond_0
    const/4 v10, 0x0

    #@c
    .local v10, "p":I
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    #@e
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@11
    move-result v11

    #@12
    .local v11, "partCount":I
    :goto_0
    if-ge v10, v11, :cond_6

    #@14
    .line 238
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    #@16
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v9

    #@1a
    check-cast v9, Lcom/android/okhttp/Headers;

    #@1c
    .line 239
    .local v9, "headers":Lcom/android/okhttp/Headers;
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    #@1e
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/okhttp/RequestBody;

    #@24
    .line 241
    .local v0, "body":Lcom/android/okhttp/RequestBody;
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    #@27
    move-result-object v12

    #@28
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@2b
    .line 242
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    #@2d
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    #@30
    .line 243
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@33
    move-result-object v12

    #@34
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@37
    .line 245
    if-eqz v9, :cond_1

    #@39
    .line 246
    const/4 v7, 0x0

    #@3a
    .local v7, "h":I
    invoke-virtual {v9}, Lcom/android/okhttp/Headers;->size()I

    #@3d
    move-result v8

    #@3e
    .local v8, "headerCount":I
    :goto_1
    if-ge v7, v8, :cond_1

    #@40
    .line 247
    invoke-virtual {v9, v7}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@43
    move-result-object v12

    #@44
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@47
    move-result-object v12

    #@48
    .line 248
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get0()[B

    #@4b
    move-result-object v13

    #@4c
    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@4f
    move-result-object v12

    #@50
    .line 249
    invoke-virtual {v9, v7}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@53
    move-result-object v13

    #@54
    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@57
    move-result-object v12

    #@58
    .line 250
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@5b
    move-result-object v13

    #@5c
    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@5f
    .line 246
    add-int/lit8 v7, v7, 0x1

    #@61
    goto :goto_1

    #@62
    .line 254
    .end local v7    # "h":I
    .end local v8    # "headerCount":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    #@65
    move-result-object v6

    #@66
    .line 255
    .local v6, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v6, :cond_2

    #@68
    .line 256
    const-string/jumbo v12, "Content-Type: "

    #@6b
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@6e
    move-result-object v12

    #@6f
    .line 257
    invoke-virtual {v6}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    #@72
    move-result-object v13

    #@73
    .line 256
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@76
    move-result-object v12

    #@77
    .line 258
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@7a
    move-result-object v13

    #@7b
    .line 256
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@7e
    .line 261
    :cond_2
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentLength()J

    #@81
    move-result-wide v4

    #@82
    .line 262
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    #@84
    cmp-long v12, v4, v12

    #@86
    if-eqz v12, :cond_4

    #@88
    .line 263
    const-string/jumbo v12, "Content-Length: "

    #@8b
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@8e
    move-result-object v12

    #@8f
    invoke-interface {v12, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@92
    move-result-object v12

    #@93
    .line 265
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@96
    move-result-object v13

    #@97
    .line 263
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@9a
    .line 272
    :cond_3
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@9d
    move-result-object v12

    #@9e
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@a1
    .line 274
    if-eqz p2, :cond_5

    #@a3
    .line 275
    add-long/2addr v2, v4

    #@a4
    .line 280
    :goto_2
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@a7
    move-result-object v12

    #@a8
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@ab
    .line 237
    add-int/lit8 v10, v10, 0x1

    #@ad
    goto/16 :goto_0

    #@af
    .line 266
    :cond_4
    if-eqz p2, :cond_3

    #@b1
    .line 268
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    #@b4
    .line 269
    const-wide/16 v12, -0x1

    #@b6
    return-wide v12

    #@b7
    .line 277
    :cond_5
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    #@b9
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@bc
    move-result-object v12

    #@bd
    check-cast v12, Lcom/android/okhttp/RequestBody;

    #@bf
    invoke-virtual {v12, p1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    #@c2
    goto :goto_2

    #@c3
    .line 283
    .end local v0    # "body":Lcom/android/okhttp/RequestBody;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v9    # "headers":Lcom/android/okhttp/Headers;
    :cond_6
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    #@c6
    move-result-object v12

    #@c7
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@ca
    .line 284
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    #@cc
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    #@cf
    .line 285
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    #@d2
    move-result-object v12

    #@d3
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@d6
    .line 286
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    #@d9
    move-result-object v12

    #@da
    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@dd
    .line 288
    if-eqz p2, :cond_7

    #@df
    .line 289
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@e2
    move-result-wide v12

    #@e3
    add-long/2addr v2, v12

    #@e4
    .line 290
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    #@e7
    .line 293
    :cond_7
    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    #@2
    .line 219
    .local v0, "result":J
    const-wide/16 v2, -0x1

    #@4
    cmp-long v2, v0, v2

    #@6
    if-eqz v2, :cond_0

    #@8
    return-wide v0

    #@9
    .line 220
    :cond_0
    const/4 v2, 0x0

    #@a
    const/4 v3, 0x1

    #@b
    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    #@11
    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    #@2
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    #@4
    .line 296
    return-void
.end method
