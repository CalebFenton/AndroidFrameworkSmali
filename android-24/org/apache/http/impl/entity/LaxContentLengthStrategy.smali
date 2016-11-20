.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 188
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 19
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    if-nez p1, :cond_0

    #@2
    .line 194
    new-instance v16, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v17, "HTTP message may not be null"

    #@7
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v16

    #@b
    .line 197
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    #@e
    move-result-object v12

    #@f
    .line 198
    .local v12, "params":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v16, "http.protocol.strict-transfer-encoding"

    #@12
    move-object/from16 v0, v16

    #@14
    invoke-interface {v12, v0}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    #@17
    move-result v14

    #@18
    .line 200
    .local v14, "strict":Z
    const-string/jumbo v16, "Transfer-Encoding"

    #@1b
    move-object/from16 v0, p1

    #@1d
    move-object/from16 v1, v16

    #@1f
    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@22
    move-result-object v15

    #@23
    .line 201
    .local v15, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string/jumbo v16, "Content-Length"

    #@26
    move-object/from16 v0, p1

    #@28
    move-object/from16 v1, v16

    #@2a
    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@2d
    move-result-object v2

    #@2e
    .line 204
    .local v2, "contentLengthHeader":Lorg/apache/http/Header;
    if-eqz v15, :cond_7

    #@30
    .line 205
    const/4 v7, 0x0

    #@31
    .line 207
    .local v7, "encodings":[Lorg/apache/http/HeaderElement;
    :try_start_0
    invoke-interface {v15}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v7

    #@35
    .line 213
    .local v7, "encodings":[Lorg/apache/http/HeaderElement;
    if-eqz v14, :cond_3

    #@37
    .line 215
    const/4 v10, 0x0

    #@38
    .local v10, "i":I
    :goto_0
    array-length v0, v7

    #@39
    move/from16 v16, v0

    #@3b
    move/from16 v0, v16

    #@3d
    if-ge v10, v0, :cond_3

    #@3f
    .line 216
    aget-object v16, v7, v10

    #@41
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    .line 217
    .local v6, "encoding":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@4a
    move-result v16

    #@4b
    if-lez v16, :cond_1

    #@4d
    .line 218
    const-string/jumbo v16, "chunked"

    #@50
    move-object/from16 v0, v16

    #@52
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@55
    move-result v16

    #@56
    if-eqz v16, :cond_2

    #@58
    .line 215
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 208
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v10    # "i":I
    .local v7, "encodings":[Lorg/apache/http/HeaderElement;
    :catch_0
    move-exception v13

    #@5c
    .line 209
    .local v13, "px":Lorg/apache/http/ParseException;
    new-instance v16, Lorg/apache/http/ProtocolException;

    #@5e
    .line 210
    new-instance v17, Ljava/lang/StringBuilder;

    #@60
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v18, "Invalid Transfer-Encoding header value: "

    #@66
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v17

    #@6a
    move-object/from16 v0, v17

    #@6c
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v17

    #@70
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v17

    #@74
    .line 209
    move-object/from16 v0, v16

    #@76
    move-object/from16 v1, v17

    #@78
    invoke-direct {v0, v1, v13}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7b
    throw v16

    #@7c
    .line 219
    .end local v13    # "px":Lorg/apache/http/ParseException;
    .restart local v6    # "encoding":Ljava/lang/String;
    .local v7, "encodings":[Lorg/apache/http/HeaderElement;
    .restart local v10    # "i":I
    :cond_2
    const-string/jumbo v16, "identity"

    #@7f
    move-object/from16 v0, v16

    #@81
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@84
    move-result v16

    #@85
    if-nez v16, :cond_1

    #@87
    .line 220
    new-instance v16, Lorg/apache/http/ProtocolException;

    #@89
    new-instance v17, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v18, "Unsupported transfer encoding: "

    #@91
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v17

    #@95
    move-object/from16 v0, v17

    #@97
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v17

    #@9b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v17

    #@9f
    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v16

    #@a3
    .line 225
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_3
    array-length v11, v7

    #@a4
    .line 226
    .local v11, "len":I
    const-string/jumbo v16, "identity"

    #@a7
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@aa
    move-result-object v17

    #@ab
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ae
    move-result v16

    #@af
    if-eqz v16, :cond_4

    #@b1
    .line 227
    const-wide/16 v16, -0x1

    #@b3
    return-wide v16

    #@b4
    .line 228
    :cond_4
    if-lez v11, :cond_5

    #@b6
    const-string/jumbo v16, "chunked"

    #@b9
    .line 229
    add-int/lit8 v17, v11, -0x1

    #@bb
    aget-object v17, v7, v17

    #@bd
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@c0
    move-result-object v17

    #@c1
    .line 228
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c4
    move-result v16

    #@c5
    if-eqz v16, :cond_5

    #@c7
    .line 230
    const-wide/16 v16, -0x2

    #@c9
    return-wide v16

    #@ca
    .line 232
    :cond_5
    if-eqz v14, :cond_6

    #@cc
    .line 233
    new-instance v16, Lorg/apache/http/ProtocolException;

    #@ce
    const-string/jumbo v17, "Chunk-encoding must be the last one applied"

    #@d1
    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v16

    #@d5
    .line 235
    :cond_6
    const-wide/16 v16, -0x1

    #@d7
    return-wide v16

    #@d8
    .line 237
    .end local v7    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v11    # "len":I
    :cond_7
    if-eqz v2, :cond_c

    #@da
    .line 238
    const-wide/16 v4, -0x1

    #@dc
    .line 239
    .local v4, "contentlen":J
    const-string/jumbo v16, "Content-Length"

    #@df
    move-object/from16 v0, p1

    #@e1
    move-object/from16 v1, v16

    #@e3
    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    #@e6
    move-result-object v9

    #@e7
    .line 240
    .local v9, "headers":[Lorg/apache/http/Header;
    if-eqz v14, :cond_8

    #@e9
    array-length v0, v9

    #@ea
    move/from16 v16, v0

    #@ec
    const/16 v17, 0x1

    #@ee
    move/from16 v0, v16

    #@f0
    move/from16 v1, v17

    #@f2
    if-le v0, v1, :cond_8

    #@f4
    .line 241
    new-instance v16, Lorg/apache/http/ProtocolException;

    #@f6
    const-string/jumbo v17, "Multiple content length headers"

    #@f9
    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@fc
    throw v16

    #@fd
    .line 243
    :cond_8
    array-length v0, v9

    #@fe
    move/from16 v16, v0

    #@100
    add-int/lit8 v10, v16, -0x1

    #@102
    .restart local v10    # "i":I
    :goto_1
    if-ltz v10, :cond_9

    #@104
    .line 244
    aget-object v8, v9, v10

    #@106
    .line 246
    .local v8, "header":Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@109
    move-result-object v16

    #@10a
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@10d
    move-result-wide v4

    #@10e
    .line 255
    .end local v8    # "header":Lorg/apache/http/Header;
    :cond_9
    const-wide/16 v16, 0x0

    #@110
    cmp-long v16, v4, v16

    #@112
    if-ltz v16, :cond_b

    #@114
    .line 256
    return-wide v4

    #@115
    .line 248
    .restart local v8    # "header":Lorg/apache/http/Header;
    :catch_1
    move-exception v3

    #@116
    .line 249
    .local v3, "e":Ljava/lang/NumberFormatException;
    if-eqz v14, :cond_a

    #@118
    .line 250
    new-instance v16, Lorg/apache/http/ProtocolException;

    #@11a
    new-instance v17, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v18, "Invalid content length: "

    #@122
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v17

    #@126
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@129
    move-result-object v18

    #@12a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v17

    #@12e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v17

    #@132
    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    #@135
    throw v16

    #@136
    .line 243
    :cond_a
    add-int/lit8 v10, v10, -0x1

    #@138
    goto :goto_1

    #@139
    .line 258
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "header":Lorg/apache/http/Header;
    :cond_b
    const-wide/16 v16, -0x1

    #@13b
    return-wide v16

    #@13c
    .line 261
    .end local v4    # "contentlen":J
    .end local v9    # "headers":[Lorg/apache/http/Header;
    .end local v10    # "i":I
    :cond_c
    const-wide/16 v16, -0x1

    #@13e
    return-wide v16
.end method
